module Listing

    def self.new path
        raise ArgumentError.new unless File.exist? path
        if File.directory? path
            DirectoryNode.new path
        else
            FileNode.new path
        end
    end

    class Node

        # The full path of the node
        attr_reader :path

        def initialize path
            raise ArgumentError.new unless File.exist? path
            @path = path
        end

        def name
            @path.split("/").last
        end

    end

    class DirectoryNode < Node

        def name
            super + "/"
        end

        def children
            children = []
            Dir.foreach @path do |child|
                next if child[0] == ?.
                children << Listing.new(File.join(@path, child))
            end
            children.sort do |a, b|
                if a.class == b.class
                    a.name <=> b.name
                elsif a.is_a? DirectoryNode
                    -1
                else
                    1
                end
            end
        end

        def to_s indent = 0
            data = "  " * indent + name + "\n"
            children.each do |child|
                data << child.to_s(indent + 1)
            end
            data
        end

    end

    class FileNode < Node

        def to_s indent = 0
            "  " * indent + "- " + name + ": " + size + "\n"
        end

        def size
            size = File.size(@path).to_f
            prefixes = ["B", "KB", "MB", "GB", "TB", "PB", "EB"]
            index = 0
            while size > 2000 and index < prefixes.size
                index += 1
                size = size / 1000
            end
            "#{size.round} #{prefixes[index]}"
        end

    end

end

puts Listing.new("urlteam").to_s

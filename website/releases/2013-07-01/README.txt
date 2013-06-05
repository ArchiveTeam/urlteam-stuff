     ___  ______  _____  _   _ _____ _   _ _____ _____ _____  ___  ___  ___
    / _ \ | ___ \/  __ \| | | |_   _| | | |  ___|_   _|  ___|/ _ \ |  \/  |
   / /_\ \| |_/ /| /  \/| |_| | | | | | | | |__   | | | |__ / /_\ \| .  . |
   |  _  ||    / | |    |  _  | | | | | | |  __|  | | |  __||  _  || |\/| |
   | | | || |\ \ | \__/\| | | |_| |_\ \_/ / |___  | | | |___| | | || |  | |
   \_| |_/\_| \_| \____/\_| |_/\___/ \___/\____/  \_/ \____/\_| |_/\_|  |_/
                      we are going to rescue your shit

                              P R E S E N T S

                   URLTeam URL Shortener Backup Torrent v4

  ===========================================================================

  This torrent is a collection of scraped data from various URL shorteners put
  together by the URLTeam. The URLTeam is the ArchiveTeam subcommittee on URL
  shorteners. We believe that they pose a serious threat to the internet's
  integrity. If one of them dies, gets hacked or sells out, billions of links
  will stop working. Thus we preemptively release backups, because URL
  shorteners are too busy to make backups themselves.

  ===========================================================================

  All data files in the torrent are simple text files compressed using
  LZMA2/xz. The text file format is very simple: Each line contains one
  mapping in the following format: Shortcode, pipe (Ascii 0x7C), long URL,
  line feed (Ascii 0x10). The file is sorted by shortcodes using the following
  order:

    * Shorter shortcodes come before longer ones
    * Decimal digits
    * Lowercase letters
    * Uppercase letters
    * ASCII value

  Depending on the URL shortener there might be multiple long URLs for one
  shortcode.

  There are some tools for working with the files on GitHub:
  https://github.com/ArchiveTeam/urlteam-stuff

  ===========================================================================

  Some notes:

  File Layout: With our last torrent (the Geocities torrent) we had problems
  with Windows users because the default filesystem for Windows is case
  insensitive. For this reason we have organized the files into various
  sub-folders and appended "lowercase" or "uppercase" to give Windows users a
  chance to download this torrent.

  Naming errors: Because we want to update our releases by simply releasing a
  new torrent that can be copied over the old torrent we have to keep file and
  directory names the same. Thus the following errors were not corrected:
    * 'bit.ly/A0000-Z_____ (uppercase)' should be 'bit.ly/A0000-Z____ (uppercase)'
    * 'tinyurl.com/aaaaa-zzzzz/' should be 'tinyurl.com/a0000-zzzzz'.

  Tr.im: This release contains a "fixed" version of the tr.im mappings. We did
  two scrapes of tr.im about a year apart. Unfortunately tr.im sometimes
  truncated URLs, or even worse, treated shortcodes as case insensitive. Our
  first release only contained links from the first scrape, but for our second
  release we carefully investigated the inconsistencies between the two scrapes
  and manually fixed all errors we found. However: There are probably still
  truncated URLs in the set and shortcodes with the wrong case. Due to the
  shutdown of tr.im there is no way of correcting them.

  Tr.im 2: tr.im relaunched in January 2013 with an empty database. The URLTeam
  is of course also backing up the new tr.im. The tr.im.txt.xz file contains
  data from the pre-2011 tr.im, the tr.im-relaunched.txt.xz contains data from
  the post-2013 tr.im.

  ===========================================================================
                           http://www.archiveteam.org
                        WE ARE GOING TO RESCUE YOUR SHIT
  ===========================================================================

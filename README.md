# Portfolio Downloader #

## Setup ##

### Prerequisites: ###
* Windows for batch files
* Ruby (tested with 2.1): get at http://rubyinstaller.org
* * Note that Ruby 2.2.1 is not compatible with the required gems right now

### Install ###
Run the `setup.bat`.

## Usage ##
Run the `portfolio-downloader.bat`.
It will execute the available portfolio commands and save the results in the downloads folder.

Note that they might get overwritten, so you need to manually move/copy the set after a successful run.

## Adding more downloaders ##
The downloader scripts live in the portfolios directory.
There are ruby variants with the `Mechanize` gem.
Another one is a simple batch file using `curl` as packaged in the utils folder. I was unable to make it work with Mechanize (due to cookies?).

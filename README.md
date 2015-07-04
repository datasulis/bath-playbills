# Bath Playbills

Breathing some life into the history of the Royal Theatre, Bath.

# Installation

TODO

# Play Bill Data

The source data and images can be found in the following public domain books made available by the British Library:

* [A collection of playbills from Theatre Royal, Bath 1812-1818](http://catalogue.bl.uk/primo_library/libweb/action/dlDisplay.do?vid=BLVU1&afterPDS=true&institution=BL&docId=BLL01016661285). The [PDF](http://access.bl.uk/item/pdf/ark:/81055/vdc_100022589024.0x000002) has 337 pages and covers 3/1/1815-31/12/1818

* [A collection of playbills from Theatre Royal, Bath 1824-1830](http://catalogue.bl.uk/primo_library/libweb/action/dlDisplay.do?vid=BLVU1&afterPDS=true&institution=BL&docId=BLL01016661327). The [PDF](http://access.bl.uk/item/pdf/ark:/81055/vdc_100022589026.0x000002) has 423 pages and covers 2/1/1824-20/4/1827

* [A collection of playbills from Theatre Royal, Bath 1831-1840](http://catalogue.bl.uk/primo_library/libweb/action/dlDisplay.do?vid=BLVU1&afterPDS=true&institution=BL&docId=BLL01016661328). The [PDF](http://access.bl.uk/item/pdf/ark:/81055/vdc_100022589042.0x000002) has 473 pages and covers 26/1/1836-30/12/1840


* [A collection of playbills from Theatre Royal, Bath 1834-1840](http://catalogue.bl.uk/primo_library/libweb/action/dlDisplay.do?vid=BLVU1&afterPDS=true&institution=BL&docId=BLL01016661326). The [PDF](http://access.bl.uk/item/pdf/ark:/81055/vdc_100022589028.0x000002) has 401 pages and covers 1/1/1819-31/12/1821. Obviously the catalogue record is incorrect here. 

* [A collection of playbills from Theatre Royal, Bath 1841-1851](http://catalogue.bl.uk/primo_library/libweb/action/dlDisplay.do?vid=BLVU1&afterPDS=true&institution=BL&docId=BLL01016661329). The [PDF](http://access.bl.uk/item/pdf/ark:/81055/vdc_100022589036.0x000002) has 420 pages and covers 1/1/1841-12/4/1845

Each book is a collection of scanned images of original play bills. Some of the bills have both front and back covers. There are also a few blank pages in the text.

Scan quality varifies quite a bit across the files. OCR attempts had very poor results, hence the decision to try to crowdsource the metadata.

# Installing the PDF tools

The PDF documents are split into multiple images files using [Docsplit](http://documentcloud.github.io/docsplit/).

Follow [the installation notes](http://documentcloud.github.io/docsplit/) to install the command-line utility. You only need to do this if you plan on 
working with the original PDFs and images.

Be sure to use `gem install docsplit` without using `sudo`, otherwise the tool doesn't seem to find gem.

You also need to install graphicsmagick:

`sudo apt-get install graphicsmagick`

(I found that this fixes a specific error: `sh: 1: gm: not found`)

## Generating the images and creating the manifest

TODO

Card should be at least 280px in width, and at least 150px in height

## Seeding the database

# The Web Application

## Data Model Notes

User
 - email

Identity
 - provider
 - key

Book
  title
  slug
  start_date
  end_date
  catalogue
  

Bill
 - date
 - pages
 - printer name
 - print office
 - engagement (optional)

Page
 - bill (optional, may be blank)
 - extracted file name
 - source file
 - page number (if associated with a bill, need to identify previous page by filename)

Show
 - name
 - description (optional)
 
Role
 - show
 - character
 - actor
 - notes?

Engagement (run of shows with particular actor's)
 - bills

Theatre
 - lat, long
 - name
 - events

TheatreEvent
 - date
 - title
 - description

## Misc Notes

Browse by date: year, calendar
Search for show, character, actor

View Bill: possibly multiple pages. key text, thumbnail, details, sign-in to edit

Admin: export metadata: bills, shows

Editing Help
 - populate from last entry (show title, description, cast)
 - text entry for date, rather than picker (populate from last)
 - mark

1705-1738 - first theatre, on site of rheumatic hospital
1723-1751 - on Kingsmead street
1750-1805 - Old Orchard Street, 1768 became theatre royal, http://en.wikipedia.org/wiki/Old_Orchard_Street_Theatre
          - 3 archive playbills from this period
1805-today - new Theatre Royal, http://en.wikipedia.org/wiki/Theatre_Royal,_Bath

## Tasks

*. Add Book pages, with 3 random pages, plus links to select a page
*. Add twitter sign-in, to add user to session
*. Add Bill model
*. Allow user to add date to a Page
*. Add count down of unedited pages to homepage
*. Add Bills
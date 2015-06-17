# Bath Playbills

Breathing some life into the history of the Royal Theatre, Bath.

# Installation


# Playbill Data

## Installing the PDF tools

Install DocSplit

http://documentcloud.github.io/docsplit/

(be sure to use `gem install docsplit`, not with `sudo`, otherwise doesn't seem to find gem)

Install graphicsmagick

sudo apt-get install graphicsmagick

(fixes `sh: 1: gm: not found`)

## Generating the images and creating the manifest

The files and number of playbills:

* 1812-1818 - 337
* 1824-1830 - 423
* 1834-1840 - 401
* 1841-1851 - 420

## Seeding the database

# The Web Application

## Data Model Notes

User
 - email

Identity
 - provider
 - key

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


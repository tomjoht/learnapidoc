---
title: Instructions
permalink: instructions.html
published: false
---

## Kindle

1. make sure you have latest images from wasabi:

myvenv
# create folder called "wasabi" at ~/tomjoht
aws s3 cp s3://idbwmedia.com/images/api/ ~/tomjoht/wasabi  --recursive  --profile wasabi

copy over images from tomjoht/wasabi to learnapidoc/wasabi. overwrite duplicates.

2. ./serve_kindle.sh
3. new tab: ./build_kindle.sh
4. ./move.sh (moves docapis.mobi file from \_site to mobi folder in root directory)
5. open Kindle Previewer and select the docapis.mobi file in the mobi_files directory.
6. plug in kindle. find in finder. copy mobi file into documents directory. it will then appear in your home.

details:
- config file is \_config_kindle.yml
- this specifies and absolute path to the /images folder. otherwise the kindle gen will not show the images.
- make sure you have the latest images from wasabi downloaded:
- use format: kindle for targeting kindle
- no tables allowed. take images of tables instead
- tocstart.html is the beginning page that lists the chapters
- docapis.ncx is used for the built-in navigation in kindle
- not necessary to have a more robust toc b/c the ncx file provides the nav built-in
- build_kindle.sh runs this:

```
/Users/tomjoht/projects/kindlegen/kindlegen _site/docapis.opf
```

the first is kindlegen, the next is the location of the docapis.opf file

- run move.sh to move this file into /mobi in the regular doc directory
- docapis.opf contains the master content used to build your output
- you can preview in kindle previewer
- to test manually, plug in micro usb cable, then simply drag the .mobi file into documents

there's no need to convert to another ebook format b/c kindle has a reading app on every device aleady.
but if you want to convert to ebook:
https://cloudconvert.com/mobi-to-epub

- css: css/kindle.css
- layout: kindle.html

to test on kindle fire:
- plug in with micro usb
- launch android file transfer app (android.com/filetransfer)
- put in books folder
- restart

## EPUB
use to convert mobi to epub. Register and sign in first (otherwise you exceed your free unregistered time).

## PDF
- not really necessary to generate this except if someone wants to print out the entire book
- look into offering a paperback version of the kindle version
- if so, you prob. need to generate the full TOC

- if you run into issues, look at prince-list.txt in the output. make sure all paths are valid. they should all have an absolute URL going to them.
- filter out the swagger demos.
- the PDF frontmatter are served from the pdf_frontmatter folder in \_docs but these paths are hard-coded into the toc page.


1. run " ./build_pdf.sh"

this file uses the \_config_pdf.yml. in this file, two important properties are defined:
baseurl: /Users/tomjoht/projects/learnapidoc/\_site
format: pdf

it builds from the local, so it's not necessary to have serve_pdf running

2. see pdf/docapis.pdf

- no need to swap in images for tables
- format: pdf
- css: assets/css/pdf/printstyles.css
- css: assets/css/pdf/theme-blue.css
- layout: printpdf.html

## Web

1. bundle exec jekyll serve
2. format: web
3. uses the default.html layout
layout: default.html
css: main.css (compiles from sass)

## Upload to the web
./upload_outputs.sh

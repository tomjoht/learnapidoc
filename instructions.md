---
title: Instructions
permalink: /instructions.html
published: false
---

## Kindle

1. serve_kindle.sh
2. new tab: build_kindle.sh
3. move.sh (moves docapis.mobi file to mobi folder)
4. open Kindle Previewer and select the docapis.mobi file in the mobi_files directory.

details:
- config file is \_config_kindle.yml
- use format: kindle for targeting kindle
- no tables allowed. take images of tables instead
- tocstart.html is the beginning page that lists the chapters
- docapis.ncx is used for the built-in navigation in kindle
- not necessary to have a more robust toc b/c the ncx file provides the nav built-in
- build_pdf.sh runs this:

```
/Users/tomjoht/projects/kindlegen/kindlegen _site/docapis.opf
```

the first is kindlegen, the next is the location of the docapis.opf file

- run move.sh to move this file into /mobi in the regular doc directory
- docapis.opf contains the master content used to build your output
- you can preview in kindle previewer
- to test manually, plug in micro usb cable, then simply drag the .mobi file into documents

there's no need to convert to another ebook format b/c kindle has a reading app on every device aleady.
but if you want to convert to ebook: http://www.online-convert.com/result/0d8a7494-041a-4e88-b71a-b646bc178660

- css: css/kindle.css
- layout: kindle.html

to test on kindle fire:
- plug in with micro usb
- launch android file transfer app (android.com/filetransfer)
- put in books folder
- restart


## PDF
- not really necessary to generate this except if someone wants to print out the entire book
- look into offering a paperback version of the kindle version
- if so, you prob. need to generate the full TOC

1. serve_pdf.sh
2. new tab: .build_pdf.sh
3. see pdf/docapis.pdf

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

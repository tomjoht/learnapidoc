---
title: PDF build instructions
permalink: pdf_instructions.html
last-modified: 2023-05-29
published: false
---

These instructions explain how to build the PDF outputs.

## Prerequisites

* [Prince XML](https://www.princexml.com/)

## Download the images from Wasabi

Switch into `myvenv`, then run:

```
aws s3 cp s3://idbwmedia.com/images/api/ ~/tomjoht/projects/learnapidoc/images/  --recursive  --profile wasabi
```

Prince requires image references to be local, absolute paths and will look into this directory for the images.

## Exclude content not suitable for PDF

The build adds `_config_pdf_[n].yaml` in the build command to add to the configuration instructions. The PDF config file has format `pdf`, so to exclude anything from the PDF:

```
{% if site.format == "print" %}

{% endif %}
```

Exclude any YouTube videos, JavaScript, Swagger demos, or other content that doesn't display well in print.

## Ensure relative links are valid in the output

If the output doesn't have the referenced pages, the cross reference will say 0. To avoid this:

* For links to pages outside the section, use absolute links and include this class: `noCrossRef`.
* For links to pages inside the section, use relative links.

## Build the PDFs

Run this script:

```
./pdf_build.sh
```

This script builds each of the 15 outputs and stores them in the `pdf` folder.

## Upload the PDFs to Wasabi

Run this script:

```
./pdf_upload.sh
```

## Update the Download the PDFs page

Update the last generated date on `docapis_formats.html` page.

## How it works

The build uses an additional configuration file with PDF settings:

*   In the `defaults` section, all directories are set to be unpublished except for `pdf_frontmatter` and a specific directory.

    ```
    defaults:
    -
        scope:
        path: ""
        type: pages
        values:
        layout: printpdf
    -
        scope:
        path: ""
        type: docs
        values:
        layout: printpdf
        published: false

    -
        scope:
        path: _docs/pdf_frontmatter
        type: docs
        values:
        layout: printpdf
        published: true
    -
        scope:
        path: _docs/introduction_to_rest_apis
        type: docs
        values:
        layout: printpdf
        published: true
    ```

*   The layout used for the pages is `printpdf`. This layout uses these stylesheets:

    ```
    <link rel="stylesheet" href="assets/css/pdf/syntax.css" />
    <link rel="stylesheet" href="assets/css/pdf/bootstrap.min.css" />
    <link rel="stylesheet" href="assets/css/pdf/theme-blue.css" />
    <link rel="stylesheet" href="assets/css/pdf/printstyles.css" />
    ```

*   The `prince-list.txt` file runs the same logic as the sidebar to generate a list of pages included in the PDF. The URLs are absolute paths.
*   The `prince-list.txt` has this logic: `if folder.section == site.section`. In the PDF configuration, there's a property called `section` that identifies which section is being printed.

After Jekyll builds the output, both the images and files are ready for Prince to build the output. The prince command includes these parameters:

*   `--javascript`: Allows for JS scripting to run. The PDF frontmatter pages has some scripts that dynamically print page numbers ahd titles into the header and footer.

    ```js
    <script>
        Prince.addScriptFunc("datestamp", function() {
            return "PDF last generated: {{ site.time | date: '%B %d, %Y' }}";
        });
    </script>

    <script>
        Prince.addScriptFunc("guideName", function() {
            return "{{site.title}}";
        });
    </script>
    ```

*   `--input-list=_site/prince-list.txt`: Indicates the list of pages to include in the PDF output. If you run into troubles in the output, look at `prince-list.txt` to see if the right pages are being listed here. This file also includes the `if folder.section == site.section` conditional logic that matches the `section` property in the `_config_pdf_[section].yml` file.
*   `--no-warn-css-unsupported`: Indicates that warning messages about unsupported CSS should be suppressed. The theme uses Bootstrap CSS that has a bunch of shadow properties in CSS that aren't supported, but which don't make any difference in the output. 
*   `-o pdf/docapis_four.pdf`: Indicates the name of the output file and where it's stored.



## Output location

The PDFs build in the `pdf` folder. There are 15 outputs, one for each chapter.

## Upload to Wasabi

Upload the PDFs to Wasabi: `pdf_upload.sh`

## Update the Download PDF page

Update the `docapis_formats.md` page.

2. see pdf/docapis.pdf

- format: print
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

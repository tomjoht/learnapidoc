---
title: Metrics templates
permalink: /docapis_metrics_templates.html
course: "Documenting REST APIs"
Weight: 13.5
sidebar: docapis
section: metrics
path1: /docapis_metrics_and_measurement.html
last-modified: 2021-02-15
---

You can use two templates for the metrics described here. These templates were designed to work with Google Docs and Google Spreadsheets, but they could also work in a variety of tools.  The purpose of the Google Spreadsheet template is to more easily calculate the scores (these calculations work best in spreadsheets).

## Using the Google Doc templates

The purpose is the Google Doc templates is make it easier to do narrative assessments of the various criteria. These kinds of narrative assessments don't work well in spreadsheets. For example, if you find that the docs lack tutorials for the key use cases of the API, make notes about what use cases are lacking, or maybe note your inability to locate certain use cases in the docs.

* [First-level assessment doc (html)](/learnapidoc/docs/metrics_and_measurement/docapis_metrics_first_level_checklist_html.html)
* [Second-level assessment doc (html)](/learnapidoc/docs/metrics_and_measurement/docapis_metrics_second_level_checklist_html.html)

The templates strip away most formatting and just list the various criteria in a basic HTML template. Copy and paste the content into Google Docs. Then as you go through the content, make your notes in the "Assessment" area. After score, choose a score of 0 to 5.

## Using the Google Spreadsheets for scoring

The Google Spreadsheets are meant to facilitate scoring. It's not possible to do a lot of calculations in a Google doc, so you'll need to copy over each score into the right cells into a Google spreadsheet. To use the Google spreadsheet to calculate a score:

1.  Right-click the links below and select **Save Link As** (in Chrome) to save the files to your computer:

    * [First-level spreadsheet (csv)](/learnapidoc/docs/metrics_and_measurement/docapis_metrics_first_level_checklist_csv.csv)
    * [Second-level spreadsheet (csv)](/learnapidoc/docs/metrics_and_measurement/docapis_metrics_second_level_checklist_csv.csv)

2.  Go to [Google Spreadsheets](https://docs.google.com/spreadsheets/) and create a new spreadsheet.
3.  In the new spreadsheet, go to **File > Import**. Then click the **Upload** tab.
4.  Drag the CSV file you downloaded in step 1 into the "Drag a file here" box.
5.  In the Import File dialog box, under Import Location, select *Replace current sheet*. Leave the other default options as is. (Specifically, make sure "Convert text to numbers, dates, and formulas" is set to **Yes** because the CSV file has formulas.)

    <img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/api/import_file_spreadsheet2.png" alt="Import File dialog" />

    After import, the spreadsheet looks like this:

    <img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/api/spreadsheet_thumbnail_metrics.png" alt="Imported spreadsheet" />

    {: .important}
    The spreadsheet looks plain, but there are some formulas that do calculations here. You can add formatting if you want, but don't add or remove the columns or rows. If you change any of the rows or columns, the formulas will no longer work.

    The spreadsheet has 5 columns:

    * **Criteria**: Shows the title (but not description) of each criteria.
    * **Weight**: Indicates how much weight the criteria should be given.
    * **Score**: This is where you enter your score. It's the only column you work with. Copy this number from your Google Docs spreadsheet to here.
    * **Weighted Score**: Calculates the weight times the score. This is automatically calculated when you input a score. The formulas for these cells appear if you click in a cell. For example, `=(B4*C4)`. You can adjust the weight for each criteria as desired. Currently, the weight is 1 to 3 points.
    * **Total WS Possible**: The total weighted score possible. If the score were perfect for each criteria (5), this would be the maximum weighted score. For example, if the weight is 3 and the score is 5, the total weighted score possible would be 15.

    At the bottom is a row called "TOTALS." This row gets the sum of the Weighted Score, the sum of the Total WS Possible, and then divides the two to arrive at a total score.

    For example, suppose the total Weighted Score was 120, and the Total Weighted Score Possible was 235. Then the total score would be 120/235, or 51%.

    The formula showing the percent is as follows: `=ROUND(((D61)/(E61))*100)&"%"` (for the first-level checklist), and `=ROUND(((D43)/(E43))*100)&"%"` for the second-level checklist. This takes the sum of the Weighted Score column (D), the sum of the Total WS Possible column (E), and divides D by E, and then rounds the number and adds a "%" sign after it. Because the formulas refer to specific rows here, if you remove add or remove the rows, you'll have to update the formulas to match.

    (Of course, these formulas are just simple math. You could easily redo them -- sum the columns and then divide the score by the total possible. I'm not a spreadsheet or math wizard here.)

I would recommend adding the first-level and second-level criteria to two tabs in the same document.

If you have trouble importing the CSV, try making a copy of this [uploaded template](https://docs.google.com/spreadsheets/d/1eX7OlcbfV6tPyF1YAEPYyU2GpWak8rYvpEOjTS1ZjZY/edit?usp=sharing). The reason I didn't simply recommend this from the beginning is because the CSV files are single-sourced from a YAML file in my Jekyll site here. Anytime I update the YAML file, it also updates the CSV content. Right now, the uploaded template will go out of date when I make updates to the YAML files.

## Behind the scenes

To single source content stored in YAML into the checklist, Google Doc html template, and the CSV file, look at the source:

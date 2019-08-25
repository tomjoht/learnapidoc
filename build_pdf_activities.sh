bundle exec jekyll build --config _config_pdf_activities.yml;
echo "Building the PDF ...";
prince --javascript --input-list=_site/prince-list-activities.txt -o pdf/api_workshop_activities.pdf;
echo "done";

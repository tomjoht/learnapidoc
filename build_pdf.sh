echo "Building the PDF ...";
prince --javascript --input-list=_site/prince-list.txt -o pdf/docapis.pdf;
echo "done";

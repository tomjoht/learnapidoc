#!/bin/bash -e
#Exit immediately if a command exits with a non-zero status.

echo "Build kindle output"
bundle exec jekyll build --config _config_kindle.yml
echo $?
echo "Done building kindle output"

echo "Convert Kindle HTML into mobi file";
/Applications/Kindle\ Previewer\ 3.app/Contents/lib/fc/bin/kindlegen _site/docapis.opf;
echo $?
echo "Done creating mobi file"

echo "Move mobi file into mobi directory"
mv _site/docapis.mobi ebooks/docapis.mobi;
echo $?
echo "Done moving the file! Note that if the build failed, often due to missing media, there won't be a mobi file in the ebooks directory."

echo "Create epub output"
mv _site ebooks/docapis
cd ebooks/docapis
zip -rX docapis.epub mimetype META-INF/ .
echo $?
echo "Done creating epub"

echo "Move epub"
cd ../../
mv ebooks/docapis/docapis.epub ebooks/docapis.epub
rm -r ebooks/docapis/
echo $?
echo "Done moving epub"

echo "Ready to upload: run myvenv and then ./upload_outputs.sh"

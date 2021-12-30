echo "Building kindle output"
bundle exec jekyll build --config _config_kindle.yml
echo "Done building kindle output"

echo "Converting kindle HTML into mobi file";
/Applications/Kindle\ Previewer\ 3.app/Contents/lib/fc/bin/kindlegen _site/docapis.opf;
echo "Done creating mobi file"

echo "Move mobi file into mobi directory"
mv _site/docapis.mobi mobi/docapis.mobi;
echo "Done moving the file!"

echo "Creating epub output"
mv _site mobi/docapis
cd mobi/docapis
zip -rX docapis.epub mimetype META-INF/ .
echo "Done creating epub"

echo "Moving epub"
cd ../../
mv mobi/docapis/docapis.epub mobi/docapis.epub
rm -r mobi/docapis/
echo "Done moving epub"

echo "Ready to upload: run myvenv and then ./upload_outputs.sh"

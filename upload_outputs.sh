aws s3 cp ~/projects/learnapidoc/pdf/docapis.pdf s3://learnapidoc-outputs --profile wasabi
aws s3 cp ~/projects/learnapidoc/ebooks/docapis.mobi s3://learnapidoc-outputs --profile wasabi
aws s3 cp ~/projects/learnapidoc/ebooks/docapis.epub s3://learnapidoc-outputs --profile wasabi
echo 'done uploading'

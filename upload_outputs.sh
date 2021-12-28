aws s3 cp ~/projects/learnapidoc/pdf/docapis.pdf s3://learnapidoc-outputs --profile wasabi
aws s3 cp ~/projects/learnapidoc/mobi/docapis.mobi s3://learnapidoc-outputs --profile wasabi
aws s3 cp ~/projects/learnapidoc/mobi/docapis.epub s3://learnapidoc-outputs --profile wasabi
echo 'done uploading'

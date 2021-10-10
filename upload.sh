aws s3 cp ~/projects/learnapidoc/images/$1 s3://idbwmedia.com/images/api/ --profile wasabi
# to run, store image in project's image folder
# then type this: . upload.sh image.png
echo '<a href=""><img src="{{site.media}}/'$1
echo '" alt="" /></a>'

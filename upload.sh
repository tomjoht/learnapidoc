aws s3 cp ~/projects/learnapidoc/images/$1 s3://idbwmedia.com/images/api/ --profile wasabi
# to run, store image in project's image folder
# then type this: . upload.sh image.png
echo '<a href=""><img src="https://s3.us-west-1.wasabisys.com/idbwmedia.com/images/api/'$1
echo '" alt="" /></a>'

---
title: 'Flickr example: Retrieve a Flickr gallery and display it on a web page'
permalink: /docapis_flickr_example.html
categories:
- api-doc
course: "Documenting REST APIs"
weight: 4.1
sidebar: docapis
section: otherapis
---

Use the Flickr API to get photo images from [this Flickr gallery](https://www.flickr.com/photos/flickr/galleries/72157647277042064/).

## Flickr Overview

In this Flickr API example, you'll see that our goal requires us to call several endpoints. You'll see that just having an API reference that lists the endpoints and responses isn't enough. Often one endpoint requires other endpoint responses as inputs, and so on.

In this example, we want to get all the photos from a [specific Flickr gallery](https://www.flickr.com/photos/flickr/galleries/72157647277042064/) and display them on a web page. Here's the gallery we want:

<a href="https://www.flickr.com/photos/flickr/galleries/72157647277042064/"><img src="images/flickrgallery.png" alt="Flickr gallery" /></a>

## 1. Get an API key to make requests

Before you can make a request with the Flickr API, you'll need an API key, which you can read more about [here](https://www.flickr.com/services/apps/create/). When you register an app, you're given a key and secret.

## 2. Determine the resource and endpoint you need

From the list of [Flickr's API methods](https://www.flickr.com/services/api/), the [flickr.galleries.getPhotos](https://www.flickr.com/services/api/flickr.galleries.getPhotos.html) endpoint, which is listed under the galleries resource, is the one that will get photos from a gallery.

<a href="https://www.flickr.com/services/api/flickr.galleries.getPhotos.html"><img src="images/flickr_get_photos.png" alt="Flickr getPhotos endpoint" /></a>

One of the arguments we need for the getPhotos endpoint is the gallery ID. Before we can get the gallery ID, however, we have to use another endpoint to retrieve it. *Rather unintuitively, the gallery ID is <em>not</em> the ID that appears in the URL of the gallery.*

We use the [flickr.urls.lookupGallery](https://www.flickr.com/services/api/explore/flickr.urls.lookupGallery) endpoint listed in the URLs resource section to get the gallery ID from a gallery URL:

<a href="https://www.flickr.com/services/api/explore/flickr.urls.lookupGallery"><img src="images/flickr_gallery_id.png" alt="Flickr lookupGallery endpoint endpoint" /></a>

The gallery ID is `66911286-72157647277042064`. We now have the arguments we need for the [flickr.galleries.getPhotos](https://www.flickr.com/services/api/flickr.galleries.getPhotos.html) endpoint.

## 3. Construct the request

We can make the request to get the list of photos for this specific gallery ID.

Flickr provides an API Explorer to simplify calls to the endpoints. If we go to the [API Explorer for the galleries.getPhotos endpoint](https://www.flickr.com/services/api/explore/flickr.galleries.getPhotos), we can plug in the gallery ID and see the response, as well as get the URL syntax for the endpoint.

<a href="https://www.flickr.com/services/api/explore/flickr.galleries.getPhotos"><img src="images/flickrcallmethod.png" alt="Using the Flickr API Explorer to get the request syntax" /></a>

Insert the gallery ID, select **Do not sign call** (we're just testing here, so we don't need extra security), and then click **Call Method**.

Here's the result:

<img src="images/flickrresultfromcallmethod.png" alt="Flickr gallery response" /></a>

The URL below the response shows the right syntax for using this method:

```
https://api.flickr.com/services/rest/?method=flickr.galleries.getPhotos&api_key=APIKEY&gallery_id=66911286-72157647277042064&format=json&nojsoncallback=1
```

{: .note}
I have removed my API key from code samples to prevent possible abuse to my API keys. If you're following along, swap in your own API key here.

If you submit the request direct in your browser using the given URL, you can see the same response but in the browser rather than the API Explorer:

<img src="images/flickrresponseinbrowser.png" alt="Flickr response in browser" />

{: .tip}
I'm using the <a href="https://chrome.google.com/webstore/detail/json-formatter/bcjindcccaagfpapjjmafapmmgkkhgoa?hl=en">JSON Formatting extension for Chrome</a> to make the JSON response more readable. Without this plugin, the JSON response is compressed.

## 4. Analyze the response

All the necessary information is included in this response in order to display photos on our site, but it's not entirely intuitive how we construct the image source URLs from the response.

Note that the information a user needs to actually achieve a goal isn't explicit in the API *reference* documentation. All the reference doc explains is what gets returned in the response, not how to actually use the response.

The [Photo Source URLs](https://www.flickr.com/services/api/misc.urls.html) page in the documentation explains it:

<blockquote>
You can construct the source URL to a photo once you know its ID, server ID, farm ID and secret, as returned by many API methods.
The URL takes the following format:

<pre>
https://farm{farm-id}.staticflickr.com/{server-id}/{id}_{secret}.jpg
    or
https://farm{farm-id}.staticflickr.com/{server-id}/{id}_{secret}_[mstzb].jpg
    or
https://farm{farm-id}.staticflickr.com/{server-id}/{id}_{o-secret}_o.(jpg|gif|png)
</pre>
</blockquote>

Here's what an item in the JSON response looks like:

```json
"photos": {
  "page": 1,
  "pages": 1,
  "perpage": 500,
  "total": 15,
  "photo": [
    {
     "id": "8432423659",
     "owner": "37107167@N07",
     "secret": "dd1b834ec5",
     "server": "8187",
     "farm": 9,
     "title": "Color",
     "ispublic": 1,
     "isfriend": 0,
     "isfamily": 0,
     "is_primary": 1,
     "has_comment": 0
} ...
```

You access these fields through dot notation. It's a good idea to log the whole object to the console just to explore it better.

## 5. Pull out the information you need

The following code uses jQuery to loop through each of the responses and inserts the necessary components into an image tag to display each photo. Usually in documentation you don't need to be so explicit about how to use a common language like jQuery. You assume that the developer is capable in a specific programming language.

```html
<html>
<style>
img {max-height:125px; margin:3px; border:1px solid #dedede;}
</style>
<body>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>


<script>

var settings = {
  "async": true,
  "crossDomain": true,
  "url": "https://api.flickr.com/services/rest/?method=flickr.galleries.getPhotos&api_key=APIKEY&gallery_id=66911286-72157647277042064&format=json&nojsoncallback=1",
  "method": "GET",
  "headers": {}
}

$.ajax(settings).done(function (data) {
  console.log(data);



$("#galleryTitle").append(data.photos.photo[0].title + " Gallery");
    	$.each( data.photos.photo, function( i, gp ) {

var farmId = gp.farm;
var serverId = gp.server;
var id = gp.id;
var secret = gp.secret;

console.log(farmId + ", " + serverId + ", " + id + ", " + secret);

//  https://farm{farm-id}.staticflickr.com/{server-id}/{id}_{secret}.jpg

$("#flickr").append('<img src="https://farm' + farmId + '.staticflickr.com/' + serverId + '/' + id + '_' + secret + '.jpg"/>');

});
});

</script>


<h2><div id="galleryTitle"></div></h2>
<div style="clear:both;"/>
<div id="flickr"/>


</body>
</html>
```

And the result looks like this:


<img src="images/flickrcolorgallerydemo-550x190.png" alt="Flickr gallery demo" />

## Code explanation

{: .note}
Note that this code uses JavaScript logic that is usually beyond the need to include in documentation. However, if it was a common scenario to embed a gallery of images on a web page, this kind of code and explanation would be helpful.

* In this code, the [ajax method](http://api.jquery.com/jquery.ajax/) from jQuery gets the JSON payload. The payload is assigned to the `data` argument and then logged to the console.
* The data object contains an object called `photos`, which contains an array called `photo`. The `title` field is a property in the photo object. The `title` is accessed through this dot notation: `data.photos.photo[0].title`.
* To get each item in the object, jQuery's [each method](http://api.jquery.com/jquery.each/) loops through an object's properties. Note that jQuery `each` method is commonly used for looping through results to get values. Here's how it works. For the first argument (`data.photos.photo`), you identify the object that you want to access.
* For the `function( i, gp )` arguments, you list an index and value. You can use any names you want here. `gp` becomes a variable that refers to the `data.photos.photo` object you're looping through. `i` refers to the starting point through the object. (You don't actually need to refer to `i` beyond the mention here unless you want to begin the loop at a certain point.)
* To access the properties in the JSON object, we use `gp.farm` instead of `data.photos.photo[0].farm`, because `gp` is an object reference to `data.photos.photo`.
* After the `each` function iterates through the response, I added some variables to make it easier to work with these components (using `serverId` instead of `gp.server`, etc.). And a `console.log` message checks to ensure we're getting values for each of the elements we need.
* This comment shows where we need to plug in each of the variables:
```html
//  https://farm{farm-id}.staticflickr.com/{server-id}/{id}_{secret}.jpg
```

The final line shows how you insert those variables into the HTML:

```
$("#flickr").append('<img src="https://farm' + farmId + '.staticflickr.com/' + serverId + '/' + id + '_' + secret + '.jpg"/>');
```

{: .tip}
A common pattern in programming is to loop through a response. This code example used the <code>each</code> method from jQuery to look through all the items in the response and do something with each item. Sometimes you incorporate logic that loops through items and looks for certain conditions present to decide whether to take some action. Pay attention to methods for looping, as they are common scenarios in programming.

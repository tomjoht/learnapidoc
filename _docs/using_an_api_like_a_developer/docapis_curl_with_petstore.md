---
title: "Activity: Use methods with curl"
permalink: docapis_curl_with_petstore.html
keywords:
course: "Documenting REST APIs"
weight: 2.6
sidebar: docapis
section: likeadeveloper
path1: likeadeveloper.html
last-modified: 2020-09-07
---

Our [sample weather API](docapis_scenario_for_using_weather_api.html) doesn't allow you to use anything but a GET method, so for this exercise, to use other methods with curl, we'll use the [petstore API from Swagger](http://petstore.swagger.io/). However, we won't actually use the Swagger UI (which is something we'll [explore later](pubapis_openapi_intro.html)). For now, we just need an API with which we can use to create, update, and delete content.

In this example, using the Petstore API, you'll create a new pet, update the pet, get the pet's ID, delete the pet, and then try to get the deleted pet.

* TOC
{:toc}

## Create a new pet

To create a pet, you have to pass a JSON message in the request body. Rather than trying to encode the JSON and pass it in the URL, you'll store the JSON in a file and reference the file.

{: .tip}
A lot of APIs require you to post requests containing JSON messages in the body. Request bodies are often how you configure a service. The list of JSON key-value pairs that the API accepts is called the "Model" in the Swagger UI display.

1.  Insert the following into a text file. This information will be passed in the `-d` parameter of the curl request:

    ```json
    {
      "id": 123,
      "category": {
        "id": 123,
        "name": "test"
      },
      "name": "fluffy",
      "photoUrls": [
        "string"
      ],
      "tags": [
        {
          "id": 0,
          "name": "string"
        }
      ],
      "status": "available"
    }
    ```

2.  Change the first `id` value to another integer (a whole number in this case). Also, change the pet's name of `fluffy` to something else.

    {: .note}
    Use a unique ID and name that others aren't likely to also use. Also, don't begin your ID with the number 0.

3.  Save the file in a directory that you can conveniently access from your terminal, such as your user directory (on a Mac, `Users/YOURUSERNAME` &mdash; replace `YOURUSERNAME` with your actual user name on your computer).
4.  In your terminal, browse to the directory where you saved the **mypet.json** file. (Usually, the default directory is `Users/YOURUSERNAME` &mdash; hence the previous step.)

    If you've never browsed directories using the command line, here's how you do it:

    * On a Mac, find your present working directory by typing `pwd`. Then move up a level by typing change directory: `cd ../`. Move down a level by typing `cd pets`, where `pets` is the name of the directory you want to move into. Type `ls` to list the contents of the directory.

    * On Windows, look at the prompt path to see your current directory. Then move up a level by typing `cd ../`. Move down a level by typing `cd pets`, where `pets` is the name of the directory you want to move into. Type `dir` to list the contents of the current directory.

5.  After your terminal or command prompt is in the same directory as your JSON file, create the new pet with the following curl request:

    ```bash
    curl -X POST --header "Content-Type: application/json" --header "Accept: application/json" -d @mypet.json "https://petstore.swagger.io/v2/pet"
    ```

    The `Content-Type` indicates the type of content submitted in the request body. The `Accept` indicates the type of content we will accept in the response.

    The response should look something like this:

    ```json
    {"id":51231236,"category":{"id":4,"name":"testexecution"},"name":"fluffernutter","photoUrls":["string"],"tags":[{"id":0,"name":"string"}],"status":"available"}
    ```

    In the response, check to see that your pet's name was returned.

{% include random_ad2.html %}

## Update your pet

Guess what, your pet hates its name! Change your pet's name to something more formal using the update pet method.

1.  In the **mypet.json** file, change the pet's name.
2.  Use the `PUT` method instead of `POST` to update the pet's name (keep the same curl content otherwise):

    ```bash
    curl -X PUT --header "Content-Type: application/json" --header "Accept: application/json" -d @mypet.json "https://petstore.swagger.io/v2/pet"
    ```

## Get your pet's name by ID

Find your pet's name by passing the ID into the `/pet/{petID}` endpoint:

1.  In your **mypet.json** file, copy the first `id` value.
2.  Use this curl command to get information about that pet ID, replacing `51231236` with your pet ID.

    ```bash
    curl -X GET --header "Accept: application/json" "https://petstore.swagger.io/v2/pet/51231236"
    ```

    The response contains your pet's name and other information:

    ```json
    {"id":51231236,"category":{"id":4,"name":"test"},"name":"mr. fluffernutter","photoUrls":["string"],"tags":[{"id":0,"name":"string"}],"status":"available"}
    ```

    You can format the JSON by pasting it into a [JSON formatting tool](http://jsonprettyprint.com/):

    ```json
    {
      "id": 51231236,
      "category": {
        "id": 4,
        "name": "test"
      },
      "name": "mr. fluffernutter",
      "photoUrls": [
        "string"
      ],
      "tags": [
        {
          "id": 0,
          "name": "string"
        }
      ],
      "status": "available"
    }
    ```

## Delete your pet

Unfortunately, your pet has died. It's time to delete your pet from the pet registry.

1.  Use the DELETE method to remove your pet. Replace `5123123` with your pet ID:

    ```bash
    curl -X DELETE --header "Accept: application/json" "https://petstore.swagger.io/v2/pet/5123123"
    ```

2.  Now check to make sure your pet is removed. Use a GET request to look for your pet with that ID:

    ```bash
    curl -X GET --header "Accept: application/json" "https://petstore.swagger.io/v2/pet/5123123"
    ```

    You should see this error message:

    ```json
    {"code":1,"type":"error","message":"Pet not found"}
    ```

This example allowed you to see how you can work with curl to create, read, update, and delete resources. These four operations are referred to as CRUD and are common to almost every programming language.

Although Postman is probably easier to use, curl lends itself to power-level usage. Quality assurance teams often construct advanced test scenarios that iterate through a lot of curl requests.

{% include random_ad3.html %}

## Understanding idempotent methods

One concept important to understand with HTTP methods is "idempotency." Roy Fielding defines idempotency as follows:

> A request method is considered "idempotent" if the intended effect on the server of multiple identical requests with that method is the same as the effect for a single such request. Of the request methods defined by this specification, PUT, DELETE, and safe request methods are idempotent" ([RFC 7231, 4.2.2](https://tools.ietf.org/html/rfc7231#section-4.2.2).

{% include image_ad_right.html %}

In other words, with idempotent methods, you can run them multiple times without multiplying the results. Idempotent methods include GET, PUT, and DELETE, while POST is not (see [8.1.3](https://tools.ietf.org/html/rfc7231#section-8.1.3) for a more detailed list).

Todd Fredrich explains idempotency by [comparing it to a pregnant cow](http://www.restapitutorial.com/lessons/idempotency.html). Let's say you bring over a bull to get a cow pregnant. Even if the bull and cow mate multiple times, the result will be just one pregnancy, not a pregnancy for each mating session.

{% include random_ad4.html %}

## Import curl into Postman

You can import curl commands into Postman by doing the following:

1.  Open a new tab in Postman and click the **Import** button in the upper-left corner.
2.  Select **Paste Raw Text** and insert your curl command:

    ```bash
    curl -X GET --header "Accept: application/json" "https://petstore.swagger.io/v2/pet/5123123"
    ```

    Make sure you don't have any extra spaces at the beginning.

    <img src="{{site.media}}/postmanimport.png" class="small" alt="Importing into Postman" />


3.  Click **Import**.
4.  Close the dialog box.
5.  Click **Send**. (If you deleted your pet, you will see the same "Pet not found" error message as before.)

## Export Postman to curl

You can also export Postman to curl by doing the following:

1.  If desired, select one of your OpenWeatherMap API requests in Postman.
1.  Click the **Code** button (it's right below Save).

    <img class="medium" src="{{site.media}}/postmangeneratecodesnippet.png" alt="Generating code snippets" />

2.  Select **curl** from the drop-down menu.
3.  Copy the code snippet.

    ```bash
    curl -X GET \
      'https://api.openweathermap.org/data/2.5/weather?lat=37.3565982&lon=-121.9689848&units=imperial&appid=APIKEY'
    ```

    In place of `APIKEY` you should see your actual API key.

4.  Remove the backslashes and line breaks. If you're on Windows, change the single quotes to double quotes.
5.  Insert the curl command into your terminal and observe the result.

    ```bash
    curl -X GET "https://api.openweathermap.org/data/2.5/weather?lat=37.3565982&lon=-121.9689848&units=imperial&appid=APIKEY"
    ```

    Through Postman's Import and Code functionality, you can easily switch between Postman and curl.

{% include ads.html %}

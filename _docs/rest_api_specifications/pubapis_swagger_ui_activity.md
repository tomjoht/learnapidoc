---
title: "Activity: Create your own Swagger UI display"
permalink: /pubapis_swagger_ui_activity.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 8.6
section: restapispecifications
path1: /restapispecifications.html
path2: /swaggerui.html
---

{% include activity.html %}

In the [Swagger tutorial](pubapis_swagger.html), you explored the [Swagger Petstore site](http://petstore.swagger.io/), learned how the [Swagger Editor](https://swagger.io/swagger-editor/) works, and how to download and integrate your [OpenAPI specification document](pubapis_openapi_tutorial_overview.html) into [Swagger UI](https://github.com/swagger-api/swagger-ui). Now it's time to put this learning into practice by integrating the specification document into your own Swagger UI site.

* TOC
{:toc}

## Integrate your OpenAPI spec into Swagger UI

1.  If you completed the [OpenAPI specification document activity](pubapis_openapi_activity.html), you should have a functional specification document from an API. If you don't, you can use the [openapi_sunrise_sunset.yml](/learnapidoc/assets/files/swagger-sunrise-sunset/openapi_sunrise_sunset.yml). This spec's information comes from the [Sunset and sunrise times API](https://sunrise-sunset.org/api). Download the file to your computer.
2.  Go to the [Swagger UI GitHub project](https://github.com/swagger-api/swagger-ui) and click **Clone or download**, then click **Download ZIP**.
3.  Uncompress the downloaded swagger-ui-master.zip and move the **dist** folder into another directory on your computer. Give the dist folder a more meaningful name, such as "swagger."
4.  Move your OpenAPI specification document (e.g., openapi_sunrise_sunset.yml) into the folder.
5.  Open the **index.html** file in the folder and update the reference to swagger.json to your own specification document.

    Change this:

    ```html
    url: "http://petstore.swagger.io/v2/swagger.json",
    ```

    to this:

    ```html
    url: "http://petstore.swagger.io/v2/openapi_sunrise_sunset.yml",
    ```

6.  To run Swagger UI locally, some browsers (such as Chrome or Safari) may block the local JavaScript. Try opening the index.html file in Firefox. If it doesn't load without error in Firefox, either upload the project to a web server or [run a local web server](#local_web_server) in that folder.

## Run a Local Web Server {#local_web_server}

A local web server simulates a web server on your local machine. To run a simple Python web server in the directory, you can follow use this [simple HTTP server](https://developer.mozilla.org/en-US/docs/Learn/Common_questions/set_up_a_local_testing_server).

1.  Check that you have Python installed by opening a terminal prompt and typing `Python -V`. If you don't have Python, [download and install it](https://www.python.org/downloads/).
2.  Using your terminal, `cd` into the same directory as your Swagger UI project.
3.  Do one of the following:

    If you have Python 2.x, run the following command:

    ```
    python -m SimpleHTTPServer 7800
    ```

    If you have Python 3.x, run the following command:

    ```
    python -m http.server 7800
    ```

4.  Open a browser (such as Chrome), and go to `http://localhost:7800/`. The web server serves up the index.html file in that directory by default. You should see your Swagger UI project load the spedification document.

    <a href="/learnapidoc/assets/files/swagger-sunrise-sunset/index.html" class="noExtIcon"><img class="medium" src="images/sunset_and_sunrise_swaggerui.png"/></a>


## Test your Swagger UI project

Make a request with the Swagger UI display to make sure it's working. If you're using the [Sunset and sunrise times API example](/learnapidoc/assets/files/swagger-sunrise-sunset/index.html), you can use these values for latitude and longitude:

* lat: `37.3710062`
* lng: `-122.0375932`

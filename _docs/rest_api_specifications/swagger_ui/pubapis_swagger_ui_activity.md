---
title: "Swagger UI activity: Create your own Swagger UI docs"
permalink: /pubapis_swagger_ui_activity.html
course: "Documenting REST APIs"
sidebar: docapis
weight: 8.41
section: restapispecifications
path1: /restapispecifications.html
---

{% include activity.html %}

In the [Swagger tutorial](pubapis_swagger.html), you explored the [Swagger Petstore site](http://petstore.swagger.io/), learned how the [Swagger Editor](https://swagger.io/swagger-editor/) works, and how to download and integrate your [OpenAPI specification document](pubapis_openapi_tutorial_overview.html) into [Swagger UI](https://github.com/swagger-api/swagger-ui). Now it's time to put this learning into practice by integrating the specification document into your own Swagger UI site.

## Integrate your OpenAPI spec into Swagger UI

1.  If you completed the [OpenAPI specification document activity](pubapis_openapi_activity.html), you should have a functional spec from an API. If you don't, then use an example spec, such as [this 3.0 OpenAPI spec from Uber](https://github.com/OAI/OpenAPI-Specification/blob/master/examples/v3.0/uber.yaml). Download it to your computer and name it something like openapi_uber.yml.
2.  Go to the [Swagger UI GitHub project](https://github.com/swagger-api/swagger-ui) and click **Clone or download**, then click **Download ZIP**.
3.  Uncompress the downloaded swagger-ui-master.zip and pull out the **dist** folder into another directory on your computer. Give the dist folder a more meaningful name, such as "swagger."
4.  Move your OpenAPI specification document (e.g., openapi_uber.yml) into the folder.
5.  Open the **index.html** file in the folder and update the reference to swagger.json to your own specification document.

    Change this:

    ```html
    url: "http://petstore.swagger.io/v2/swagger.json",
    ```

    to this:

    ```html
    url: "http://petstore.swagger.io/v2/openapi_uber.yml",
    ```
6.  To run Swagger UI locally, some browsers (such as Chrome or Safari) may block the local JavaScript. Try opening the index.html file in Firefox. If it doesn't load without error in Firefox, either upload the project to a web server or [run a local web server](#local_web_server) in that folder.

## Run a Local Web Server {#local_web_server}

A local web server simulates a web server on your local machine. To run a simple Python web server in the directory, we'll follow [this tutorial](https://developer.mozilla.org/en-US/docs/Learn/Common_questions/set_up_a_local_testing_server).

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

4.  Open a browser (such as Chrome), and go to `http://localhost:7800/`. The web server serves up the index.html file in that directory by default. You should see your Swagger UI project functional.


## Test your Swagger UI project

If you're using the sample Uber OpenAPI file, you'll need to get an Uber API key to make requests. Uber explains their [authentication model here](https://developer.uber.com/docs/trip-experiences/guides/authentication#api-token-authentication). You have to create an app from their [dashboard](https://developer.uber.com/dashboard/app/), and then you'll get some keys. When you do, copy the "server token" key.... (more info coming)

{: .activity_subtitle}
## <i class="fa fa-user-circle"></i> Activity 4c: Create a Swagger UI display with an OpenAPI spec document {#create_swaggerui}
{% if page.permalink == "/workshop.html" %}{:.no_toc}{% endif %}

In this activity, you'll create a Swagger UI display for an OpenAPI specification document. If you're using one of the pre-built OpenAPI files, you can see a demo of what we'll build here: [OpenWeatherMap Swagger UI](https://idratherbewriting.com/learnapidoc/assets/files/swagger/).

{% include course_image.html url="https://idratherbewriting.com/learnapidoc/assets/files/swagger/index.html" filename="swagger_full_result" size="medium" ext_print="png" ext_web="png" alt="Demo of Swagger UI" caption="Demo of Swagger UI rendering an OpenWeatherMap OpenAPI specification document" %}

First, you'll make sure you can view Swagger locally. Then you'll switch the Petstore OpenAPI document URL with an OpenWeatherMap OpenAPI document URL.

1.  Go to the [Swagger UI GitHub project](https://github.com/swagger-api/swagger-ui).
2.  Click **Clone or download**, and then click **Download ZIP**. Download the files to a convenient location on your computer and extract the files.

	  The only folder you'll be working with in the downloaded zip is the `dist` folder (short for distribution). Everything else is used only if you're recompiling the Swagger files, which is beyond the scope of this tutorial. If desired, you could drag the `dist` folder out of the `swagger-ui-master` folder so that it stands alone.

3.  In your Chrome browser, press **Cmd+O** (Mac) or **Ctrl+O** (Windows), browse to the `dist` folder, and select the `index.html` file,

    You should see the Petstore Swagger content. Now you'll customize the OpenAPI spec file with another file.

4.  Inside your `dist` folder, open `index.html` in a text editor such as [Sublime Text](https://www.sublimetext.com/).
5.  Look for the following code:

    ```js
    url: "http://petstore.swagger.io/v2/swagger.json",
    ```

6.  Change the `url` value to `https://idratherbewriting.com/learnapidoc/docs/rest_api_specifications/openapi_openweathermap.yml` and then save the file.

    For example:

    ```js
    url: "https://idratherbewriting.com/learnapidoc/docs/rest_api_specifications/openapi_openweathermap.yml",
    ```

7.  View the `index.html` file locally in your browser. Open Chrome, press **Ctrl+O** or **Cmd+O**, and select the `index.html` file.

The content should show the OpenWeatherMap API content instead of Swagger Petstore content.

When you're ready to publish your Swagger UI file, you just upload the `dist` folder (or whatever you want to call it) to a web server and go to the `index.html` file. For example, if you called your directory `dist` (leaving it unchanged), you would go to `http://myserver.com/dist/`.

{: .tip}
For more instructions in working with Swagger UI, see the [Swagger.io docs](https://swagger.io/docs/open-source-tools/swagger-ui/usage/installation/).

{% if page.workshop_activities == true %}*For more information related to this activity, see [Swagger UI tutorial]({{site.rooturl}}pubapis_swagger.html).*{% endif %}

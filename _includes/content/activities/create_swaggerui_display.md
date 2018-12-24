## <i class="fa fa-user-circle"></i> Activity: Create a Swagger UI display with an OpenAPI spec document {#create_swaggerui}

In this activity, you'll create a Swagger UI display for an OpenAPI specification document. If you're using one of the pre-built OpenAPI files, you can see a demo of what we'll build here: [OpenWeatherMap Swagger UI](https://idratherbewriting.com/learnapidoc/assets/files/swagger/) or [Sunrise/sunset Swagger UI](https://idratherbewriting.com/learnapidoc/assets/files/swagger-sunrise-sunset/index.html).

{% include course_image.html url="https://idratherbewriting.com/learnapidoc/assets/files/swagger/index.html" filename="swagger_full_result" size="medium" ext_print="png" ext_web="png" alt="Demo of Swagger UI" caption="Demo of Swagger UI rendering an OpenWeatherMap OpenAPI specification document" %}

**To integrate your OpenAPI spec into Swagger UI:**

1.  Prepare a valid OpenAPI specification document:
    *  For instructions on creating an OpenAPI specification document from scratch, follow the [OpenAPI tutorial here](pubapis_openapi_tutorial_overview.html).
    *  To use a pre-built OpenAPI specification document, you can use the [OpenWeatherMap spec file](https://idratherbewriting.com/learnapidoc/docs/rest_api_specifications/openapi_openweathermap.yml) or the [Sunrise/sunset API spec file](https://idratherbewriting.com/learnapidoc/assets/files/swagger-sunrise-sunset/openapi_sunrise_sunset.yml). (Right-click the link and save the YAML file to your desktop.

2.  Make sure your OpenAPI specification is valid. Paste your OpenAPI specification code into the [Swagger online editor](http://editor.swagger.io/#/) and make sure no warnings appear. The view on the right of the Swagger Editor shows a fully functional Swagger UI display.

3.  Go to the [Swagger UI GitHub project](https://github.com/swagger-api/swagger-ui).
4.  Click **Clone or download**, and then click **Download ZIP**. Download the files to a convenient location on your computer and extract the files.

	  The only folder you'll be working with in the downloaded zip is the **dist** folder (short for distribution). Everything else is used only if you're recompiling the Swagger files, which is beyond the scope of this tutorial.

5.  Drag the **dist** folder out of the swagger-ui-master folder so that it stands alone. (Then optionally delete the swagger-ui-master folder and zip file.)
7.  Drag your OpenAPI specification file that you prepared earlier (in step 1) into the **dist** folder. If you're using the pre-build OpenAPI files, it's either **openapi_openweathermap.yml** or **openapi_sunrise_sunset.yml**.) Your file structure should look as follows:

    <pre>
    ├── dist
    │   ├── favicon-16x16.png
    │   ├── favicon-32x32.png
    │   ├── index.html
    │   ├── oauth2-redirect.html
    │   ├── swagger-ui-bundle.js
    │   ├── swagger-ui-bundle.js.map
    │   ├── swagger-ui-standalone-preset.js
    │   ├── swagger-ui-standalone-preset.js.map
    │   ├── swagger-ui.css
    │   ├── swagger-ui.css.map
    │   ├── swagger-ui.js
    │   ├── swagger-ui.js.map
    │   ├── swagger30.yml
    │   └── <span class="red">[your openapi specification file]</span>
    </pre>

4.  Inside your **dist** folder, open **index.html** in a text editor such as [Atom editor](https://atom.io/) or [Sublime Text](https://www.sublimetext.com/).
5.  Look for the following code:

    ```js
    url: "http://petstore.swagger.io/v2/swagger.json",
    ```

6.  Change the `url` value from `http://petstore.swagger.io/v2/swagger.json` to a relative path to your YAML file, and then save the file. For example

    ```js
    url: "openapi_openweathermap.yml",
    ```

    or

    ```js
    url: "openapi_sunrise_sunset.yml",
    ```

7.  View the index.html file locally in your browser. Note that Chrome's security restrictions (CORS objections) prevent you from viewing the Swagger UI file locally. You have several workarounds:

    *  View the file locally using [Firefox](https://www.mozilla.org/en-US/firefox/new/).
    *  Use the hosted URL for [openapi_openweathermap.yml](https://idratherbewriting.com/learnapidoc/docs/rest_api_specifications/openapi_openweathermap.yml) or [openapi_sunrise_sunset.yml](https://idratherbewriting.com/learnapidoc/assets/files/swagger-sunrise-sunset/openapi_sunrise_sunset.yml). (Right-click the link and select **Copy Link Address**.)
    *  Upload the **dist** folder to a web server and view it there.
    *  Put the YAML file onto a public [GitHub Gist](https://gist.github.com/) and then click **Raw**. Use the URL for this Gist.
    *  Use a local server such as [simple local HTTP server](https://developer.mozilla.org/en-US/docs/Learn/Common_questions/set_up_a_local_testing_server).

When you're ready to publish your Swagger UI file, you simply upload the folder to a web server and go to the **index.html** file. For example, if you called your directory **dist** (leaving it unchanged), you would go to **http://myserver.com/dist**. (You can change the "dist" folder name to whatever you want.)

{: .tip}
For more instructions in working with Swagger UI, see the [Swagger.io docs](https://swagger.io/docs/open-source-tools/swagger-ui/usage/installation/).

{% if page.workshop_activities == true %}*For more information related to this activity, see [Swagger UI tutorial](pubapis_swagger.html).*{% endif %}

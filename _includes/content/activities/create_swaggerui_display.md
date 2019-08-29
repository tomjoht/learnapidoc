{: .activity_subtitle}
## <i class="fa fa-user-circle"></i> Activity 4c: Create a Swagger UI display with an OpenAPI spec document {#create_swaggerui}
{% if page.permalink == "/workshop.html" %}{:.no_toc}{% endif %}

In this activity, you'll create a Swagger UI display for an OpenAPI specification document. If you're using one of the pre-built OpenAPI files, you can see a demo of what we'll build here: [OpenWeatherMap Swagger UI](https://idratherbewriting.com/learnapidoc/assets/files/swagger/) or [Sunrise/sunset Swagger UI](https://idratherbewriting.com/learnapidoc/assets/files/swagger-sunrise-sunset/index.html).

{% include course_image.html url="https://idratherbewriting.com/learnapidoc/assets/files/swagger/index.html" filename="swagger_full_result" size="medium" ext_print="png" ext_web="png" alt="Demo of Swagger UI" caption="Demo of Swagger UI rendering an OpenWeatherMap OpenAPI specification document" %}

**To integrate your OpenAPI spec into Swagger UI:**

1.  Prepare a valid OpenAPI specification document:
    *  For instructions on creating an OpenAPI specification document from scratch, follow the [OpenAPI tutorial here]({{site.rooturl}}pubapis_openapi_tutorial_overview.html).
    *  To use a pre-built OpenAPI specification document, you can use the [OpenWeatherMap spec file](https://idratherbewriting.com/learnapidoc/docs/rest_api_specifications/openapi_openweathermap.yml) or the [Sunrise/sunset API spec file](https://idratherbewriting.com/learnapidoc/assets/files/swagger-sunrise-sunset/openapi_sunrise_sunset.yml). (Right-click the link and save the YAML file to your desktop.)

2.  Make sure your OpenAPI specification is valid. Paste your OpenAPI specification code into the [Swagger online editor](http://editor.swagger.io/#/) and make sure no warnings appear. The view on the right of the Swagger Editor shows a fully functional Swagger UI display.
3.  Go to the [Swagger UI GitHub project](https://github.com/swagger-api/swagger-ui).
4.  Click **Clone or download**, and then click **Download ZIP**. Download the files to a convenient location on your computer and extract the files.

	  The only folder you'll be working with in the downloaded zip is the `dist` folder (short for distribution). Everything else is used only if you're recompiling the Swagger files, which is beyond the scope of this tutorial.

5.  Drag the `dist` folder out of the `swagger-ui-master` folder so that it stands alone. (Then optionally delete the `swagger-ui-master` folder and zip file.)
7.  Drag your OpenAPI specification file (from step 1) into the `dist` folder. (If you're using the pre-build OpenAPI files, the file is called either `openapi_openweathermap.yml` or `openapi_sunrise_sunset.yml`.) Your file structure should look as follows:

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

4.  Inside your `dist` folder, open `index.html` in a text editor such as [Atom editor](https://atom.io/) or [Sublime Text](https://www.sublimetext.com/).
5.  Look for the following code:

    ```js
    url: "http://petstore.swagger.io/v2/swagger.json",
    ```

6.  Change the `url` value from `http://petstore.swagger.io/v2/swagger.json` to a relative path to your YAML file, and then save the file. For example:

    ```js
    url: "openapi_openweathermap.yml",
    ```

    or

    ```js
    url: "openapi_sunrise_sunset.yml",
    ```

7.  View the `index.html` file locally in your browser using a Python simple server. See the instructions in the next section for doing this.

**View the Swagger UI file in a Python simple server**

CORS security restrictions in Chrome and Firefox prevent you from viewing the Swagger UI file locally. Swagger UI needs to load on a web server to fulfill the security requirements. You can create a local web server running on your computer through [Python's SimpleHTTPServer module](https://developer.mozilla.org/en-US/docs/Learn/Common_questions/set_up_a_local_testing_server). Mac has a system version of Python installed by default, but Windows computers will need to install Python.

**Windows: Run the Python simpler server:**

1.  Install Python 3x.

    You can check if you already have Python by typing `python --version` on a command prompt. If you don't have Python already, [download and install Python 3x](https://www.python.org/downloads/).

    When you install Python, be sure to select the check box that says "Add Python 3.7 to PATH." *This check box isn't selected by default. If you don't select it, your command prompt won't recognize the word "python".*

    {% include course_image.html size="small" filename="pythonscreenshot" ext_print="png" ext_web="png" alt="Installing Python to PATH" caption="Add Python 3.7 to PATH" %}

2.  After installing Python, close your command prompt and reopen it.
3.  In your command prompt, browse to the Swagger UI `dist` directory.

    To browse in the Windows command prompt, type `cd <folder name>` to move into the folder. Type `cd ..` to move up a directory. Type `dir` to see a list of the current directory's contents.

    If you're having trouble locating the `dist` directory in the command prompt, try this trick: type `cd`, press the spacebar, and then drag the `dist` folder directly into the command prompt. The path will be printed automatically.

4.  After you've navigated into the `dist` folder, launch the server:

    ```bash
    python -m http.server
    ```

    The server starts:

    ```bash
    Serving HTTP on 0.0.0.0 port 8000 (http://0.0.0.0:8000/) ...
    ```

5.  Copy the `http://0.0.0.0:8000/` path to your browser's address bar. This is the web server address.

    By default, web servers default to the `index.html` file in the directory, so it will show the Swagger UI file automatically. If the browser doesn't direct to `index.html`, add it manually: `http://0.0.0.0:8000/index.html`.

    To stop the server, press **Ctrl+C** in your command prompt.

**Mac: Run the Python simple server**

1.  In your terminal, browse to the Swagger UI `dist` directory.

    To browse in your terminal, type `cd <folder name>` to move into the folder. Type `cd ..` to move up a directory. Type `ls` to see a list of the current directory's contents.

    If you're having trouble locating the `dist` directory in the command prompt, try this trick: type `cd`, press the spacebar, and then drag the `dist` folder directly into the command prompt. The path will be printed automatically.

2.  Since Mac already has Python, you can just run the following in your terminal to launch simple server:

    ```bash
    python -m http.server
    ```

    The server starts:

    ```bash
    Serving HTTP on 0.0.0.0 port 8000 (http://0.0.0.0:8000/) ...
    ```
3.  Copy the `http://0.0.0.0:8000/` path to your browser's address bar. This is the web server address.

    By default, web servers default to the `index.html` file in the directory, so it will show the Swagger UI file automatically. If the browser doesn't direct to `index.html`, add it manually: `http://0.0.0.0:8000/index.html`.

    To stop the server, press **Ctrl+C** in your terminal.

For more details on using the Python simple server, see [How do you set up a local testing server?](https://developer.mozilla.org/en-US/docs/Learn/Common_questions/set_up_a_local_testing_server) for more details.

**Other notes**

If you can't get the Python simple server to work, you can simply upload the OpenAPI files to a web server and refer to the path there. If you prefer this approach, you can copy the path to [openapi_openweathermap.yml](https://idratherbewriting.com/learnapidoc/docs/rest_api_specifications/openapi_openweathermap.yml) or [openapi_sunrise_sunset.yml](https://idratherbewriting.com/learnapidoc/assets/files/swagger-sunrise-sunset/openapi_sunrise_sunset.yml).

When you're ready to publish your Swagger UI file, you just upload the `dist` folder (or whatever you want to call it) to a web server and go to the `index.html` file. For example, if you called your directory `dist` (leaving it unchanged), you would go to `http://myserver.com/dist/`.

{: .tip}
For more instructions in working with Swagger UI, see the [Swagger.io docs](https://swagger.io/docs/open-source-tools/swagger-ui/usage/installation/).

{% if page.workshop_activities == true %}*For more information related to this activity, see [Swagger UI tutorial]({{site.rooturl}}pubapis_swagger.html).*{% endif %}

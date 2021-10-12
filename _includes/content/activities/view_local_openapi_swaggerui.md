{: .activity_subtitle}
## <i class="fa fa-user-circle"></i> Activity: View local OpenAPI file in Swagger UI {#view_local_openapi_swaggerui}
{% if page.permalink == "/workshop.html" %}{:.no_toc}{% endif %}

In order to view a *local* OpenAPI file (rather than an OpenAPI file hosted on a web server), you'll need to run an HTTP server on your computer. This is because CORS (cross-origin resource sharing) security restrictions in Chrome will block Swagger UI from running. Swagger UI needs to load on a web server to fulfill the security requirements.

You can create a local web server running on your computer through [Python's SimpleHTTPServer module](https://developer.mozilla.org/en-US/docs/Learn/Common_questions/set_up_a_local_testing_server). Mac has a system version of Python installed by default, but Windows computers will need to install Python.

**Windows: Run the Python simple HTTP server**

1.  Download and install [Python 3x](https://www.python.org/downloads/).

    {: .warning}
    When you install Python, be sure to select the check box that says "Add Python 3.7 to PATH." *This check box isn't selected by default. If you don't select it, your command prompt won't recognize the word "python".*

    {% include course_image.html size="medium" filename="pythonscreenshot2" ext_print="png" ext_web="png" alt="Installing Python to PATH" caption="Add Python 3.7 to PATH" %}

2.  After installing Python, close your command prompt and reopen it.
3.  In your command prompt, browse to the Swagger UI `dist` directory.

    To browse in the Windows command prompt, type `cd <folder name>` to move into the folder. Type `cd ..` to move up a directory. Type `dir` to see a list of the current directory's contents.

    If you're having trouble locating the `dist` directory in the command prompt, try this trick: type `cd`, press the spacebar, and then drag the `dist` folder directly into the command prompt. The path will be printed automatically.

4.  After you've navigated into the `dist` folder, launch the server:

    ```bash
    python3 -m http.server
    ```

    If this command doesn't work, try it without the 3:

    ```bash
    python -m http.server
    ```

    The server starts:

    ```bash
    Serving HTTP on 0.0.0.0 port 8000 (http://0.0.0.0:8000/) ...
    ```
    (If your Command Prompt doesn't recognize `python`, then you probably need to add Python to your PATH. Instructions for doing that are outside the scope of this tutorial.)

5.  Go to `http://localhost:8000/` in your address bar. This address lets you view the local web server.

    By default, web servers default to the `index.html` file in the directory, so it will show the Swagger UI file automatically. If the browser doesn't direct to `index.html`, add it manually: `http://localhost:8000/index.html`.

    To stop the server, press **Ctrl+C** in your command prompt. If you closed your Command Prompt before stopping the service, type `ps`, find the process ID, then type `kill -9 <process ID>`.

**Mac: Run the Python simple HTTP server**

1.  In your terminal, browse to the Swagger UI `dist` directory.

    To browse in your terminal, type `cd <folder name>` to move into the folder. Type `cd ..` to move up a directory. Type `ls` to see a list of the current directory's contents.

    If you're having trouble locating the `dist` directory in the command prompt, try this trick: type `cd`, press the spacebar, and then drag the `dist` folder directly into the command prompt. The path will be printed automatically.

2.  Since Mac already has Python, you can just run the following in your terminal to launch simple server:

    ```bash
    python -m http.server
    ```

    If this command doesn't work, try it with the 3 in case you already have Python3 installed:

    ```bash
    python3 -m http.server
    ```

    The server starts:

    ```bash
    Serving HTTP on 0.0.0.0 port 8000 (http://0.0.0.0:8000/) ...
    ```


3.  Go to `http://localhost:8000/` in your address bar. This address lets you view the local web server.

    By default, web servers default to the `index.html` file in the directory, so it will show the Swagger UI file automatically. If the browser doesn't direct to `index.html`, add it manually: `http://localhost:8000/index.html`.

    To stop the server, press **Ctrl+C** in your command prompt. If you closed your Command Prompt before stopping the service, type `ps`, find the process ID, then type `kill -9 <process ID>`.

For more details on using the Python simple server, see [How do you set up a local testing server?](https://developer.mozilla.org/en-US/docs/Learn/Common_questions/set_up_a_local_testing_server) for more details.

**Customize the OpenAPI file**

By default, SwaggerUI has the Petstore OpenAPI document configured in the `url` parameter in the `index.html` file. You need to swap in your local file instead.

1.  Download the following OpenAPI document (right-click the link and save the YAML file to your desktop.): [https://idratherbewriting.com/learnapidoc/docs/openapi_spec_and_generated_ref_docs/openapi_openweathermap.yml](https://idratherbewriting.com/learnapidoc/docs/openapi_spec_and_generated_ref_docs/openapi_openweathermap.yml)

2.  Drag your OpenAPI specification file, `openapi_openweathermap.yml`, into the `dist` folder. Your file structure should look as follows:

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
    │   └── <span class="red">openapi_openweathermap.yml</span>
    </pre>

4.  Inside your `dist` folder, open `index.html` in a text editor such as [Sublime Text](https://www.sublimetext.com/).
5.  Look for the following code:

    ```js
    url: "http://petstore.swagger.io/v2/swagger.json",
    ```

6.  Change the `url` value from `http://petstore.swagger.io/v2/swagger.json` to a relative path to your YAML file, and then save the file. For example:

    ```js
    url: "openapi_openweathermap.yml",
    ```

7.  View the `index.html` file locally in your browser using the Python simple server. For example, go to `http://0.0.0.0:8000/` or `http://0.0.0.0:8000/index.html`.

    If you go to the file path, such as `file:///Users/tomjoht/Downloads/dist/index.html`, you'll see a message that says "Failed to load API definition" note in the JavaScript Console that says "URL scheme must be "http" or "https" for CORS request." The SimpleServer simulates this http or https.

8.  To stop the Python simpler server, press **Ctrl+C** in your terminal or command prompt.

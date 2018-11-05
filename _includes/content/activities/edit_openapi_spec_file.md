## <i class="fa fa-user-circle"></i> Activity 4b: Edit an existing OpenAPI specification document

Use this simple [Sunrise and sunset times API](https://sunrise-sunset.org/api) to get more familiar with the process of creating an OpenAPI specification file. This Sunrise and sunset times API doesn't require authentication with requests, so it removes some of the more complicated authentication workflows (you can skip creating the [security object](pubapis_openapi_step6_security_object.html)).

To edit the OpenAPI specification file:

1.  Copy the code from this [pre-built OpenAPI specification](https://idratherbewriting.com/learnapidoc/assets/files/swagger-sunrise-sunset/openapi_sunrise_sunset.yml).
2.  Paste the YAML content into the [Swagger Editor](https://editor.swagger.io/).
3.  Identify each of the root-level objects of the OpenAPI spec:
    * [Step 1: openapi object](pubapis_openapi_step1_openapi_object.html)
    * [Step 2: info object](pubapis_openapi_step2_info_object.html)
    * [Step 3: servers object](pubapis_openapi_step3_servers_object.html)
    * [Step 4: paths object](pubapis_openapi_step4_paths_object.html)
    * [Step 5: components object](pubapis_openapi_step5_components_object.html)
    * [Step 6: security object](pubapis_openapi_step6_security_object.html)
    * [Step 7: tags object](pubapis_openapi_step7_tags_object.html)
    * [Step 8: externalDocs object](pubapis_openapi_step8_externaldocs_object.html)

4.  In the `info` object, make some changes to the `description` property and see how the visual editor gets updated.
5.  In the `parameters` object, make some changes to one of the `description` properties and see how the visual editor gets updated.
6.  Look for the `$ref` pointer in the `response` object. Identify what it points to in `components`.
7.  Change some spacing in a way that makes the spec invalid, and look at the error that appears. Then fix this.
8.  Expand the **Get** section and click **Try it out**. Then click **Execute** and look at the response.

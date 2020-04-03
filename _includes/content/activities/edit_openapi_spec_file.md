{: .activity_subtitle}
## <i class="fa fa-user-circle"></i> Activity: Edit an existing OpenAPI specification document
{% if page.permalink == "/workshop.html" %}{:.no_toc}{% endif %}

Use this simple [Sunrise and sunset times API](https://sunrise-sunset.org/api) to get more familiar with the process of creating an OpenAPI specification file. This Sunrise and sunset times API doesn't require authentication with requests, so it removes some of the more complicated authentication workflows (the spec file doesn't require the [security object]({{site.rooturl}}pubapis_openapi_step6_security_object.html)). In this activity, you'll edit some of the existing values in an OpenAPI specification document that's already written.

To edit the OpenAPI specification file:

1.  Copy the code from this [pre-built OpenAPI specification](https://idratherbewriting.com/learnapidoc/assets/files/swagger-sunrise-sunset/openapi_sunrise_sunset.yml).
2.  Paste the YAML content into the [Swagger Editor](https://editor.swagger.io/).
3.  Identify each of the root-level objects of the OpenAPI spec:
    * [Step 1: The openapi object]({{site.rooturl}}pubapis_openapi_step1_openapi_object.html)
    * [Step 2: The info object]({{site.rooturl}}pubapis_openapi_step2_info_object.html)
    * [Step 3: The servers object]({{site.rooturl}}pubapis_openapi_step3_servers_object.html)
    * [Step 4: The paths object]({{site.rooturl}}pubapis_openapi_step4_paths_object.html)
    * [Step 5: The components object]({{site.rooturl}}pubapis_openapi_step5_components_object.html)
    * [Step 8: The externalDocs object]({{site.rooturl}}pubapis_openapi_step8_externaldocs_object.html)

4.  In the `info` object (near the top), make some changes to the `description` property and see how the visual display in the right column gets updated.
5.  In the `parameters` object, make some changes to one of the `description` properties and see how the visual editor gets updated.
6.  Look for the `$ref` pointer in the `responses` object. Identify what it points to in `components`.
7.  Change some spacing in a way that makes the spec invalid (such as inserting a space before `info`), and look at the error that appears. Then revert the invalid space.
8.  Expand the **Get** section and click **Try it out**. Then click **Execute** and look at the response.

{% if page.workshop_activities == true %}*For more information related to this activity, see [Create an OpenAPI document]({{site.rooturl}}pubapis_openapi_activity.html).*{% endif %}

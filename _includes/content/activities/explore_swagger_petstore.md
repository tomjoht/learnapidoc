## <i class="fa fa-user-circle"></i> Activity 4a: Explore Swagger UI through the Petstore Demo

Let's get some hands-on experience with Swagger UI using the Petstore demo.

1.  Go to the [Swagger Pet Store Demo](https://petstore.swagger.io/).

    As with most Swagger-based outputs, Swagger UI provides a "Try it out" button. To make it work, first you would normally authorize Swagger by clicking **Authorize** and completing the right information required in the Authorization modal.

    <a href="http://petstore.swagger.io/" class="noExtIcon"><img src="images/swaggerui_authorize.png" alt="Authorization modal in Swagger UI" /></a>

    The Petstore example has an OAuth 2.0 security model. However, the Petstore authorization modal is just for demo purposes. There isn't any real code authorizing those requests, so you can simply close the Authorization modal.

2.  Expand the **Pet** endpoint.
3.  Click **Try it out**.

    <a href="http://petstore.swagger.io/" class="noExtIcon"><img src="images/swaggerui_petendpoint.png" alt="Try it out button in Swagger UI" /></a>

    After you click Try it out, the example value in the Request Body field becomes editable.

4.  In the example value, change the first `id` value to a unique (and unlikely repeated) whole number. Change the second `name` value to something you'd recognize (your pet's name &mdash; `Bentley`).
5.  Click **Execute**.

    <a href="http://petstore.swagger.io/" class="noExtIcon"><img src="images/swaggerui_execute.png" alt="Executing a sample Petstore request" /></a>

    Swagger UI submits the request and shows the curl that was submitted. The Responses section shows the response. (If you select JSON rather than XML in the "Response content type" drop-down box, you can specify that JSON is returned rather than XML.)

    <a href="http://petstore.swagger.io/" class="noExtIcon"><img src="images/swaggerui_response.png" alt="Response from Swagger Petstore get pet request" /></a>

6.  The Petstore is a functioning API, and you have actually created a pet. For fun, expand the GET **/pet/{petId}** endpoint, click Try it out, enter the pet ID you used in the previous operation, and then execute the request. You should see your pet's name returned.

---
title: Understand curl more
permalink: /docapis_understand_curl.html
categories:
- api-doc
keywords:
course: "Documenting REST APIs"
weight: 2.5
sidebar: docapis
section: likeadeveloper
path1: /likeadeveloper.html
---

Almost every API shows how to interact with the API using curl. So before moving on, let's pause a bit and learn more about curl.

* TOC
{:toc}

## Why curl?

One of the advantages of REST APIs is that you can use almost any programming language to call the endpoint. The endpoint is simply a resource located on a web server at a specific path.

Each programming language has a different way of making web calls. Rather than exhausting your energies trying to show how to make web calls in Java, Python, C++, JavaScript, Ruby, and so on, you can just show the call using curl.

curl provides a generic, language agnostic way to demonstrate HTTP requests and responses. Users can see the format of the request, including any headers and other parameters. Your users can translate this into the specific format for the language they're using.

## REST APIs follow the same model of the web

One reason REST APIs are so familiar is because REST follows the same model as the web. When you type an `http` address into a browser address bar, you're telling the browser to make an HTTP request to a resource on a server. The server returns a response, and your browser converts the response to a more visual display. But you can also see the raw code.

## Try using curl to GET a web page

To see an example of how curl retrieves a web resource, open a terminal and type the following:

```bash
curl http://example.com
```

You should see all the code behind the site [example.com](http://example.com). The browser's job is to make that code visually readable. curl shows you what you're really retrieving.

## Requests and responses include headers too

When you type an address into a website, you see only the body of the response. But actually, there's more going on behind the scenes. When you make the request, you're sending a header that contains information about the request. The response also contains a header.

1.  To see the response header in a curl request, include `-i` in the curl request:

    ```bash
    curl http://example.com -i
    ```

    The header will be included *above* the body in the response.

2.  To limit the response to just the header, use `-I`:

    ```bash
    curl http://example.com -I
    ```

    The response header is as follows:

    ```
    HTTP/1.1 200 OK
    Content-Encoding: gzip
    Accept-Ranges: bytes
    Cache-Control: max-age=604800
    Content-Type: text/html
    Date: Sat, 25 Mar 2017 16:24:59 GMT
    Etag: "359670651"
    Expires: Sat, 01 Apr 2017 16:24:59 GMT
    Last-Modified: Fri, 09 Aug 2013 23:54:35 GMT
    Server: ECS (rhv/81A7)
    X-Cache: HIT
    Content-Length: 606
    ```

    The header contains the metadata about the response. All of this information is transferred to the browser when you make a request to a URL in your browser (that is, when you surf to a web page online), but the browser doesn't show you this information. You can see the header information using the Chrome Developer Tools console if you look on the Network tab.

3.  Now let's specify the method. The GET method used by default, but we'll make it explicit here:

    ```bash
    curl -X GET http://example.com -I
    ```

    When you go to a website, you submit the request using the GET HTTP method. There are other HTTP methods you can use when interacting with REST APIs. Here are the common methods used when working with REST endpoints:

    {% if site.format == "kindle" %}

    POST
    :  Ceate a resource

    GET
    :  Read a resource

    PUT
    :  Update a resource

    DELETE
    :  Delete a resource
    {% else %}

    <table>
       <colgroup>
          <col width="30%" />
          <col width="70%" />
       </colgroup>
       <thead>
          <tr>
             <th markdown="span">HTTP Method</th>
             <th markdown="span">Description</th>
          </tr>
       </thead>
       <tbody>
          <tr>
             <td markdown="span">POST</td>
             <td markdown="span">Create a resource </td>
          </tr>
          <tr>
             <td markdown="span">GET</td>
             <td markdown="span">Read a resource</td>
          </tr>
          <tr>
             <td markdown="span">PUT</td>
             <td markdown="span">Update a resource</td>
          </tr>
          <tr>
             <td markdown="span">DELETE</td>
             <td markdown="span">Delete a resource</td>
          </tr>
       </tbody>
    </table>

    {% endif %}

    {: .note}
    GET is used by default with curl requests. If you use curl to make HTTP requests other than GET, you need to specify the HTTP method.

## Unpacking the weather API curl request

Let's look more closely at the request you submitted for the weather in the [previous topic](docapis_make_curl_call.html):

```bash
curl -X GET -H "Cache-Control: no-cache" -H "Postman-Token: 930d08d6-7b2a-6ea2-0725-27324755c684" "http://api.openweathermap.org/data/2.5/weather?zip=95050%2Cus&appid=fd4698c940c6d1da602a70ac34f0b147&units=imperial"
```

curl has shorthand names for the various options that you include with your request.

Here's what the commands mean:

* `-X GET`. The `-X` signifies the method used for for the request. Common options are `GET`, `POST`, `DELETE`, `PUT`. (`GET` is the default, so if it's not specified, it's automatically used. You might also see `--get` used instead. Most curl commands have a couple of different representations. `-X GET` can also be written as `--get`.)

`-H`. Submits a custom header. Include an additional `-H` for each header key-value pair you're submitting.
{% else %}

## Query strings and parameters

The zip code (`zip`) and app ID (`appid`) and units (`units`) parameters were passed to the endpoint using "query strings." The `?` appended to the URL is the query string where the parameters are passed to the endpoint:

```
?zip=95050%2Cus&appid=fd4698c940c6d1da602a70ac34f0b147&units=imperial
```

After the query string, each parameter is concatenated with other parameters through the `&` symbol. The order of the parameters doesn't matter. The order only matters if the parameters are part of the URL path itself (not listed after the query string).

## Common curl commands related to REST

curl has a lot of possible commands, but the following are the most common when working with REST APIs.

{% if site.format == "kindle" %}

`-i` or `--include`
:  Include the response headers in the response.
:  *Example:* `curl -i http://www.example.com`

`-d` or `--data`
:  Include data to post to the URL. The data needs to be [url encoded](http://www.w3schools.com/tags/ref_urlencode.asp). Data can also be passed in the request body.
:  *Example:* `curl -d "data-to-post" http://www.example.com`

`-H` or `--header`
:  Submit the request header to the resource. This is very common with REST API requests because the authorization is usually included here.
:  *Example:* `curl -H "key:12345" http://www.example.com`

`-X POST`
:  The HTTP method to use with the request (in this example, `POST`). If you use `-d` in the request, curl automatically specifies a POST method. With GET requests, including the HTTP method is optional, because GET is the default method used.
: *Example:* `curl -X POST -d "resource-to-update" http://www.example.com`

`@filename`
:  Load content from a file
:  *Example:* `curl -X POST -d @mypet.json http://www.example.com`

{% else %}
<table>
   <colgroup>
      <col width="20%" />
      <col width="50%" />
      <col width="30%" />
   </colgroup>
   <thead>
      <tr>
         <th markdown="span">curl command</th>
         <th markdown="span">Description</th>
         <th markdown="span">Example</th>
      </tr>
   </thead>
   <tbody>
      <tr>
         <td markdown="span">`-i` or `--include` </td>
         <td markdown="span">Include the response headers in the response. </td>
         <td markdown="span">`curl -i http://www.example.com`</td>
      </tr>
      <tr>
         <td markdown="span">`-d` or `--data`</td>
         <td markdown="span">Include data to post to the URL. The data needs to be [url encoded](http://www.w3schools.com/tags/ref_urlencode.asp). Data can also be passed in the request body.</td>
         <td markdown="span">`curl -d "data-to-post" http://www.example.com` </td>
      </tr>
      <tr>
         <td markdown="span">`-H` or `--header`</td>
         <td markdown="span">Submit the request header to the resource. This is very common with REST API requests because the authorization is usually included here.</td>
         <td markdown="span">`curl -H "key:12345" http://www.example.com` </td>
      </tr>
      <tr>
         <td markdown="span">`-X POST`</td>
         <td markdown="span">The HTTP method to use with the request (in this example, `POST`). If you use `-d` in the request, curl automatically specifies a POST method. With GET requests, including the HTTP method is optional, because GET is the default method used.</td>
         <td markdown="span">`curl -X POST -d "resource-to-update" http://www.example.com`</td>
      </tr>
      <tr>
         <td markdown="span">`@filename`</td>
         <td markdown="span">Load content from a file.</td>
         <td markdown="span">`curl -X POST -d @mypet.json http://www.example.com`</td>
      </tr>
   </tbody>
</table>
{% endif %}

See the [curl documentation](http://curl.haxx.se/docs/manpage.html) for a comprehensive list of curl commands you can use.

## Example curl command

Here's an example that combines some of these commands:

```bash
curl -i -H "Accept: application/json" -X POST -d "{status:MIA}" http://personsreport.com/status/person123
```

{% include random_ad.html %}

We could also format this with line breaks to make it more readable:

```bash
curl -i \
     -H "Accept: application/json" \
     -X POST \
     -d "{status:MIA}" \
     http://personsreport.com/status/person123 \
```

(Line breaks are problematic on Windows, so I don't recommend formatting curl requests like this.)

The `Accept` header tells the server that the only format we will accept in the response is JSON.

{% include activity.html %}

What do the following parameters mean?

* `-i`
* `-H`
* `-X POST`
* `-d`

{: .tip}
When you use curl, the terminal and iTerm on the Mac provide a much easier experience than using the command prompt in Windows. If you're going to get serious about API documentation but you're still on a PC, consider switching. There are a lot of utilities that you install through a terminal that *just work* on a Mac.

To learn more about curl with REST documentation, see [REST-esting with curl](http://blogs.plexibus.com/2009/01/15/rest-esting-with-curl/).

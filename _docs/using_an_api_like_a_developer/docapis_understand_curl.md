---
title: Understand curl more
permalink: docapis_understand_curl.html
course: "Documenting REST APIs"
weight: 2.5
sidebar: docapis
section: likeadeveloper
path1: likeadeveloper.html
last-modified: 2020-09-07
---

Almost every API shows how to interact with the API using curl. So before moving on, let's pause a bit and learn more about curl.

* TOC
{:toc}

## Why curl?

One of the advantages of REST APIs is that you can use almost any programming language to call the endpoint. The endpoint is simply a resource located on a web server at a specific path.

{% include random_ad4.html %}

Each programming language has a different way of making web calls. Rather than exhausting your energies trying to show how to make web calls in Java, Python, C++, JavaScript, Ruby, and so on, you can just show the call using curl.

{% include image_ad_right.html %}

curl provides a generic, language-agnostic way to demonstrate HTTP requests and responses. Users can see the format of the request, including any headers and other parameters. Your users can translate this into the specific format for the language they're using.

## Try using curl to GET a web page

As mentioned earlier, one reason REST APIs are so familiar is that REST follows the same model as the web (see [What is a REST API?](docapis_what_is_a_rest_api.html#the-web-itself-follows-rest)). When you type an `http` address into a browser address bar, you're telling the browser to make an HTTP request to a resource on a server. The server returns a response, and your browser converts the response to a more visual display. But you can also see the raw code.

To see an example of how curl retrieves a web resource, open a terminal and type the following:

```bash
curl http://example.com
```

Curl will retrieve the HTML code for the site [example.com](http://example.com). The browser's job is to make that code visually readable. curl shows you what you're actually retrieving.

## Requests and responses include headers too

When you type an address into a website, you see only the body of the response. But actually, there's more going on behind the scenes. When you make the request, you're sending a request header that contains information about the request. The response also contains a response header.

1.  To see the response header in a curl request, include `-i` in the curl request:

    ```bash
    curl http://example.com -i
    ```

    The header will be included *above* the body in the response:

    ```bash
    ~/projects $ curl http://example.com -I
    HTTP/1.1 200 OK
    Content-Encoding: gzip
    Accept-Ranges: bytes
    Cache-Control: max-age=604800
    Content-Type: text/html; charset=UTF-8
    Date: Tue, 04 Dec 2018 04:35:43 GMT
    Etag: "1541025663+gzip"
    Expires: Tue, 11 Dec 2018 04:35:43 GMT
    Last-Modified: Fri, 09 Aug 2013 23:54:35 GMT
    Server: ECS (sjc/4F91)
    X-Cache: HIT
    Content-Length: 606
    ```

2.  To limit the response to just the header, use `-I`:

    ```bash
    curl http://example.com -I
    ```

    The header contains the metadata about the response. All of this information is transferred to the browser when you make a request to a URL in your browser (for example, when you surf to a web page online), but the browser doesn't show you this information. You can see the header information using the [Chrome Developer Tools console](https://developers.google.com/web/tools/chrome-devtools/console/) by looking on the Network tab.

3.  Now let's specify the method. The GET method (read) is implied by default when no other method is specified, but we'll make it explicit here with the `-X` parameter:

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

Let's look more closely at the request you submitted for the weather in the previous topic ([Make a curl call](docapis_make_curl_call.html)):

```bash
curl -X GET -H "Cache-Control: no-cache" -H "Postman-Token: 930d08d6-7b2a-6ea2-0725-27324755c684" "https://api.openweathermap.org/data/2.5/weather?zip=95050&appid=APIKEY&units=imperial"
```

(In the above code, replace `APIKEY` with your actual API key.)

curl has shorthand names for the various options that you include with your request.

Here's what the commands mean:

* `-X GET`. The `-X` signifies the method used for the request. Common options are `GET`, `POST`, `DELETE`, `PUT`. (You might also see `--get` used instead. Most curl commands have a couple of different representations. `-X GET` can also be written as `--get`.)

* `-H`. Submits a custom header. Include an additional `-H` for each header key-value pair you're submitting.

## Query strings and parameters

The zip code (`zip`), app ID (`appid`), and units (`units`) parameters were passed to the endpoint using "query strings." The `?` appended to the URL indicates the start of the query string. The query string parameters are the parameters that appear *after* the `?`:

<pre>
<span style="color: red">?</span>zip=95050<span style="color: red">&</span>appid=APIKEY<span style="color: red">&</span>units=imperial
</pre>

(In the above code, replace `APIKEY` with your actual API key.)

After the query string, each parameter is separated from other parameters by the ampersand `&` symbol. The order of the query string parameters doesn't matter. The order only matters if the parameters are *on the left of the query string* (and thus part of the URL itself). Any configurable parts of the endpoint that appear before the query string are called [path parameters](docapis_doc_parameters.html#path_parameters) (we'll dive into these later).

## Common curl commands related to REST {#common}

{% include random_ad3.html %}

curl has a lot of possible commands, but the following are the most common when working with REST APIs.

{% if site.format == "kindle" %}

`-i` or `--include`
:  Includes the response headers in the response.
:  *Example:* `curl -i http://www.example.com`

`-d` or `--data`
:  Includes data to post to the URL. This data allows you to pass in a [request body](docapis_doc_parameters.html#request_bodies). The data needs to be [url encoded](http://www.w3schools.com/tags/ref_urlencode.asp).
:  *Example:* `curl -d "data-to-post" http://www.example.com`

`-H` or `--header`
:  Submits the request header to the resource. Headers are common with REST API requests because the authorization is usually included in the header.
:  *Example:* `curl -H "key:12345" http://www.example.com`

`-X POST`
:  Specifies the HTTP method to use with the request (in this example, `POST`). If you use `-d` in the request, curl automatically specifies a POST method. With `GET` requests, including the HTTP method is optional because GET is the default method used.
: *Example:* `curl -X POST -d "resource-to-update" http://www.example.com`

`@filename`
:  Loads content from a file. Used with the data parameter (`-d`).
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
         <td markdown="span">Includes the response headers in the response. </td>
         <td markdown="span">`curl -i http://www.example.com`</td>
      </tr>
      <tr>
         <td markdown="span">`-d` or `--data`</td>
         <td markdown="span">Includes data to post to the URL. The data needs to be [url encoded](http://www.w3schools.com/tags/ref_urlencode.asp). Data can also be passed in the request body.</td>
         <td markdown="span">`curl -d "data-to-post" http://www.example.com` </td>
      </tr>
      <tr>
         <td markdown="span">`-H` or `--header`</td>
         <td markdown="span">Submits the request header to the resource. Headers are common with REST API requests because the authorization is usually included in the header.</td>
         <td markdown="span">`curl -H "key:12345" http://www.example.com` </td>
      </tr>
      <tr>
         <td markdown="span">`-X POST`</td>
         <td markdown="span">Specifies the HTTP method to use with the request (in this example, `POST`). If you use `-d` in the request, curl automatically specifies a POST method. With GET requests, including the HTTP method is optional, because `GET` is the default method used.</td>
         <td markdown="span">`curl -X POST -d "resource-to-update" http://www.example.com`</td>
      </tr>
      <tr>
         <td markdown="span">`@filename`</td>
         <td markdown="span">Loads content from a file.</td>
         <td markdown="span">`curl -X POST -d @mypet.json http://www.example.com`</td>
      </tr>
   </tbody>
</table>
{% endif %}

See the [curl documentation](http://curl.haxx.se/docs/manpage.html) for a comprehensive list of curl commands you can use.

## Example curl command

Here's an example curl request that combines some of these commands:

```bash
curl -i -H "Accept: application/json" -X POST -d "{status:MIA}" http://personsreport.com/status/person123
```

{% include ads.html %}

The request could also be formatted with line breaks to make it more readable:

```bash
curl -i \
     -H "Accept: application/json" \
     -X POST \
     -d "{status:MIA}" \
     http://personsreport.com/status/person123 \
```

(Line breaks are problematic on Windows, so I don't recommend formatting curl requests like this.)

The `Accept` header tells the server that the only format we will accept in the response is JSON.

## <i class="fa fa-user-circle"></i> Quiz yourself

Quiz yourself to see how much you remember. What do the following parameters mean?

* `-i`
* `-H`
* `-X POST`
* `-d`

{: .tip}
When you use curl, the Terminal and [iTerm](https://www.iterm2.com/) on the Mac provide a much easier experience than using the command prompt in Windows. If you're going to get serious about API documentation, but you're still on a PC, consider switching. There are a lot of utilities that you install through a terminal that *just work* on a Mac. Also, if you're in Silicon Valley, using a PC instead of a Mac might make you look old-fashioned (see [Why do most startups purchase MacBooks for their employees?](https://www.quora.com/Why-do-most-startups-purchase-MacBooks-for-their-employees)). Alternatively, you can run Linux on Windows, and you'll get the same terminal experience (Bash shell). See this example tutorial on how to [install Bash on Windows](https://itsfoss.com/install-bash-on-windows/)."

{% include random_ad2.html %}

{% comment %}
site seems to be down or gone. check later to see if it's back up.
To learn more about curl with REST documentation, see [REST-esting with curl](http://blogs.plexibus.com/2009/01/15/rest-esting-with-curl/).
 {% endcomment %}

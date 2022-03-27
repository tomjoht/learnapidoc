---
title: curl intro and installation
permalink: docapis_install_curl.html
course: "Documenting REST APIs"
weight: 2.3
sidebar: docapis
section: likeadeveloper
path1: likeadeveloper.html
last-modified: 2019-01-01
---

While [Postman](docapis_postman.html) is convenient, it's hard to use it to represent how to make calls with it in your documentation. Additionally, different users probably use different GUI clients, or none at all (preferring the command line instead).

Instead of describing how to make REST calls using a GUI client like Postman, the most conventional method for documenting request syntax is to use curl.

* TOC
{:toc}

## About curl

curl is a command-line utility that lets you execute HTTP requests with different parameters and methods. Instead of going to web resources in a browser's address bar, you can use the command line to get these same resources, retrieved as text.

{: .note}
Sometimes curl is written as cURL. It stands for Client URL. "curl" is the more common convention for its spelling, but both refer to the same thing.

{% include image_ad_right.html %}

## Installing curl

curl is usually available by default on Macs but requires some installation on Windows. Follow these instructions for installing curl:

{% include random_ad4.html %}

### Install curl on Mac

If you have a Mac, by default, curl is probably already installed. To check:

1.  Open Terminal (press **Cmd + spacebar** to open Stoplight, and then type "Terminal").
2.  In Terminal type `curl -V`. The response should look something like this:

    ```
    curl 7.54.0 (x86_64-apple-darwin16.0) libcurl/7.54.0 SecureTransport zlib/1.2.8
    Protocols: dict file ftp ftps gopher http https imap imaps ldap ldaps pop3 pop3s rtsp smb smbs smtp smtps telnet tftp Features: AsynchDNS IPv6 Largefile GSS-API Kerberos SPNEGO NTLM NTLM_WB SSL libz UnixSockets
    ```

If you don't see this, you need to [download and install curl](http://curl.haxx.se/).

### Install curl on Windows

Installing curl on Windows involves a few more steps. First, determine whether you have 32-bit or 64-bit Windows by right-clicking **Computer** and selecting **Properties.** Then follow the instructions in this [Confused by Code page](http://www.confusedbycode.com/curl/#downloads). Most likely, you'll want to choose the **With Administrator Privileges (free)** installer.

After you install curl, test your version of curl by doing the following:

1. Open a command prompt by clicking the **Start** button and typing **cmd**.
2. Type `curl -V`.

The response should be as follows:

```
curl 7.54.0 (x86_64-apple-darwin14.0) libcurl/7.37.1 SecureTransport zlib/1.2.5
Protocols: dict file ftp ftps gopher http https imap imaps ldap ldaps pop3 pop3s rtsp smtp smtps telnet tftp
Features: AsynchDNS GSS-Negotiate IPv6 Largefile NTLM NTLM_WB SSL libz
```

## Make a test API call

After you have curl installed, make a test API call:

```
curl -X GET "https://api.openweathermap.org/data/2.5/weather?zip=95050&appid=APIKEY&units=imperial"
```

(In the above code, replace `APIKEY` with your actual API key.)

You should get minified JSON response back like this:

```
{"coord":{"lon":-121.96,"lat":37.35},"weather":[{"id":701,"main":"Mist","description":"mist","icon":"50d"}],"base":"stations","main":{"temp":66.92,"pressure":1017,"humidity":50,"temp_min":53.6,"temp_max":75.2},"visibility":16093,"wind":{"speed":10.29,"deg":300},"clouds":{"all":75},"dt":1522526400,"sys":{"type":1,"id":479,"message":0.0051,"country":"US","sunrise":1522504404,"sunset":1522549829},"id":420006397,"name":"Santa Clara","cod":200}
```

{% include ads.html %}

{: .note}
In Windows, Ctrl+ V doesn't work; instead, you right-click and then select **Paste**.

{% include random_ad3.html %}

### Notes about using curl with Windows

If you're using Windows, note the following formatting requirements when using curl:

* Use double quotes in the Windows command line. (Windows doesn't support single quotes.)
* Don't use backslashes (`\`) to separate lines. (This is for readability only and doesn't affect the call on Macs.)
* By adding `-k` in the curl command, you can bypass curl's security certificate, which may or may not be necessary.

{% include random_ad2.html %}

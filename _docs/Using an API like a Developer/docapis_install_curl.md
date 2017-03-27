---
title: cURL intro and installation
permalink: /docapis_install_curl.html
course: "Documenting REST APIs"
weight: 1.6
sidebar: docapis
section: likeadeveloper
---

While Postman is convenient, it's hard to represent how to make calls with it in your documentation. Additionally, different users probably use different GUI clients, or none at all (preferring the command line instead).

Instead of describing how to make REST calls using a GUI client like Postman, the most conventional method for documenting request syntax is to explain how to make the calls using cURL.

cURL is a command-line utility that lets you execute HTTP requests with different parameters and methods. In other words, instead of going to web resources in a browser's address bar, you can use the command line to get these same resources, retrieved as text.

## Installing cURL

cURL is usually available by default on Macs but requires some installation on Windows. Follow these instructions for installing cURL:

### Install cURL on Mac

If you have a Mac, by default, cURL is probably already installed. To check:

1.  Open Terminal (press **Cmd + space bar** to open Spotlight, and then type "Terminal").
2.  In Terminal type `curl -V`. The response should look something like this:

    ```
    curl 7.51.0 (x86_64-apple-darwin16.0) libcurl/7.51.0 SecureTransport zlib/1.2.8
    Protocols: dict file ftp ftps gopher http https imap imaps ldap ldaps pop3 pop3s rtsp smb smbs smtp smtps telnet tftp
    Features: AsynchDNS IPv6 Largefile GSS-API Kerberos SPNEGO NTLM NTLM_WB SSL libz UnixSockets
    ```

If you don't see this, you need to [download and install cURL](http://curl.haxx.se/).

To make a test API call, submit the following:

```
curl --get -k --include "https://simple-weather.p.mashape.com/aqi?lat=1.3319164&lng=103.7231246" -H "X-Mashape-Key: EF3g83pKnzmshgoksF83V6JB6QyTp1cGrrdjsnczTkkYgYrp8p" -H "Accept: text/plain"
```

You should get back a two-digit number in the response, such as 63. (This is the "air quality index" for the weather.)

### Install cURL on Windows

Installing cURL on Windows involves a few more steps. First, determine whether you have 32-bit or 64-bit Windows by right-clicking **Computer** and selecting **Properties.**

Then follow the instructions in this [Confused by Code page](http://www.confusedbycode.com/curl/#downloads).

Once installed, test your version of cURL by doing the following:

1. Open a command prompt by clicking the **Start** button and typing **cmd**.
2. Type `curl -V`.

The response should be as follows:

```
curl 7.51.0 (x86_64-apple-darwin14.0) libcurl/7.37.1 SecureTransport zlib/1.2.5
Protocols: dict file ftp ftps gopher http https imap imaps ldap ldaps pop3 pop3s rtsp smtp smtps telnet tftp
Features: AsynchDNS GSS-Negotiate IPv6 Largefile NTLM NTLM_WB SSL libz
```

To make a test API call, submit the following:

```
curl --get -k --include "https://simple-weather.p.mashape.com/aqi?lat=1.3319164&lng=103.7231246" -H "X-Mashape-Key: EF3g83pKnzmshgoksF83V6JB6QyTp1cGrrdjsnczTkkYgYrp8p" -H "Accept: text/plain"
```

{: .note}
In Windows, Ctrl+ V doesn't work; instead, you right-click and then select Paste.

You should get back a two-digit number in the response. (This is the "air quality index" for the weather.)

{: .tip}
If you're on Windows 8.1 and you encounter an error that says, "The program can't start because MSVCR100.dll is missing from your computer," see <a href="http://www.faqforge.com/windows/fix-the-program-cant-start-because-msvcr100-dll-is-missing-from-your-computer-error-on-windows/">this article</a> and install the suggested package.

### Notes about using cURL with Windows

* Use double quotes in the Windows command line. (Windows doesn't support single quotes.)
* Don't use backslashes (`\`) to separate lines. (This is for readability only and doesn't affect the call on Macs. Unfortunately the Weather API on Mashape uses these slashes in their cURL examples.)
* By adding `-k` in the cURL command, you bypass cURL's security certificate, which may or may not be necessary.

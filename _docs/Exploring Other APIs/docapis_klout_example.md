---
title: 'Klout example: Retrieve Klout influencers and influencees'
permalink: /docapis_klout_example.html
categories:
- api-doc
course: "Documenting REST APIs"
weight: 4.2
sidebar: docapis
section: otherapis
---

Use the Klout API to get your Klout score and a list of your influencers and influencees.

## About Klout
[Klout](http://klout.com) is a service that gauges your online influence (your klout) by measuring tweets, retweets, likes, etc. from a variety of social networks using a sophisticated algorithm. In this tutorial, you'll use the Klout API to retrieve a Klout score for a particular Twitter handle, and then a list of your influencers.

Klout has an "interactive console" driven by Mashery I/O docs that allows you to insert parameters and go to an endpoint. The interactive console also contains brief descriptions of what each endpoint does.

<a href="http://developer.klout.com/io-docs"><img src="images/klout_interactive_console-550x362.png" alt="Klout Interactive Console" /></a>

## 1. Get an API key to make requests
To use the API, you have to register an "app," which allows you to get an API key. Go to [My API Keys](http://developer.klout.com/apps/mykeys) page to register your app and get the keys.

## 2. Make requests for the resources you need

The API is relatively simple and easy to browse.

To get your Klout score, you need to use the `score` endpoint. This endpoint requires you to pass your Klout ID.

Since you most likely don't know your Klout ID, use the `identity(twitter_screen_name)` endpoint first.

<img src="images/kloutidentity.png" alt="Klout identity endpoint" />

Instead of using the API console, you can also submit the request via your browser by going to the request URL:

```
http://api.klout.com/v2/identity.json/twitter?screenName=tomjohnson&amp;key={your api key}
```

{: .note}
In place of `{your api key}`, insert your own API key. (I initially displayed mine here only to find that bots grabbed it and made thousands of requests, which ended up disabling my API key.)" %}

My Klout ID is `1134760`.

Now you can use the `score` endpoint to calculate your score.

<img src="images/kloutscorenew.png" alt="Klout Score" />

My score is `54`. Klout's interactive console makes it easy to get responses for API calls, but you could equally submit the request URI in your browser.

```
http://api.klout.com/v2/user.json/1134760/score?key={your api key}
```

After submitting the request, here is what you would see:

```json
{
   "score": 54.233149646009174,
   "scoreDelta": {
   "dayChange": -0.5767549117977069,
   "weekChange": -0.5311640476663939,
   "monthChange": -0.2578449396243201
},
   "bucket": "50-59"
}
```

Now suppose you want to know who you have influenced (your influencees) and who influences you (your influencers). After all, this is what Klout is all about. Influence is measured by the action you drive.

To get your influencers and influencees, you need to use the `influence` endpoint, passing in your Klout ID.

## 3. Analyze the response

And here's the influence resource's response:

```json
{
    "myInfluencers": [{
        "entity": {
            "id": "441634251566461018",
            "payload": {
                "kloutId": "441634251566461018",
                "nick": "jekyllrb",
                "score": {
                    "score": 50.41206120210041,
                    "bucket": "50-59"
                },
                "scoreDeltas": {
                    "dayChange": -0.05927708546307997,
                    "weekChange": -0.739829931907181,
                    "monthChange": -0.7917151139830239
                }
            }
        }
    }, {
        "entity": {
            "id": "33214052017370475",
            "payload": {
                "kloutId": "33214052017370475",
                "nick": "Mrtnlrssn",
                "score": {
                    "score": 22.45014953758632,
                    "bucket": "20-29"
                },
                "scoreDeltas": {
                    "dayChange": -0.3481056157609004,
                    "weekChange": -2.132213372307284,
                    "monthChange": -2.315034722843535
                }
            }
        }
    }, {
        "entity": {
            "id": "177892199475207065",
            "payload": {
                "kloutId": "177892199475207065",
                "nick": "TCSpeakers",
                "score": {
                    "score": 28.23034124231384,
                    "bucket": "20-29"
                },
                "scoreDeltas": {
                    "dayChange": 0.00154327588529668,
                    "weekChange": -0.6416866188503434,
                    "monthChange": -4.226666088333872
                }
            }
        }
    }, {
        "entity": {
            "id": "91760850663150797",
            "payload": {
                "kloutId": "91760850663150797",
                "nick": "JohnFoderaro",
                "score": {
                    "score": 39.39045702175103,
                    "bucket": "30-39"
                },
                "scoreDeltas": {
                    "dayChange": -0.6092388403641991,
                    "weekChange": -0.699356032047298,
                    "monthChange": 5.34513233077341
                }
            }
        }
    }, {
        "entity": {
            "id": "1057244",
            "payload": {
                "kloutId": "1057244",
                "nick": "peterlalonde",
                "score": {
                    "score": 42.39625419500191,
                    "bucket": "40-49"
                },
                "scoreDeltas": {
                    "dayChange": -0.32068173129262334,
                    "weekChange": 0.14276611846587173,
                    "monthChange": -0.9354253686809457
                }
            }
        }
    }],
    "myInfluencees": [{
        "entity": {
            "id": "537311",
            "payload": {
                "kloutId": "537311",
                "nick": "techwritertoday",
                "score": {
                    "score": 49.99313854987996,
                    "bucket": "40-49"
                },
                "scoreDeltas": {
                    "dayChange": -0.10510042996928348,
                    "weekChange": -0.568647896457648,
                    "monthChange": 0.3425617785475197
                }
            }
        }
    }, {
        "entity": {
            "id": "91760850663150797",
            "payload": {
                "kloutId": "91760850663150797",
                "nick": "JohnFoderaro",
                "score": {
                    "score": 39.39045702175103,
                    "bucket": "30-39"
                },
                "scoreDeltas": {
                    "dayChange": -0.6092388403641991,
                    "weekChange": -0.699356032047298,
                    "monthChange": 5.34513233077341
                }
            }
        }
    }, {
        "entity": {
            "id": "33214052017370475",
            "payload": {
                "kloutId": "33214052017370475",
                "nick": "Mrtnlrssn",
                "score": {
                    "score": 22.45014953758632,
                    "bucket": "20-29"
                },
                "scoreDeltas": {
                    "dayChange": -0.3481056157609004,
                    "weekChange": -2.132213372307284,
                    "monthChange": -2.315034722843535
                }
            }
        }
    }, {
        "entity": {
            "id": "45598950992256021",
            "payload": {
                "kloutId": "45598950992256021",
                "nick": "DavidEgyes",
                "score": {
                    "score": 40.40572793362214,
                    "bucket": "40-49"
                },
                "scoreDeltas": {
                    "dayChange": 0.001934309078080787,
                    "weekChange": 2.233816485488269,
                    "monthChange": 1.4901401977594801
                }
            }
        }
    }, {
        "entity": {
            "id": "46724857496656136",
            "payload": {
                "kloutId": "46724857496656136",
                "nick": "fabi_ator",
                "score": {
                    "score": 30.32498605174672,
                    "bucket": "30-39"
                },
                "scoreDeltas": {
                    "dayChange": -0.005890177199574964,
                    "weekChange": -0.6859163242901047,
                    "monthChange": -5.293301673692355
                }
            }
        }
    }],
    "myInfluencersCount": 5,
    "myInfluenceesCount": 5
}
```

The response contains an array containing 5 influencers and an array containing 5 influencees. (Remember the square brackets denote an array; the curly braces denote an object. Each array contains a list of objects.)

## 4. Pull out the information you need

Suppose you just want a short list of Twitter names with their links.

Using jQuery, you can iterate through the JSON payload and pull out the information that you want:

```html
<html>
<body>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>

<script>
  var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://api.klout.com/v2/user.json/1134760/influence?key=APIKEY&callback=?",
    "method": "GET",
    "dataType": "jsonp",
    "headers": {}
  }

  $.ajax(settings).done(function (data) {
    console.log(data);
    $.each( data.myInfluencees, function( i, inf ) {
       $("#kloutinfluencees").append('<li><a href="http://twitter.com/'+inf.entity.payload.nick + '">' + inf.entity.payload.nick + '</a></li>');
     });
    $.each( data.myInfluencers, function( i, inf ) {
       $("#kloutinfluencers").append('<li><a href="http://twitter.com/'+inf.entity.payload.nick + '">' + inf.entity.payload.nick + '</a></li>');
     });
  });
</script>

<h2>My influencees (people I influence)</h2>
<ul id="kloutinfluencees"></ul>

<h2>My influencers (people who influence me)</h2>
<ul id="kloutinfluencers"></ul>

</body>
</html>
```
{: .note}
Remember to swap in your own API key in place of <code>APIKEY</code>.
The result looks like this:

<img src="images/kloutinfluencelists.png" alt="Klout result" />

## Code explanation

The code uses the `ajax` method from jQuery to get a JSON payload for a specific URL. It assigns this payload to the `data` argument. The `console.log(data)` code just logs the payload to the console to make it easy to inspect.

The jQuery `each` method iterates through each property in the `data.myInfluencees` object. It renames this object `inf` (you can choose whatever names you want) and then gets the `entity.payload.nick` property (nickname) for each item in the object. It inserts this value into a link to the Twitter profile, and then appends the information to a specific tag on the page (`#kloutinfluencees`).

Pretty much the same approach is used for the `data.myInfluencers` object, but the tag the data is appended to is (`kloutinfluencers`).

Note that in the `ajax` settings, a new attribute is included: `"dataType": "jsonp"`. If you omit this, you'll get an error message that says:

```
XMLHttpRequest cannot load http://api.klout.com/v2/user.json/876597/influence?key=APIKEY&callback=?. No 'Access-Control-Allow-Origin' header is present on the requested resource. Origin 'null' is therefore not allowed access.
```

When you submit requests to endpoints, you're getting information from other domains and pulling the information to your own domain. For security purposes, servers block this action. The resource server has to enable something called Cross Origin Resource Sharing (CORS).

JSONP gets around CORS restricts by wrapping the JSON into script tags, which servers don't block. With JSONP, you can only use GET methods. You can [read more about JSONP here](https://en.wikipedia.org/wiki/JSONP).

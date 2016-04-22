---
layout: slides
title: NASA Space Apps Hackathon
---

# _Hi!_

===

![Fullscreen](/presentations/img/iss.jpg)

![IN SPACE](/presentations/img/astro.png)

## _NASA Space Apps_ with _Socrata_

===

# Who the _heck_ are _you_?

--- 

![Hey Ladies!](/presentations/img/metcalf_astronaut.jpg)

<h3><img src="/presentations/img/twitter.png" alt="twitter" style="vertical-align: middle" /> chrismetcalf</h3>

---

![Socrata](/presentations/img/hello_world.png)

---

![Fullscreen](/presentations/img/shuttle.jpg)

## We build _software_ to make data _more useful_ to _more people_

<!-- https://www.flickr.com/photos/hyku/2497370097 -->

--- 

![Fullscreen](/presentations/img/world.jpg)

<h2>We believe that _greater access_ to _public data_ makes the world a _better place to live_</h2>

---

![Fullscreen](/presentations/img/soyuz_shuttle.jpg)

<h2>We help _governments_ share their _public data_ with _civic developers_</h2>

===

# What is _Civic_ _Hacking_?

---

## _civic hacker_ (n)

_One who collaborates with others_ to create, build, and invent open source solutions using publicly-released data, code and technology _to solve social, economic, and environmental challenges_ relevant to their _neighborhood, city, state, or country_.

===

# The _Socrata_ _Open Data APIs_

![SODA](/presentations/img/astro_thumb.png)

---

## Finding Data

### [data.nasa.gov](https://data.nasa.gov/data?category=&search=&type=datasets)
### [opendatanetwork.com](http://www.opendatanetwork.com)

---

![Fullscreen](/presentations/img/spacewalk.jpg)

## Example: _"Extra-vehicular Activity (EVA) - US and Russia"_

[data.nasa.gov/d/9kcy-zwvn](https://dev.socrata.com/foundry/data.nasa.gov/q8u9-7uq7)

---

## Simple Filters

<code>
/resource/q8u9-7uq7.json?<span class="toy-store-blue">country</span>=<span class="golden">USA</span>
</code>

<pre><code data-trim contenteditable class="javascript">
[ {
  "country": "USA",
  "crew": "Ed White",
  "date": "1965-06-03T00:00:00.000",
  "duration": "0:36",
  "eva": "1",
  "purpose": "First U.S. EVA. Used HHMU and took  photos.  Gas flow cooling of 25ft umbilical overwhelmed by vehicle ingress work and helmet fogged.  Lost overglove.  Jettisoned thermal gloves and helmet sun visor",
  "vehicle": "Gemini IV"
}, ... ]
</code></pre>

---

## SoQL Queries

<code>
/resource/q8u9-7uq7.json?<br/>
<span class="toy-store-blue">$where</span>=<span class="golden">vehicle LIKE 'Apollo %'</span>
</code>

<small style="padding-top: 5em">For more details see <a href="http://dev.socrata.com">dev.socrata.com</a></small>

---

## SoQL Aggregation

<code>
/resource/q8u9-7uq7.json?<br/>
<span class="toy-store-blue">$group</span>=<span class="golden">date_trunc_y(date), country</span>
&<span class="toy-store-blue">$select</span>=<span class="golden">date_trunc_y(date) AS year, country, count(&#42;)</span>
</code>

<small style="padding-top: 5em">For more details see <a href="http://dev.socrata.com">dev.socrata.com</a></small>

---

![Fullscreen](/presentations/img/great_lakes.jpg)

## GeoJSON!!!

<code>
/resource/y77d-th95.geojson<br/>
</code>

<small style="padding-top: 5em"><a href="https://dev.socrata.com/foundry/data.nasa.gov/y77d-th95">* Meteorite Landings</a></small>

---

## Paging Through Data

<code contenteditable>
/resource/q8u9-7uq7.json?<br/>
<span class="toy-store-blue">$limit</span>=<span class="golden">50</span><br/>
&amp;<span class="toy-store-blue">$offset</span>=<span class="golden">100</span>
</code>

---

## Application Tokens

1. Register at [http://dev.socrata.com/register](http://dev.socrata.com/register)
2. Include as:
  - _`X-App-Token: $token`_ HTTP Header or ... 
  - The _`$$app_token=$token`_ URL parameter
3. Profit!!! (from more API requests)

===

![Fullscreen](/presentations/img/booster.jpg)

# Need a _Boost?_

---

## _Sample_ _Apps!_

---

# I _❤_ Big Bolides!

<https://chrismetcalf.github.io/i-like-big-bolides/>
<https://github.com/chrismetcalf/i-like-big-bolides>

---

# (Not the Game) Asteroids

<https://chrismetcalf.github.io/not-the-game-asteroids/>
<https://github.com/chrismetcalf/not-the-game-asteroids>

===

# Help!

---

## Developer Portal

# [dev.socrata.com](http://dev.socrata.com)

<div class="footnote">Community powered! Learn how to <a href="http://dev.socrata.com/contributing.html">contribute</a>.</div>

---

## Getting Help

![Getting Help](/presentations/img/live-support.gif)

- Track me down in person!
- IRC: [chat.freenode.net/#socrata-soda](irc://chat.freenode.net/#socrata-soda)
- Stack Overflow: [soda](http://stackoverflow.com/questions/tagged/soda) or [socrata](http://stackoverflow.com/questions/tagged/socrata)

===

![Fullscreen](/presentations/img/work_tounge.gif)

## One more thing...

<h1 class="fragment" data-fragment-index="0">We're hiring!</h1>

<h2 class="fragment" data-fragment-index="1"><a href="http://careers.socrata.com">careers.socrata.com</a></h2>

===

![Fullscreen](/presentations/img/portal.jpg)

# _Chris_ _Metcalf_
## chris.metcalf@socrata.com
<h3><img src="/presentations/img/twitter.png" alt="twitter" style="vertical-align: middle" /> chrismetcalf</h3>

<http://bit.ly/space-apps-socrata>
[Background Images](https://www.dropbox.com/sh/7kodenjn6x3slw9/AADr7VBo_RFX0ewpgZauZvZLa?dl=0) (Credit to NASA)

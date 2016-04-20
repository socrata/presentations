---
elags:
  show_migration: true
layout: slides
title: UW Tacoma ADA Hackathon
---

![Socrata](/presentations/img/luvguv_thumb.png)

## _Open Data APIs_ with _Socrata_

===

# Who the _heck_ are _you_?

--- 

![Hey Ladies!](/presentations/img/metcalf.jpg)

<h3><img src="/presentations/img/twitter.png" alt="twitter" style="vertical-align: middle" /> chrismetcalf</h3>

---

![Socrata](/presentations/img/hello_world.png)

---

![Fullscreen](/presentations/img/at_table.jpg)

## We build _software_ to make data _more useful_ to _more people_

<!-- https://www.flickr.com/photos/hyku/2497370097 -->
--- 

![Fullscreen](/presentations/img/city.jpg)

<h2>We believe that _greater access_ to _public data_ makes cities _better places to live_</h2>

---

![Fullscreen](/presentations/img/city_hall.jpg)

<h2>We help _governments_ share their _public data_ with _civic developers_</h2>

===

# What is _Civic_ _Hacking_?

---

## _civic hacker_ (n)

_One who collaborates with others_ to create, build, and invent open source solutions using publicly-released data, code and technology _to solve social, economic, and environmental challenges_ relevant to their _neighborhood, city, state, or country_.

---

## _Hacking_ drives _civic innovation_

![Innovate](/presentations/img/innovate.png)

---

## _Help_ your _community_!

![Help!](https://media2.giphy.com/media/IvlKeD6BEA1hu/200.gif)

---

## _Network_ and _have fun_!

![#openbeers](/presentations/img/openbeers.jpg)


===

# The _Socrata_ _Open Data APIs_

![SODA](/presentations/img/snuffleupadata.png)

---

## Finding Data

### [data.cityoftacoma.org](https://data.cityoftacoma.org)
### [bit.ly/uw-tac](http://bit.ly/uw-tac)
### [opendatanetwork.com](http://www.opendatanetwork.com)

---

## Example: _"Pedestrian Crossing Improvements"_

[data.cityoftacoma.org/d/p64f-xb62](https://dev.socrata.com/foundry/data.cityoftacoma.org/p64f-xb62)

---

## Simple Filters

<code>
/resource/p64f-xb62.json?<span class="toy-store-blue">completed</span>=<span class="golden">Completed</span>
</code>

<pre><code data-trim contenteditable class="javascript">
[ {
  "address": "Tacoma Ave.& S. 1st & St. Helens",
  "completed": "Completed",
  "district": "Downtown",
  "location": {
  "type": "Point",
    "coordinates": [
      -122.446336,
      47.263108
    ]
  },
  "location_address": "Tacoma Ave.& S. 1st & St. Helens",
  "location_city": "Tacoma",
  "location_state": "WA",
  "notes": "Phase 1",
  "projects": "Rebuild 4 corners, stripe 2 legs, bulbout"
}, ... ]
</code></pre>

---

## SoQL Queries

<code>
/resource/p64f-xb62.json?<br/>
<span class="toy-store-blue">$where</span>=<span class="golden">within_circle(location, 47.2366694,-122.4292186, 500)</span>
&<span class="toy-store-blue">$select</span>=<span class="golden">count(&#42;)</span>
</code>

<pre><code data-trim contenteditable class="javascript">
[ {
  "count": "3"
} ]
</code></pre>

<small style="padding-top: 5em">For more details see <a href="http://dev.socrata.com">dev.socrata.com</a></small>

---

## GeoJSON!!!

<code>
/resource/p64f-xb62.geojson<br/>
</code>

![Socrata](/presentations/img/luvguv_thumb.png)

<small style="padding-top: 5em"><a href="https://dev.socrata.com/docs/formats/geojson.html">dev.socrata.com/docs/formats/geojson.html</a></small>

---

## Paging Through Data

<code contenteditable>
/resource/p64f-xb62.json?<br/>
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

# Help!

---

## Developer Portal

# [dev.socrata.com](http://dev.socrata.com)

<div class="footnote">Community powered! Learn how to <a href="http://dev.socrata.com/contributing.html">contribute</a>.</div>

---

## Getting Help

![Getting Help](/presentations/img/live-support.gif)

- Track me down in person or in _#socrata_!
- IRC: [chat.freenode.net/#socrata-soda](irc://chat.freenode.net/#socrata-soda)
- Stack Overflow: [soda](http://stackoverflow.com/questions/tagged/soda) or [socrata](http://stackoverflow.com/questions/tagged/socrata)

===

![Fullscreen](/presentations/img/work_tounge.gif)

## One more thing...

<h1 class="fragment" data-fragment-index="0">We're hiring!</h1>

<h2 class="fragment" data-fragment-index="1"><a href="http://careers.socrata.com">careers.socrata.com</a></h2>

===

# _Chris_ _Metcalf_
## chris.metcalf@socrata.com
<h3><img src="/presentations/img/twitter.png" alt="twitter" style="vertical-align: middle" /> chrismetcalf</h3>

<http://bit.ly/gocode-socrata>

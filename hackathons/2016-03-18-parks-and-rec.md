---
layout: slides
title: Civic Hacking at AT&T Parks & Recreation Hackathon
---

![Happy!](https://media.giphy.com/media/LSNqpYqGRqwrS/giphy.gif)

## _Civic Hacking_ with _Socrata_

===

![Literally](https://media3.giphy.com/media/LkcIVUmf1qoUM/200.gif)

===

# Who the _heck_ are _you_?

--- 

![I was born ready](https://media1.giphy.com/media/t3QBygPkz1zJC/200.gif)

<h3><img src="/presentations/img/twitter.png" alt="twitter" style="vertical-align: middle" /> chrismetcalf</h3>

---

![Socrata](/presentations/img/hello_world.png)

---

![Fullscreen](https://media3.giphy.com/media/HteV6g0QTNxp6/200.gif)

## We build _software_ to make data _more useful_ to _more people_

<!-- https://www.flickr.com/photos/hyku/2497370097 -->
--- 

![Fullscreen](https://media1.giphy.com/media/YxffWg4x40kY8/200.gif)

<h2>We believe that _greater access_ to _public data_ makes cities _better places to live_</h2>

---

![Fullscreen](https://media0.giphy.com/media/UmBdALbYTmCJ2/200.gif)

<h2>We make it _easy_ for _governments_ to share their public data with _civic hackers_</h2>

===

## _civic hacker_ _(n)_

_One who collaborates with others_ to create, build, and invent open source solutions using publicly-released data, code and technology _to solve social, economic, and environmental challenges_ relevant to their _neighborhood, city, state, or country_.

![Help!](https://media.giphy.com/media/DHguk0osZWB7W/giphy.gif)

===

# The _Socrata_ _Open Data APIs_

![SODA](/presentations/img/snuffleupadata.png)

---

## Finding _Data_

### [data.seattle.gov](http://data.seattle.gov)
### [opendatanetwork.com](http://www.opendatanetwork.com)
### [bit.ly/spr-data](http://bit.ly/spr-data)

---

## _Note:_ Do not fear the downtime notice!

<div class="fragment" data-fragment-index="0"><img src="https://media.giphy.com/media/gh5fXGdKC4Tqo/giphy.gif" alt="thank you, alcohol!" /></div>

---

## _Example:_ Dog Off Leash Areas

[data.seattle.gov/dataset/.../ybmn-w2mc](https://dev.socrata.com/foundry/data.seattle.gov/ybmn-w2mc)

<div class="fragment" data-fragment-index="0"><img src="/presentations/img/maggie.gif" alt="maggie" /></div>

---

## Simple Filters

<code>
/resource/ybmn-w2mc.json?<span class="toy-store-blue">name</span>=<span class="golden">Northacres Park</span>
</code>

<pre><code data-trim contenteditable class="javascript">
[ {
  "gis_edt_dt" : "1899-11-30T00 : 00 : 00.000Z",
  "id" : "8",
  "latitude" : "47.72177511",
  "longitude" : "-122.32612425",
  "name" : "Northacres Park", 
  "pmaid" : "361",
  "point_x" : "1273006.39422648",
  "point_y" : "266844.75936922",
  "the_geom" : {
    "type" : "Point",
    "coordinates" : [-122.32612424565166, 47.721775107212935]
  }
} ]
</code></pre>

---

## SoQL Queries

<code>
/resource/ybmn-w2mc.json?<br/> <span class="toy-store-blue">$where</span>=<span class="golden">within_polygon(<span class="blushing-salmon">the_geom</span>, <span class="blushing-salmon">'POLYGON (...)'</span>)</span>
</code>

![Check Mate](https://media2.giphy.com/media/dF73dMfhaFwiI/200.gif)

<small style="padding-top: 5em">For more details see <a href="http://dev.socrata.com">dev.socrata.com</a></small>

---

## Application Tokens

1. Register at [http://dev.socrata.com/register](http://dev.socrata.com/register)
2. Include as:
  - _`X-App-Token: $token`_ HTTP Header or ... 
  - The _`$$app_token=$token`_ URL parameter
3. Profit!!! (from more API requests)

![Swag](https://media3.giphy.com/media/EXmE33UEtfuQo/200.gif)

===

# Help!

![What the F?](https://media.giphy.com/media/12m9NVAqhM7b6U/giphy.gif)

---

## Developer Portal

# [dev.socrata.com](http://dev.socrata.com)

![Keyboard](https://media0.giphy.com/media/UmV8I4KucdZJe/200.gif)

<div class="footnote">Community powered! Learn how to <a href="http://dev.socrata.com/contributing.html">contribute</a>.</div>

---

## Getting Help

![Getting Help](https://media2.giphy.com/media/dIR9ravWuMAr6/200.gif)

- Track me down!
- IRC: [chat.freenode.net/#socrata-soda](irc://chat.freenode.net/#socrata-soda)
- Stack Overflow: [soda](http://stackoverflow.com/questions/tagged/soda) or [socrata](http://stackoverflow.com/questions/tagged/socrata)

===

## Join us at _Open_ _Seattle_

![Open Seattle](/presentations/img/openseattle.png)

[openseattle.org](http://www.openseattle.org)

===

# _Chris_ _Metcalf_
## chris.metcalf@socrata.com
<h3><img src="/presentations/img/twitter.png" alt="twitter" style="vertical-align: middle" /> chrismetcalf</h3>

![Brush Off](https://media4.giphy.com/media/iwvuPyfi7z14I/200.gif)

<http://bit.ly/spr-socrata>

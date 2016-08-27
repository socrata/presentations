---
layout: slides
title: Civic Hacking @ Hack for Healthcare
---

![Hello!](/presentations/img/hello_world_200.png)

## _Civic Hacking_ with _Socrata_

===

# Who the _heck_ are _you_?

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

<h2>We make it _easy_ for _governments_ to share their public data with _civic hackers_</h2>

===

## _civic hacker_ _(n)_

_One who collaborates with others_ to create, build, and invent open source solutions using publicly-released data, code and technology _to solve social, economic, and environmental challenges_ relevant to their _neighborhood, city, state, or country_.

===

# The _Socrata_ _Open Data APIs_

![SODA](/presentations/img/snuffleupadata.png)

---

## Finding _Data_

### [data.cms.gov](http://data.cms.gov)
### [data.medicare.gov](http://data.medicare.gov)
### [opendatanetwork.com](http://www.opendatanetwork.com)

---

## _Example:_ Medicare.gov Nursing Home Ratings

[dev.socrata.com/foundry/data.medicare.gov/4pq5-n9py](https://dev.socrata.com/foundry/data.medicare.gov/4pq5-n9py)

---

## Simple Filters

<code>
/resource/4pq5-n9py.json?<span class="toy-store-blue">provider_city</span>=<span class="golden">SEATTLE</span>
</code>

<pre><code data-trim contenteditable class="javascript">
[ {
  ...
  "provider_city": "SEATTLE",
  "provider_county_name": "King",
  "provider_name": "BAYVIEW MANOR",
  "staffing_rating": "4",
  "total_amount_of_fines_in_dollars": "3640",
  ...
}, ... ]
</code></pre>

---

## SoQL Queries

<code>
/resource/4pq5-n9py.json?<br/> <span class="toy-store-blue">$where</span>=<span class="golden">total_amount_of_fines_in_dollars</span> > <span class="blushing-salmon">10000</span></span>
</code>

<small style="padding-top: 5em">For more details see <a href="http://dev.socrata.com">dev.socrata.com</a></small>

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

## Libraries &amp; SDKs

<img src="/presentations/img/socrata-heart-opensource.png"/>

### [dev.socrata.com/libraries/](http://dev.socrata.com/libraries/)

<div class="footnote"><a href="http://socrata.github.io/soda-ruby/">Ruby</a>, <a href="https://github.com/socrata/soda-scala">Scala</a>, <a href="http://socrata.github.io/soda-java/">Java</a>, <a href="https://github.com/socrata/soda-ios-sdk">ObjectiveC</a>, <a href="https://github.com/Chicago/RSocrata">R</a>, <a href="https://github.com/socrata/soda-swift">Swift</a>, etc.</div>

--- 

## Getting Help

![Getting Help](/presentations/img/live-support.gif)

- Track me down!
- IRC: [dev.socrata.com/irc.html](http://dev.socrata.com/irc.html)
- Stack Overflow: [soda](http://stackoverflow.com/questions/tagged/soda) or [socrata](http://stackoverflow.com/questions/tagged/socrata)

===

## Join us at _Open_ _Seattle_

![Open Seattle](/presentations/img/openseattle.png)

[openseattle.org](http://www.openseattle.org)

===

# _Thanks!_

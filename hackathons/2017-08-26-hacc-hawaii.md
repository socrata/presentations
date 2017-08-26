---
layout: slides
title: Civic Hacking @ HACC Hawaii
---

![HACC!](/presentations/img/snuffie_hacc_small.png)

## _Civic Hacking_ with _Socrata_

===

# Who am I_?_

---

![baby austin](http://i.imgur.com/zvDgRJu.jpg) <!-- .element width="40%" -->

<h3><img src="/presentations/img/twitter.png" alt="twitter" style="vertical-align: middle" /> avaleske</h3>

---

![Fullscreen](/presentations/img/product-interactivity.jpg)

## We build _software_ and _processes_ to make data _more useful_ to _more people_

<!-- https://www.flickr.com/photos/hyku/2497370097 -->
--- 

![Fullscreen](/presentations/img/honolulu-skyline.jpg)

<h2>We believe that _greater access_ to _public data_ makes cities and states _better places to live_</h2>

---

![Fullscreen](/presentations/img/hawaii-capitol-building.jpg)

<h2>We make it _easy_ for _governments_ to share their public data with _civic hackers_</h2>

---

![Aloha](/presentations/img/aloha.png)

===

## _civic hacker_ _(n)_

_One who collaborates with others_ to create, build, and invent open source solutions using publicly-released data, code and technology _to solve social, economic, and environmental challenges_ relevant to their _neighborhood, city, state, or country_.

---

## _Civic hacking_ drives <br > _civic innovation_

![Innovate](/presentations/img/innovate.png)

---

## _Help_ your _community_!

![Help!](https://media2.giphy.com/media/IvlKeD6BEA1hu/200.gif)

---

## _Network_ and _have fun_!

![networking!](https://media.giphy.com/media/2Us6XW8L7zNnO/giphy.gif ) <!-- .element width="50%" -->

===

# The _Hawaii_ 
# _Open Data APIs_

---

## _Finding_ _Data_

### [data.hawaii.gov](http://data.hawaii.gov)
### [opendatanetwork.com](http://www.opendatanetwork.com)
<!-- ### [github.com/HACC2016](https://github.com/HACC2016) -->

---

### In the _Data Catalog_

![Catalog](/presentations/img/catalog_api.png)

---

### Accessing the _APIs_

---

### From the _Primer page_

![Primer](/presentations/img/primer.png)

---

### In the _Dataset View_

![Sidebar](http://dev.socrata.com/img/sidebar.gif)

---

## In _Data Lens_

![Data Lens](http://dev.socrata.com/img/data_lens.png)

---

## _Example:_ Hawaii Farmers Markets

[data.hawaii.gov/d/b2y9-ab7v](https://data.hawaii.gov/d/b2y9-ab7v)

---

## Simple Filters

<code>
/resource/b2y9-ab7v.json?<span class="toy-store-blue">island</span>=<span class="golden">Oahu</span>
</code>

<pre><code data-trim contenteditable class="javascript">
[ {
  "contact": "Paul Richard",
  "farmer_s_market": "Country Market & Craft Fair at ...",
  "island": "Oahu",
  "location_1_location": "1330 Kalanianaole Hwy.",
  "location_1_state": "HI",
  "location_info": "Waimanalo Homestead Community Center",
  "phone": "(808) 259-8611, Cell: (808) 284-2575",
  "sunday": "X",
  "time": "9:00 AM to 4:00PM"
}, ... ]
</code></pre>

---

## SoQL Queries

<code>
/resource/b2y9-ab7v.json?<br/>
<span class="toy-store-blue">$select</span>=<span class="golden">location_info, farmer_s_market <span class="toy-store-blue">AS</span> name, time</span></br>
&amp;<span class="toy-store-blue">$where</span>=<span class="golden">saturday='X' <span class="toy-store-blue">AND</span> within_circle(location_1, 21.2969, -157.8148, 3000)</span>
</code>

<small style="padding-top: 5em">For more details see <a href="http://dev.socrata.com">dev.socrata.com</a></small>

---

## SoQL Queries Cont. (Paging)

<code>
/resource/b2y9-ab7v.json?<br/>
<span class="toy-store-blue">$limit</span>=<span class="golden">50</span></br>
&amp;<span class="toy-store-blue">$offset</span>=<span class="golden">200</span><br/>
&amp;<span class="toy-store-blue">$order</span>=<span class="golden">:id</span>
</code>

<small style="padding-top: 5em">For more details see <a href="http://dev.socrata.com">dev.socrata.com</a></small>

---

## Application Tokens

1. Register at [http://dev.socrata.com/register](http://dev.socrata.com/register)
2. Include as:
  - _`X-App-Token: $token`_ HTTP Header or ... 
  - The _`$$app_token`_`=`_`$token`_ URL parameter
3. Yay not getting rate limited!

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

![You got this!](/presentations/img/thumbs-up.gif) <!-- .element height="100%" -->

===

# _Thanks!_

===

<!-- ## <http://bit.ly/hacc-socrata> -->

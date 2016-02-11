---
layout: slides
title: Civic Hacking @ CodeFellows
---

![Do I amuse you?](https://media2.giphy.com/media/EAXv7qvimZXFK/200.gif)

## _Civic Hacking_ with _Socrata_

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

<h2>We make it _easy_ for _governments_ to share their public data with _civic developers_</h2>

===

# What is _Civic_ _Hacking_?

---

## _civic hacker_ _(n)_

_One who collaborates with others_ to create, build, and invent open source solutions using publicly-released data, code and technology _to solve social, economic, and environmental challenges_ relevant to their _neighborhood, city, state, or country_.

===

# Why _civic_ _hacking_?

![Civic Snuffie](http://snuffleupadata.com/img/brigade_thumb.png)

---

## _Hacking_ drives _civic innovation_

![Innovate](/presentations/img/innovate.png)

---

## _Help_ your _community_!

![Help!](https://media2.giphy.com/media/IvlKeD6BEA1hu/200.gif)

---

## _Have_ _fun_!

![#openbeers](/presentations/img/openbeers.jpg)

===

# What have _Civic_ _Hackers_ built?

---

![Fullscreen](/presentations/img/hey_duwamish.png)

[heyduwamish.org](http://heyduwamish.org/)

---

![WhatsMyWage](/presentations/img/whatsmywage.png)

[whatsmywage.org](http://whatsmywage.org/)
---

![Fullscreen](/presentations/img/sewardparkstories.png)

[sewardparkstories.org](http://sewardparkstories.org/)

===

# How can _you_ _help_?

---

## Join us at _Open_ _Seattle_

![Open Seattle](/presentations/img/openseattle.png)

[openseattle.org](http://www.openseattle.org)

---

## Participate in local _civic_ _hackathons_

---

## Build _civic projects_ for 
# _Code Fellows_ 

![Shinebox](https://media.giphy.com/media/EMnPN8y2iJsU8/giphy.gif)

===

# The _Socrata_ _Open Data APIs_

![SODA](/presentations/img/snuffleupadata.png)

---

## Finding _Data_

### [data.seattle.gov](http://data.seattle.gov)
### [data.kingcounty.gov](http://data.kingcounty.gov)
### [opendatanetwork.com](http://www.opendatanetwork.com)

---

## Example: Fremont Bridge Bike Counts

[data.seattle.gov/dataset/.../65db-xm6k](https://dev.socrata.com/foundry/data.seattle.gov/65db-xm6k)

---

## Simple Filters

<code>
/resource/65db-xm6k.json?<span class="toy-store-blue">date</span>=<span class="golden">2012-10-02T00:00:00</span>
</code>

<pre><code data-trim contenteditable class="javascript">
[ {
  "fremont_bridge_nb": "0",
  "fremont_bridge_sb": "0",
  "date": "2012-10-02T00:00:00"
} ]
</code></pre>

---

## SoQL Queries

<code>
/resource/65db-xm6k.json?<br/>
<span class="toy-store-blue">$where</span>=<span class="golden">date &gt; '2015-03-19' AND date <= '2015-03-20' </span>
</code>

<small style="padding-top: 5em">For more details see <a href="http://dev.socrata.com">dev.socrata.com</a></small>

---

## Aggregating Data

<code>
/resource/65db-xm6k.json?<br/>
<span class="toy-store-blue">$select</span>=<span class="golden">SUM(fremont_bridge_sb), SUM(fremont_bridge_nb)</span><br>
</code>

<pre><code data-trim contenteditable class="javascript">
[ {
  "sum_fremont_bridge_sb": "1141137",
  "sum_fremont_bridge_nb": "1072744"
} ]
</code></pre>

---

## Paging Through Data

<code contenteditable>
/resource/65db-xm6k.json?<br/>
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

- Visit us at Open Seattle!
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

![Big Shot](https://media0.giphy.com/media/maXkNBpOnqoak/200.gif)

<http://bit.ly/codefellows-socrata>


![Hello World](/presentations/img/hello_world_200.png)

## _Code_ for _Kenmore_

===

# Who the heck are you?

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

# The Socrata Open Data APIs

![SODA](/presentations/img/snuffleupadata.png)

---

## Finding Data

### [kenmorewa.data.socrata.com](http://kenmorewa.data.socrata.com)
### [bit.ly/code-for-kenmore](http://bit.ly/code-for-kenmore)

---

## In the Data Catalog

![API Sidebar](http://dev.socrata.com/img/sidebar.gif)

---

## In Data Lens

![Data Lens](http://dev.socrata.com/img/data_lens.png)

---

## Example: King County Property Parcels

[kenmorewa.data.socrata.com/.../.../yrp3-3hu8](https://kenmorewa.data.socrata.com/dataset/King-County-Parcels/yrp3-3hu8)

---

## Simple Filters

<code>
/resource/ydpf-78qt.json?<span class="toy-store-blue">lake_washington</span>=<span class="golden">1</span>
</code>

<pre><code data-trim contenteditable class="javascript">
[ {
    "access": "4",
    "accnt_num": "013000001506",
    "addr_full": "3515 NE 100TH ST",
    "addr_hn": "3515",
    "addr_num": "3515",
    "addr_pd": "NE",
    "addr_sn": "100TH",
    "addr_st": "ST",
    "lake_sammamish": "0",
    "lake_washington": "1",
    ...
}, ... ]
</code></pre>

---

## SoQL Queries

<code>
/resource/ydpf-78qt.json?
<span class="toy-store-blue">$where</span>=<span class="golden">within_circle(centroid, 47.76,-122.24, 1000)</span>
</code>

<small style="padding-top: 5em">For more details see <a href="http://dev.socrata.com">dev.socrata.com</a></small>

---

## Aggregating Data

<code>
/resource/ydpf-78qt.json?<br/>
<span class="toy-store-blue">$select</span>=<span class="golden">kctp_city, COUNT(*)</span><br>
<span class="toy-store-blue">&lake_washington</span>=<span class="golden">1</span><br>
<span class="toy-store-blue">&$group</span>=<span class="golden">kctp_city</span><br>
<span class="toy-store-blue">&$order</span>=<span class="golden">COUNT(*) DESC</span><br>
</code>

<pre class="fragment"><code data-trim contenteditable class="javascript">
[ {
  "count": "2303",
  "district_name": "SEATTLE"
}, {
  "count": "945",
  "district_name": "KIRKLAND"
},
..., {
  "count": "217",
  "district_name": "KENMORE"
}, ... ]
</code></pre>

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

- Track me down!
- IRC: [chat.freenode.net/#socrata-soda](irc://chat.freenode.net/#socrata-soda)
- Stack Overflow: [soda](http://stackoverflow.com/questions/tagged/soda) or [socrata](http://stackoverflow.com/questions/tagged/socrata)

===

![Fullscreen](/presentations/img/work_tounge.gif)

## One more thing...

<h1 class="fragment" data-fragment-index="0">We're hiring!</h1>

<h2 class="fragment" data-fragment-index="1"><a href="http://careers.socrata.com">careers.socrata.com</a></h2>

===

![Let's get this party started!](/presentations/img/lets_get_this_party_started.gif)

===

<img class="fullscreen-img" src="/presentations/img/team.jpg"/>

# Thanks!


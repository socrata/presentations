## Go Code Colorado

![Socrata](/presentations/img/snu_geek.png) ![Go Code Colorado](/presentations/img/gocode.png)

===

# Who the heck are you?

---

![Hey Ladies!](/presentations/img/metcalf.jpg)

<h3><img src="/presentations/img/twitter.png" alt="twitter" style="vertical-align: middle" /> chrismetcalf</h3>

--- 

<h1><span class="toy-store-blue">Data</span> and <span class="blushing-salmon">APIs</span></h1>

---

![Socrata](/presentations/img/socrata-white-large.png)

--- 

<img class="fullscreen-img" src="/presentations/img/denver.jpg" />

<h2>We believe that <span class="toy-store-blue">greater access</span> to <span class="blushing-salmon">civic data</span> can make the world a <span class="golden">better place to live</span></h2>

<!-- https://www.flickr.com/photos/respres/2344689317 -->

---

<img class="fullscreen-img" src="/presentations/img/at_table.jpg" />

<h2>We build <span class="toy-store-blue">software</span> to make data <span class="blushing-salmon">more useful</span> to <span class="golden">more people</span>.</h2>

<!-- https://www.flickr.com/photos/hyku/2497370097 -->

---

<img class="fullscreen-img" src="/presentations/img/city_hall.jpg" />

<h2>We make it <span class="toy-store-blue">easy</span> for <span class="blushing-salmon">governments</span> to share their public data with <span class="golden">civic developers</span></h2>

===

# The Socrata Open Data APIs

![SODA](/presentations/img/snuffleupadata.png)

---

## Finding Data

### [gocode.colorado.gov/data/](http://gocode.colorado.gov/data/)
### [data.colorado.gov](https://data.colorado.gov/)

---

### In the Data Catalog

![API Sidebar](http://dev.socrata.com/img/sidebar.gif)

---

## Example: Colorado Bike and Pedestrian Count Data

[data.colorado.gov/.../.../q2qp-xhnj](https://data.colorado.gov/Transportation/Colorado-Bike-and-Pedestrian-Count-Data/q2qp-xhnj)

---

## Simple Filters

<code>
/resource/q2qp-xhnj.json?<span class="toy-store-blue">county</span>=<span class="golden">Denver</span>
</code>

<pre><code data-trim contenteditable class="javascript">
[ {
  "county": "Denver",
  "datacollected": "BIKE & PEDESTRIAN",
  "datadate": "2010-07-29T00:00:00",
  "dayofweek": "5",
  "direction": "North",
  "hr00": "26",
  ...
  "stationid": "B00001",
  "year": "2010",
  "location_1": {
    "longitude": "-105.01009",
    "latitude": "39.75382"
  }
}, ... ]
</code></pre>

---

## SoQL Queries

<code>
/resource/q2qp-xhnj.json?<br/>
<span class="toy-store-blue">$where</span>=<span class="golden">within_circle(location_1, 39.753, -105.010, 1000)</span>
</code>

<small style="padding-top: 5em">For more details see <a href="http://dev.socrata.com">dev.socrata.com</a></small>

---

## Aggregating Data

<code>
/resource/q2qp-xhnj.json?<br/>
<span class="toy-store-blue">$select</span>=<span class="golden">DATE_TRUNC_YM(datadate) AS month, SUM(hr08) AS total</span><br>
&amp;<span class="toy-store-blue">county</span>=<span class="golden">Denver</span><br>
&amp;<span class="toy-store-blue">$group</span>=<span class="golden">month</span><br>
</code>

<pre><code data-trim contenteditable class="javascript">
[ {
"total": "1672",
"month": "2013-10-01T00:00:00"
}, ... ]
</code></pre>

---

## Paging Through Data

<code contenteditable>
/resource/q2qp-xhnj.json?<br/>
<span class="toy-store-blue">$limit</span>=<span class="golden">50</span><br/>
&amp;<span class="toy-store-blue">$offset</span>=<span class="golden">100</span>
</code>

---

## Application Tokens

1. Register at [http://dev.socrata.com/register](http://dev.socrata.com/register)
2. Include as:
  - <code><span class="toy-store-blue">X-App-Token</span>: <span class="golden">$token</span></code> HTTP Header or ... 
  - The <code><span class="toy-store-blue">$$app_token</span>=<span class="golden">$token</span></code> URL parameter
3. Profit!!! (from more API requests)

===

# Help!

---

## Developer Portal

# [dev.socrata.com](http://dev.socrata.com)

<div class="footnote">Community powered! Learn how to <a href="http://dev.socrata.com/contributing.html">contribute</a>.</div>

---

## Libraries &amp; SDKs

<img src="../../img/socrata-heart-opensource.png"/>

### [dev.socrata.com/libraries/](http://dev.socrata.com/libraries/)

<div class="footnote"><a href="http://socrata.github.io/soda-ruby/">Ruby</a>, <a href="https://github.com/socrata/soda-scala">Scala</a>, <a href="http://socrata.github.io/soda-java/">Java</a>, <a href="https://github.com/socrata/soda-ios-sdk">ObjectiveC</a>, <a href="https://github.com/Chicago/RSocrata">R</a>, <a href="https://github.com/socrata/soda-swift">Swift</a>, etc.</div>

--- 

## Questions or Issues?

![Getting Help](/presentations/img/live-support.gif)

- Chase me down!
- IRC: [chat.freenode.net/#socrata-soda](irc://chat.freenode.net/#socrata-soda)
- Stack Overflow: [soda](http://stackoverflow.com/questions/tagged/soda) or [socrata](http://stackoverflow.com/questions/tagged/socrata)

===

![Socrata Hearts Gov](/presentations/img/snuf-luv.png)

[thank-a-govie.com](http://thank-a-govie.com)

===

<img class="fullscreen-img" src="/presentations/img/work_tounge.gif" />

## One more thing...

<h1 class="fragment" data-fragment-index="0">We're hiring!</h1>

<h2 class="fragment" data-fragment-index="1"><a href="http://www.socrata.com/jobs">www.socrata.com/jobs</a></h2>

===

![Let's get this party started!](/presentations/img/lets_get_this_party_started.gif)

===

<img class="fullscreen-img" src="/presentations/img/team.jpg"/>

# Thanks!


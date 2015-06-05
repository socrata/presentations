## _DiscoTech_ _Seattle_
### Introduction to the SODA APIs

===

# Who the heck are you?


--- 
![Hey Ladies!](/presentations/img/metcalf.jpg)

<h3><img src="/presentations/img/twitter.png" alt="twitter" style="vertical-align: middle" /> chrismetcalf</h3>

---

![Socrata](/presentations/img/socrata-white-medium.png)

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

### [data.seattle.gov](https://data.seattle.gov/)
### [data.wa.gov](https://data.wa.gov/)
### [data.kingcounty.gov](https://data.kingcounty.gov/)
### [nwdata.org](http://nwdata.org)

---

## In the Data Catalog

![API Sidebar](http://dev.socrata.com/img/sidebar.gif)

---

## In Data Lens

![Data Lens](http://dev.socrata.com/img/data_lens.png)

---

## Example: Fremont Bridge Bike Counts

[data.seattle.gov/dataset/.../65db-xm6k](https://data.seattle.gov/d/65db-xm6k)

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

## Libraries &amp; SDKs

<img src="../../img/socrata-heart-opensource.png"/>

### [dev.socrata.com/libraries/](http://dev.socrata.com/libraries/)

<div class="footnote"><a href="http://socrata.github.io/soda-ruby/">Ruby</a>, <a href="https://github.com/socrata/soda-scala">Scala</a>, <a href="http://socrata.github.io/soda-java/">Java</a>, <a href="https://github.com/socrata/soda-ios-sdk">ObjectiveC</a>, <a href="https://github.com/Chicago/RSocrata">R</a>, <a href="https://github.com/socrata/soda-swift">Swift</a>, etc.</div>

--- 

## Getting Help

![Getting Help](/presentations/img/live-support.gif)

- Track me down!
- IRC: [chat.freenode.net/#socrata-soda](irc://chat.freenode.net/#socrata-soda)
- Stack Overflow: [soda](http://stackoverflow.com/questions/tagged/soda) or [socrata](http://stackoverflow.com/questions/tagged/socrata)

===

![Socrata Hearts Gov](/presentations/img/snuf-luv.png)

[thank-a-govie.com](http://thank-a-govie.com)

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


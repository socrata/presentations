## _NDoCH_ _Orlando_
### Introduction to the Socrata Open Data APIs

![Hello!](/presentations/img/hello_world_200.png)

===

# Who the heck are you?

![Socrata](/presentations/img/socrata-white-medium.png)

---

![Sells!](/presentations/img/civicagent.jpg)

<h3><img src="/presentations/img/twitter.png" alt="twitter" style="vertical-align: middle" /> CivicAgent</h3>

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

![SODA](../../img/can.png)

---

## Finding Data

### [www.codefororlando.com/data-sources/](http://www.codefororlando.com/data-sources/)
### [bit.ly/code-for-orlando](http://bit.ly/code-for-orlando)
### [www.opendatanetwork.com](http://www.opendatanetwork.com)

---

### In the Data Catalog

![API Sidebar](http://dev.socrata.com/img/sidebar.gif)

#### _* make sure you follow the prompt to the latest version of the dataset_

---

## In Data Lens

![Data Lens](http://dev.socrata.com/img/data_lens.png)

---

## Example: Orlando Historic Landmarks

#### [brigades.opendatanetwork.com/d/aq56-mwpv](https://brigades.opendatanetwork.com/dataset/Orlando-Historical-Landmarks/hzkr-id6u)

---

## Simple Filters

<code>
/resource/aq56-mwpv.json?<span class="toy-store-blue">type</span>=<span class="golden">Building</span>
</code>

<pre><code data-trim contenteditable class="javascript">
[ {
  "address": "125 N. Lucerne Circle East",
  "local": "1978-02-27T00:00:00.000",
  "location": {
    "type": "Point",
    "coordinates": [
      -81.37636357399998,
      28.53608693900003
    ]
  },
  "location_city": "Orlando",
  "location_location": "125 N. Lucerne Circle East",
  "location_state": "Florida",
  "name": "Hendry/Walker House",
  "type": "Building"
}, ... ]
</code></pre>

Also available in [_GeoJSON_](http://dev.socrata.com/docs/formats/geojson.html)!

---

## SoQL Queries

<code>
/resource/aq56-mwpv.json?<br/>
<span class="toy-store-blue">$where</span>=<span class="golden">nhrp &gt; '1970-01-01'</span>
</code>

<small style="padding-top: 5em">For more details see <a href="http://dev.socrata.com">dev.socrata.com</a></small>

---

## Aggregating Data

<code>
/resource/aq56-mwpv.json?<br/>
<span class="toy-store-blue">$select</span>=<span class="golden">type, min(kwh)</span><br>
&amp;<span class="toy-store-blue">$group</span>=<span class="golden">type</span>
</code>

<pre><code data-trim contenteditable class="javascript">
[ {
  "min_nhrp": "1976-04-22T00:00:00.000",
  "type": "Building"
}, ... ]
</code></pre>

---

## Paging Through Data

<code contenteditable>
/resource/aq56-mwpv.json?<br/>
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
- IRC: [dev.socrata.com/irc.html](http://dev.socrata.com/irc.html)
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


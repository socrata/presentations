
![Code for Greensboro](/presentations/img/code_for_greensboro.png)

## _Socrata_ _Open Data_ _APIs_

===

# Who the heck are you?

--- 

<img style="border-radius: 50%" src="/presentations/img/colinspikes.png" alt="Hey Ladies!" />

<h3><img src="/presentations/img/twitter.png" alt="twitter" style="vertical-align: middle" /> ColinSpikes</h3>

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

### [data.greensboro-nc.gov](https://data.greensboro-nc.gov/)
### [bit.ly/cfg-data](http://bit.ly/cfg-data)

---

## In the Data Catalog

![API Sidebar](http://dev.socrata.com/img/sidebar.gif)

---

## In Data Lens

![Data Lens](http://dev.socrata.com/img/data_lens.png)

---

## Example: King County Property Parcels

[data.greensboro-nc.gov/.../.../p7u9-tyw6](https://data.greensboro-nc.gov/Government/Fire-Incidents/p7u9-tyw6)

---

## Simple Filters

<code>
/resource/mvwv-8vni.json?<span class="toy-store-blue">heatsource</span>=<span class="golden">Candle</span>
</code>

<pre><code data-trim contenteditable class="javascript">
[ {
	"_911centerreceived": "2011-08-02T18:21:37.000",
	"alarmdate": "2011-08-02T18:22:17.000",
	"alarmhour": "18",
	"areaoffireorigin": "Bedroom - < 5 persons; included are jail or prison",
	"flamespreaddesc": "Confined to floor of origin",
	"fulladdress": {
		"type": "Point",
		"coordinates": [
			-75.142015,
			39.96066
		]
	},
	"fulladdress_address": "200 SPRING GARDEN ST",
	"heatsource": "Candle",
	...
}, ... ]
</code></pre>

---

## SoQL Queries

<code>
/resource/mvwv-8vni.json?
<span class="toy-store-blue">$where</span>=<span class="golden">within_circle(fulladdress, 36.0659852, -79.790335, 1000)</span>
</code>

<small style="padding-top: 5em">For more details see <a href="http://dev.socrata.com">dev.socrata.com</a></small>

---

## Aggregating Data

<code>
/resource/mvwv-8vni.json?<br/>
<span class="toy-store-blue">$select</span>=<span class="golden">propertyuse, count(*)</span><br>
<span class="toy-store-blue">&$group</span>=<span class="golden">propertyuse</span><br>
<span class="toy-store-blue">&$order</span>=<span class="golden">count(*) ASC</span><br>
<span class="toy-store-blue">&$limit</span>=<span class="golden">5</span><br>
</code>

<pre class="fragment"><code data-trim contenteditable class="javascript">
[ {
  "count": "1",
  "propertyuse":"819 - Livestock, poultry storage"
}, {
  "count":"1",
  "propertyuse":"655 - Crops or orchard"
}, {
  "count":"1",
  "propertyuse":"659 - Livestock production"
}, {
  "count":"2",
  "propertyuse":"632 - Flight control tower"
}, {
  "count":"2",
  "propertyuse":"816 - Grain elevator, silo"
} ]
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


---
layout: slides
title: Go Code Geo APIs
custom_css: /presentations/css/gocode.css
---

![Go Code](/presentations/img/gocode.png)

## _Go Code_ _Geo APIs_

===

## Developer Portal

# [dev.socrata.com](http://dev.socrata.com)

===

## Data Formats

- [Simple JSON](https://dev.socrata.com/docs/formats/json.html)
- [GeoJSON](https://dev.socrata.com/docs/formats/geojson.html)
- [CSV](https://dev.socrata.com/docs/formats/csv.html)

---

## Geospatial Datatypes

- [Point](https://dev.socrata.com/docs/datatypes/point.html#,)
- [Line](https://dev.socrata.com/docs/datatypes/location.html#,)
- [Polygon](https://dev.socrata.com/docs/datatypes/polygon.html#,)

---

# The _Socrata_ _Open Data APIs_

![SODA](/presentations/img/snuffleupadata.png)

---

## Finding Data

### [data.colorado.gov](http://data.colorado.gov)
### [bit.ly/co-geo](http://bit.ly/co-geo)
### [opendatanetwork.com](http://www.opendatanetwork.com)

---

## Example: _"Noxious Weeds"_

[data.colorado.gov/d/9mid-gqwm](https://dev.socrata.com/foundry/data.colorado.gov/9mid-gqwm)

---

## Simple Filters

<code>
/resource/9mid-gqwm.json?<span class="toy-store-blue">primary_wd</span>=<span class="golden">Purple Loosestrife</span>
</code>

<pre><code data-trim contenteditable class="javascript">
[ {
	"collector": "Michael Crumly",
	"date": "2014-08-26T00:00:00.000Z",
	"primary_wd": "Purple Loosestrife",
	"pw_contain": "Yes",
	"pw_cover": "0-20%",
	"road_type": "01",
	"route": "070A",
	"the_geom": {
		"type": "LineString",
		"coordinates": [
			[
				-108.77533369084509,
				39.163232300844996
			],
			...
		]
	}
}, ... ]
</code></pre>

---

## SoQL Queries

<code>
/resource/9mid-gqwm.json?<br/>
<span class="toy-store-blue">$where</span>=<span class="golden">intersects(the_geom, 'POLYGON((-105.084 40.578,-106.309 40.021,-108.575 39.075,-107.907 37.272,-104.842 38.825,-105.084 40.578))')</span>
&<span class="toy-store-blue">$select</span>=<span class="golden">count(&#42;)</span>
</code>

<pre><code data-trim contenteditable class="javascript">
[ {
  "count": "7088"
} ]
</code></pre>

<small style="padding-top: 5em">For more details see <a href="http://dev.socrata.com">dev.socrata.com</a></small>


---

## Paging Through Data

<code contenteditable>
/resource/9mid-gqwm.json?<br/>
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

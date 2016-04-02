---
layout: slides
title: Go Code Geo APIs
custom_css: /presentations/css/gocode.css
---

![Go Code](/presentations/img/snuffie_gocode.png)

## _Go Code_ _Geo APIs_

===

### Prerequisite: 
## _Go Code_ with _Socrata_

[bit.ly/go-code-soda](http://bit.ly/go-code-soda)

===

## Developer Portal

# [dev.socrata.com](http://dev.socrata.com)

===

## Example: _"Noxious Weeds"_

[data.colorado.gov/d/9mid-gqwm](https://dev.socrata.com/foundry/data.colorado.gov/9mid-gqwm)

===

## Geospatial Datatypes

- [Point](https://dev.socrata.com/docs/datatypes/point.html#,)
- [Line](https://dev.socrata.com/docs/datatypes/location.html#,)
- [Polygon](https://dev.socrata.com/docs/datatypes/polygon.html#,)

===

# Data Formats

---

## [Simple JSON](https://dev.socrata.com/docs/formats/json.html)

<code>/resource/9mid-gqwm.json</code>

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

## [GeoJSON](https://dev.socrata.com/docs/formats/geojson.html)

<code>/resource/9mid-gqwm.geojson</code>

<pre><code data-trim contenteditable class="javascript">
{
  "type": "FeatureCollection",
  "features": [
    {
      "type": "Feature",
      "geometry": {
        "type": "LineString",
        "coordinates": [
          [ -104.96678496651982, 39.823276663487604 ], ...
        ]
      },
      "properties": {
        "collector": "Michael Crumly",
        "second_wd": "Musk Thistle",
        "primary_wd": "Scotch Thistle",
        ...
      }
    }, ... ]
}
</code></pre>

---

## [CSV](https://dev.socrata.com/docs/formats/csv.html)

<code>/resource/9mid-gqwm.csv</code>

<pre><code data-trim contenteditable class="javascript">
"buff_dist","collector","comments","datafile","date","primary_wd","pw_contain","pw_cover","road_type","route","row_width","second_wd","shape_stle","sw_contain","sw_cover","the_geom","weedlistca","zone"
"20","Michael Crumly",,"14-06-16AL.ssf","2014-06-16T00:00:00.000Z","Scotch Thistle","Yes","0-20%","01","076A","40","Musk Thistle","524.459450738","Yes","10%","LINESTRING (-104.96678496651982 39.823276663487604, ...)","B","ZONE 1"
"20","Michael Crumly",,"14-06-16AL.ssf","2014-06-16T00:00:00.000Z","Downy Brome","Yes","20-40%","01","076A","40",,"63.3417158483",,,"LINESTRING (-104.95492540620815 39.824967348499165, ...)","C","ZONE 1"
"20","Michael Crumly",,"14-06-16AL.ssf","2014-06-16T00:00:00.000Z","Scotch Thistle","Yes","20-40%","01","076A","40",,"371.218007972",,,"LINESTRING (-104.93933194373872 39.832728146307886, ...)","B","ZONE 1"
</code></pre>


===

# _SoQL_ _Geospatial_ Queries

---

## Within Circle

<code>
/resource/9mid-gqwm.json?<br/>
<span class="toy-store-blue">$where</span>=<span class="golden">within_circle(the_geom, 40.578, -105.084, 1000)</span>
</code>

<https://dev.socrata.com/docs/functions/within_circle.html>

---

## Intersects

<code>
/resource/9mid-gqwm.json?<br/>
<span class="toy-store-blue">$where</span>=<span class="golden">intersects(the_geom, 'POLYGON((-105.084 40.578,-106.309 40.021,-108.575 39.075,-107.907 37.272,-104.842 38.825,-105.084 40.578))')</span>
</code>

<https://dev.socrata.com/docs/functions/intersects.html>

---

## Distance in Meters

<code>
/resource/9mid-gqwm.json?<br/>
<span class="toy-store-blue">primary_wd</span>=<span class="golden">Purple Loosestrife</span><br/>
&<span class="toy-store-blue">$order</span>=<span class="golden">distance_in_meters(the_geom, 'POINT (-107.937 37.272)')</span><br/>
&<span class="toy-store-blue">$select</span>=<span class="golden">&#42;, distance_in_meters(the_geom, 'POINT (-107.937 37.272)')</span>
</code>

<https://dev.socrata.com/docs/functions/distance_in_meters.html>

===

# _Tools_

---

## Leaflet

<http://leafletjs.com/>

```javascript
var weeds = new L.geoJson();
weeds.addTo(map);

$.ajax({
dataType: "json",
url: "https://data.colorado.gov/resource/9mid-gqwm.geojson?%24where=intersects%28the_geom%2C%20%27POLYGON%28%28-105.084228515625%2040.578889762381074%2C-106.3092041015625%2040.02169906387432%2C-108.57513427734375%2039.0750435370803%2C-107.90771484375%2037.27227699984947%2C-104.842529296875%2038.82513198716523%2C-105.084228515625%2040.578889762381074%29%29%27%29",
success: function(data) {
    $(data.features).each(function(key, data) {
        weeds.addData(data);
    });
}
}).error(function() {});
```

---

## CartoDB

<https://cartodb.com>

<iframe width="100%" height="520" frameborder="0" src="https://chrismetcalf.cartodb.com/viz/d1a219d2-f919-11e5-ad1e-0e98b61680bf/embed_map" allowfullscreen webkitallowfullscreen mozallowfullscreen oallowfullscreen msallowfullscreen></iframe>

---

## Google Maps

<https://dev.socrata.com/consumers/examples/google-maps.html>

![Google Maps](/presentations/img/google-maps.png)

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

# _Chris_ _Metcalf_
## chris.metcalf@socrata.com
<h3><img src="/presentations/img/twitter.png" alt="twitter" style="vertical-align: middle" /> chrismetcalf</h3>

<http://bit.ly/gocode-geo-socrata>


![Socail Justice](/presentations/img/social_justice.png)

## _Socrata_ _Open Data_ _APIs_

===

# Who the heck are you?

--- 

<img style="border-radius: 50%" src="/presentations/img/rene_miller.jpg" alt="Rene Miller" />

<h3><img src="/presentations/img/twitter.png" alt="twitter" style="vertical-align: middle" /> renmil3</h3>

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

### [bit.ly/sjh-data](http://bit.ly/sjh-data)
### [www.opendatanetwork.com](http://www.opendatanetwork.com/)
### [data.seattle.gov](https://data.seattle.gov/)

---

## In the Data Catalog

![API Sidebar](http://dev.socrata.com/img/sidebar.gif)

---

## In Data Lens

![Data Lens](http://dev.socrata.com/img/data_lens.png)

---

## Example: Seattle Crime Stats by Police Beat

[data.seattle.gov/.../.../3xqu-vnum](https://data.seattle.gov/Public-Safety/Seattle-Crime-Stats-by-Police-Precinct-2008-Presen/3xqu-vnum)

---

## Simple Filters

<code>
/resource/hapq-73pk.json?<span class="toy-store-blue">crime_type</span>=<span class="golden">Motor Vehicle Theft</span>
</code>

<pre><code data-trim contenteditable class="javascript">
[ {
  "crime_description": "Homicide",
  "crime_type": "Homicide",
  "police_beat": "B1",
  "precinct": "N",
  "report_date": "2008-01-01T00:00:00.000",
  "row_value_id": "1",
  "sector": "B",
  "stat_value": "0"
}], ... ]
</code></pre>

---

## SoQL Queries

<code>
/resource/hapq-73pk.json?
<span class="toy-store-blue">$where</span>=<span class="golden">crime_type IN('Assault', 'Homicide')</span>
</code>

<small style="padding-top: 5em">For more details see <a href="http://dev.socrata.com">dev.socrata.com</a></small>

---

## Aggregating Data

<code>
/resource/hapq-73pk.json?<br/>
<span class="toy-store-blue">$select</span>=<span class="golden">police_beat, COUNT(&#42;)</span><br>
<span class="toy-store-blue">&$group</span>=<span class="golden">police_beat</span><br>
<span class="toy-store-blue">&$order</span>=<span class="golden">COUNT(&#42;) DESC</span><br>
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


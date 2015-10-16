
![Hello World](/presentations/img/hello_world_200.png)

## _Meeting of the Minds_ 
## _Hackathon 2015_

===

# Who the heck are you?

--- 

![Hey!](/presentations/img/jessicacarsten.png)

<h3><img src="/presentations/img/twitter.png" alt="twitter" style="vertical-align: middle" /> JessicaCarsten</h3>

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

### [bit.ly/mom-data](http://bit.ly/mom-data)
### [bit.ly/mom-catalogs](http://bit.ly/mom-catalogs)

---

## In the Data Catalog

![API Sidebar](http://dev.socrata.com/img/sidebar.gif)

---

## In Data Lens

![Data Lens](http://dev.socrata.com/img/data_lens.png)

---

## Example: Seismic Ratings and Collapse Probabilities of California Hospitals

[chhs.data.ca.gov/../../3c5y-eq7m](https://chhs.data.ca.gov/Facilities-and-Services/Seismic-Ratings-and-Collapse-Probabilities-of-Cali/3c5y-eq7m)

---

## Simple Filters

<code>
/resource/ufd2-vhmf.json?<span class="toy-store-blue">building_status</span>=<span class="golden">Tunnel</span>
</code>

<pre><code data-trim contenteditable class="javascript">
[ {
  "_2007_hazus_score": "7.03",
  "building": "BLD-02476",
  "building_name": "D Wing",
  "building_status": "In Service",
  "count": "1",
  "county_code": "07 - Contra Costa",
  "facility": "10048",
  "facility_name": "John Muir Medical Center-Concord Campus",
  "location_1": {
    "type": "Point",
    "coordinates": [
      -122.03493,
      37.984047
    ]
  },
  "location_1_city": "Concord",
  "npc_rating": "2",
  "spc_rating": "1"
}, ... ]
</code></pre>

---

## SoQL Queries

<code>
/resource/ufd2-vhmf.json?<br/>
<span class="toy-store-blue">$order</span>=<span class="golden">spc_rating ASC, _2010_hazus_score DESC</span><br/>
<span class="toy-store-blue">&county_code</span>=<span class="golden">07 - Contra Costa</span>
</code>

<small style="padding-top: 5em">For more details see <a href="http://dev.socrata.com">dev.socrata.com</a></small>

---

## Application Tokens

1. Register at [http://dev.socrata.com/register](http://dev.socrata.com/register)
2. Include as:
  - _`X-App-Token: <token>`_ HTTP Header or ... 
  - The _`$$app_token=<token>`_ URL parameter
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


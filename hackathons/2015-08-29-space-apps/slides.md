
![SpaceApps](/presentations/img/spaceapps.png)

### Introduction to the _Socrata_ _APIs_

===

# Who the heck are you?

--- 

![Hey Ladies!](/presentations/img/metcalf.jpg)

<h3><img src="/presentations/img/twitter.png" alt="twitter" style="vertical-align: middle" /> chrismetcalf</h3>

---

![Socrata](/presentations/img/astro.png)

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

### [data.nasa.gov](https://data.nasa.gov/)
### [communities.socrata.com/catalogs/space-apps-next-gen-2015/](https://communities.socrata.com/catalogs/space-apps-next-gen-2015/)

---

## In the Data Catalog

![API Sidebar](http://dev.socrata.com/img/sidebar.gif)

---

## In Data Lens

![Data Lens](http://dev.socrata.com/img/data_lens.png)

---

## Example: US and Russian EVA Activities

[communities.socrata.com/.../.../nhhx-b7wh](https://communities.socrata.com/dataset/Extra-vehicular-Activity-EVA-US-And-Russia/nhhx-b7wh)

---

## Simple Filters

<code>
/resource/nhhx-b7wh.json?<span class="toy-store-blue">country</span>=<span class="golden">USA</span>
</code>

<pre><code data-trim contenteditable class="javascript">
[ {
  "country": "USA",
  "crew": "Ed White",
  "date": "1965-06-03T00:00:00.000",
  "duration_seconds": "36",
  "eva": "1",
  "purpose": "First U.S. EVA. Used HHMU and took  photos.  Gas flow cooling of 25ft umbilical overwhelmed by vehicle ingress work and helmet fogged.  Lost overglove.  Jettisoned thermal gloves and helmet sun visor",
  "vehicle": "Gemini IV"
}, ... ]
</code></pre>

---

## SoQL Queries

<code>
/resource/nhhx-b7wh.json?<br/>
<span class="toy-store-blue">$where</span>=<span class="golden">date &gt; '1966-01-01' AND date <= '1969-12-31' </span>
</code>

<small style="padding-top: 5em">For more details see <a href="http://dev.socrata.com">dev.socrata.com</a></small>

---

## Aggregating Data

<code>
/resource/nhhx-b7wh.json?<br/>
<span class="toy-store-blue">$select</span>=<span class="golden">country, SUM(duration_seconds)</span><br>
<span class="toy-store-blue">&$group</span>=<span class="golden">country</span><br>
</code>

<pre class="fragment"><code data-trim contenteditable class="javascript">
[ {
  "country": "Russia",
  "total": "37595"
}, {
  "country": "USA",
  "total": "81604"
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

## Sample App

[chrismetcalf.github.io/not-the-game-asteroids/](http://chrismetcalf.github.io/not-the-game-asteroids/)

<iframe src="http://chrismetcalf.github.io/not-the-game-asteroids/" width="800" height="500"></iframe>

--- 

## Getting Help

![Getting Help](/presentations/img/live-support.gif)

- Track me down!
- IRC: [chat.freenode.net/#socrata-soda](irc://chat.freenode.net/#socrata-soda)
- Stack Overflow: [soda](http://stackoverflow.com/questions/tagged/soda) or [socrata](http://stackoverflow.com/questions/tagged/socrata)

===

![Let's get this party started!](/presentations/img/lets_get_this_party_started.gif)

===

<img class="fullscreen-img" src="/presentations/img/team.jpg"/>

# Thanks!


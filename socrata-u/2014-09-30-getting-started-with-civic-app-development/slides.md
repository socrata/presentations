![Socrata](/presentations/img/socrata-white-medium.png)
## Getting Started with Civic Application Development 

===

# Who the heck are you?

![Socrata](/presentations/img/socrata-white.png)

---

<img class="fullscreen-img" src="/presentations/img/at_table.jpg" />

<h2>We build <span class="toy-store-blue">software</span> to make data <span class="blushing-salmon">more useful</span> to <span class="golden">more people</span>.</h2>

<!-- https://www.flickr.com/photos/hyku/2497370097 -->
--- 

<img class="fullscreen-img" src="/presentations/img/city.jpg" />

<h2>We believe that <span class="toy-store-blue">greater access</span> to <span class="blushing-salmon">public data</span> makes cities <span class="golden">better places to live</span></h2>

---

<img class="fullscreen-img" src="/presentations/img/city_hall.jpg" />

<h2>We make it <span class="toy-store-blue">easy</span> for <span class="blushing-salmon">governments</span> to share their public data with <span class="golden">civic developers</span></h2>

===

# What kind of data is out there?

---

<img class="fullscreen-img" src="./img/money.jpg" />

## Budgets & Spending

<!-- https://www.flickr.com/photos/e01/2334039881 -->

---

<img class="fullscreen-img" src="./img/police.jpg" />

## Policing & Crime

<!-- https://www.flickr.com/photos/e01/2334039881 -->

---

<img class="fullscreen-img" src="./img/health.jpg" />

## Health & Public Safety

<!-- https://www.flickr.com/photos/e01/2334039881 -->

---

<img class="fullscreen-img" src="./img/geo.jpg" />

## Transportation & Geospatial

<!-- https://www.flickr.com/photos/e01/233403988://www.flickr.com/photos/cdevers/8062581733 -->

===

# What can I build?

---

<img class="fullscreen-img" src="./img/citygram.png" />

---

<img class="fullscreen-img" src="./img/lookatcook.png" />

---

<img class="fullscreen-img" src="./img/yelp.png" />

===

# The Socrata Open Data APIs

![SODA](../../img/can.png)

---

## Finding Data

### [dev.socrata.com/data/](http://dev.socrata.com/data/)

---

## Getting Help

### [dev.socrata.com](http://dev.socrata.com)

---

## API Endpoints

Format:

<code>https://<span class="greenery">$domain</span>/resource/<span class="golden">$identifier</span>.<span class="blushing-salmon">$ext</span></code>

<div class="footnote">For more info: <a href="http://dev.socrata.com/docs/endpoints.html">dev.socrata.com/docs/endpoints.html</a></div>

---

### In the Data Catalog

![API Sidebar](img/sidebar.gif)

---

## Simple Filters

<code>
/resource/abcd-1234.json?<span class="toy-store-blue">source</span>=<span class="golden">ConEd</span>
</code>

<pre><code data-trim contenteditable class="javascript">
[ {
  "zipcode" : "10001",
  "source" : "ConEd",
  "location" : {
    "longitude" : "-73.99688630375988",
    "latitude" : "40.75025902143676",
  },
  "building_type" : "Commercial",
  "kwh" : "23328498"
}, ... ]
</code></pre>

<div class="footnote">For more info: <a href="http://dev.socrata.com/docs/filtering.html">dev.socrata.com/docs/filtering.html</a></div>

---

## SoQL Queries

<code>
/resource/abcd-1234.json?<br/>
<span class="toy-store-blue">$where</span>=<span class="golden">kwh &gt; 80000</span>
</code>

<div class="footnote">For more info: <a href="http://dev.socrata.com/docs/queries.html">dev.socrata.com/docs/queries.html</a></div>

---

## Geo Queries

<code>
/resource/abcd-1234.json?<br/>
<span class="toy-store-blue">$where</span>=<span class="golden">within_circle(location, 47.61, -122.32, 500)</span>
</code>

<div class="footnote">For more info: <a href="http://dev.socrata.com/docs/datatypes/location.html">dev.socrata.com/docs/datatypes/location.html</a></div>

---

## Paging Through Data

<code contenteditable>
/resource/abcd-1234.json?<br/>
<span class="toy-store-blue">$limit</span>=<span class="golden">50</span><br/>
&amp;<span class="toy-store-blue">$offset</span>=<span class="golden">100</span>
</code>

The default <span class="toy-store-blue">$limit</span> is <span class="golden">1000</span> and <span class="toy-store-blue">$offset</span> starts at <span class="golden">0</span>

<div class="footnote">For more info: <a href="http://dev.socrata.com/docs/paging.html">dev.socrata.com/docs/paging.html</a></div>

---

## Application Tokens

1. Register at [http://dev.socrata.com/register](http://dev.socrata.com/register)
2. Include as:
  - <code><span class="toy-store-blue">X-App-Token</span>: <span class="golden">$token</span></code> HTTP Header or ... 
  - The <code><span class="toy-store-blue">$$app_token</span>=<span class="golden">$token</span></code> parameter
3. ...
4. Profit!!! (from more API requests)

<div class="footnote">For more info: <a href="http://dev.socrata.com/docs/paging.html">dev.socrata.com/docs/paging.html</a></div>

===

# Help!

---

## Developer Portal

# [dev.socrata.com](http://dev.socrata.com)

<div class="footnote">Community powered! Learn how to <a href="http://dev.socrata.com/contributing.html">contribute</a>.</div>

--- 

## Getting Help

![Getting Help](img/live-support.gif)

- In person many events
- IRC: [chat.freenode.net/#socrata-soda](irc://chat.freenode.net/#socrata-soda)
- Stack Overflow: [soda](http://stackoverflow.com/questions/tagged/soda) or [socrata](http://stackoverflow.com/questions/tagged/socrata)

---

## Libraries & SDKs

<img src="../../img/socrata-heart-opensource.png"/>

### [dev.socrata.com/libraries/](http://dev.socrata.com/libraries/)

<div class="footnote"><a href="http://socrata.github.io/soda-ruby/">Ruby</a>, <a href="https://github.com/socrata/soda-scala">Scala</a>, <a href="http://socrata.github.io/soda-java/">Java</a>, <a href="https://github.com/socrata/soda-ios-sdk">iOS</a>, <a href="https://github.com/Chicago/RSocrata">R</a>, etc.</div>

===

<img class="fullscreen-img" src="/presentations/img/party.jpg" />

<h2 class="stroke-black">I'm ready to become fabulously successful!</h2>
<h3 class="stroke-black">Now what do I do?</h3>

---

<img class="fullscreen-img" src="/presentations/img/marketplace.png" />

<h2 style="color: black">Submit your app to the Socrata Apps Marketplace</h2>

---

## Benefits

- Exposure to citizen users
- Connections with our government customers
- Help developing and evangelizing data standards
- Additional support and mentoring

---

## Submitting your app

- Your contact info and details
- Background information on your app
- Details on licensing, fees, etc.

<br />

### [www.socrata.com/apps/submit-app/](http://www.socrata.com/apps/submit-app/)

---

## Socrata Certified Apps

![Certified](/presentations/img/certified.png)

---

## Socrata Certified Apps

- Requires an approved standard data schema
- Speeds acquisition & sales
- Builds confidence with buyers

===

<img class="fullscreen-img" src="/presentations/img/team.jpg" />

<h2 class="stroke-black">One more thing...</h2>

<h1 class="fragment stroke-black" data-fragment-index="0">We're hiring!</h1>

<h2 class="fragment" data-fragment-index="1"><a href="http://www.socrata.com/careers">www.socrata.com/careers</a></h2>

===

<img class="fullscreen-img" src="/presentations/img/maggie.jpg"/>

# Thanks!
<h2 class="fragment">Any questions?</h2>

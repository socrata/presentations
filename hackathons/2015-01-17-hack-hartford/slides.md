![Socrata](/presentations/img/socrata-white-large.png)
## Introduction to the SODA APIs

===

# Who the heck are you?

![Socrata](/presentations/img/socrata-white-medium.png)

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

# The Socrata Open Data APIs

![SODA](../../img/can.png)

---

## Finding Data

### [data.ct.gov](https://data.ct.gov/)
### [data.hartford.gov](https://data.hartford.gov/)
### [dev.socrata.com/data](http://dev.socrata.com/data/)

---

## API Endpoints

Format:

<code>https://<span class="greenery">$domain</span>/<span class="toy-store-blue">resource</span>/<span class="golden">$identifier</span>.<span class="blushing-salmon">ext</span></code>

---

### In the Data Catalog

![API Sidebar](http://dev.socrata.com/img/sidebar.gif)

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

---

## SoQL Queries

<code>
/resource/abcd-1234.json?<br/>
<span class="toy-store-blue">$where</span>=<span class="golden">kwh &gt; 80000</span>
</code>

<small style="padding-top: 5em">For more details see <a href="http://dev.socrata.com">dev.socrata.com</a></small>

---

## Aggregating Data

<code>
/resource/abcd-1234.json?<br/>
<span class="toy-store-blue">$select</span>=<span class="golden">source, sum(kwh)</span><br>
&amp;<span class="toy-store-blue">$group</span>=<span class="golden">source</span>
</code>

<pre><code data-trim contenteditable class="javascript">
[ {
  "source" : "ConEd",
    "sum_kwh" : "49469570957"
}, {
  "source" : "Long Island Power Authority",
    "sum_kwh" : "445333629"
}, ... ]
</code></pre>

---

## Paging Through Data

<code contenteditable>
/resource/abcd-1234.json?<br/>
<span class="toy-store-blue">$limit</span>=<span class="golden">50</span><br/>
&amp;<span class="toy-store-blue">$offset</span>=<span class="golden">100</span>
</code>

---

## Application Tokens

1. Register at [http://dev.socrata.com/register](http://dev.socrata.com/register)
2. Include as:
- <code><span class="toy-store-blue">X-App-Token</span>: <span class="golden">$token</span></code> HTTP Header or ... 
  - The <code><span class="toy-store-blue">$$app_token</span>=<span class="golden">$token</span></code> parameter
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

- In person many events
- IRC: [chat.freenode.net/#socrata-soda](irc://chat.freenode.net/#socrata-soda)
- Stack Overflow: [soda](http://stackoverflow.com/questions/tagged/soda) or [socrata](http://stackoverflow.com/questions/tagged/socrata)

---

## Libraries & SDKs

<img src="../../img/socrata-heart-opensource.png"/>

### [dev.socrata.com/libraries/](http://dev.socrata.com/libraries/)

<div class="footnote"><a href="http://socrata.github.io/soda-ruby/">Ruby</a>, <a href="https://github.com/socrata/soda-scala">Scala</a>, <a href="http://socrata.github.io/soda-java/">Java</a>, <a href="https://github.com/socrata/soda-ios-sdk">ObjectiveC</a>, <a href="https://github.com/Chicago/RSocrata">R</a>, <a href="https://github.com/socrata/soda-swift">Swift</a>, etc.</div>

===

<img class="fullscreen-img" src="/presentations/img/team.jpg" />

## One more thing...

<h1 class="fragment" data-fragment-index="0">We're hiring!</h1>

<h2 class="fragment" data-fragment-index="1"><a href="http://www.socrata.com/careers">www.socrata.com/careers</a></h2>

===


<img class="fullscreen-img" src="/presentations/img/maggie.jpg"/>

# Thanks!

===

![Let's get this party started!](img/lets_get_this_party_started.gif)

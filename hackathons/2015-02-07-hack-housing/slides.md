## Hack Housing Data & APIs

![Socrata](/presentations/img/socrata-white-target-watermark.png) ![Zillow](/presentations/img/zillow.png) ![UWCSE](/presentations/img/uwcse.png)

===

# Who the heck are you?

---

![Hey Ladies!](/presentations/img/metcalf.jpg)

<h3><img src="/presentations/img/twitter.png" alt="twitter" style="vertical-align: middle" /> chrismetcalf</h3>

---

![Socrata](/presentations/img/socrata-white-large.png)

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

### [bit.ly/zillow-hack-housing](https://bit.ly/zillow-hack-housing)
### [communities.socrata.com/catalogs/hack-housing](https://communities.socrata.com/catalogs/hack-housing/)

---

## API Endpoints

Format:

<code>https://<span class="greenery">$domain</span>/<span class="toy-store-blue">resource</span>/<span class="golden">$identifier</span>.<span class="blushing-salmon">$ext</span></code>

---

### In the Data Catalog

![API Sidebar](http://dev.socrata.com/img/sidebar.gif)

---

## Example: Zillow Neighborhood Median Listing Price

[communities.socrata.com/dataset/.../dtnx-7xba](https://communities.socrata.com/dataset/Seattle-Neighborhood-Median-Listing-Price-All-Home/dtnx-7xba)

---

## Simple Filters

<code>
/resource/dtnx-7xba.json?<span class="toy-store-blue">region_name</span>=<span class="golden">Greenwood</span>
</code>

<pre><code data-trim contenteditable class="javascript">
[ {
  "region_name": "Greenwood",
  "metro": "Seattle",
  "value": "387950",
  "month": "2008-10-01T00:00:00",
  "state": "WA",
  "county_name": "King",
  "city": "Seattle"
}, ... ]
</code></pre>

---

## SoQL Queries

<code>
/resource/dtnx-7xba.json?<br/>
<span class="toy-store-blue">$where</span>=<span class="golden">value &gt; 300000</span>
</code>

<small style="padding-top: 5em">For more details see <a href="http://dev.socrata.com">dev.socrata.com</a></small>

---

## Aggregating Data

<code>
/resource/dtnx-7xba.json?<br/>
<span class="toy-store-blue">$select</span>=<span class="golden">region_name, MAX(value)</span><br>
&amp;<span class="toy-store-blue">$group</span>=<span class="golden">region_name</span>
</code>

<pre><code data-trim contenteditable class="javascript">
[ {
  "region_name" : "South End",
  "max_value" : "199900"
}, {
  "region_name" : "Capitol Hill",
  "max_value" : "435000"
}, ...]
</code></pre>

---

## Paging Through Data

<code contenteditable>
/resource/dtnx-7xba.json?<br/>
<span class="toy-store-blue">$limit</span>=<span class="golden">50</span><br/>
&amp;<span class="toy-store-blue">$offset</span>=<span class="golden">100</span>
</code>

---

## Application Tokens

1. Register at [http://dev.socrata.com/register](http://dev.socrata.com/register)
2. Include as:
  - <code><span class="toy-store-blue">X-App-Token</span>: <span class="golden">$token</span></code> HTTP Header or ... 
  - The <code><span class="toy-store-blue">$$app_token</span>=<span class="golden">$token</span></code> URL parameter
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

- Chase me down!
- IRC: [chat.freenode.net/#socrata-soda](irc://chat.freenode.net/#socrata-soda)
- Stack Overflow: [soda](http://stackoverflow.com/questions/tagged/soda) or [socrata](http://stackoverflow.com/questions/tagged/socrata)

---

## Libraries &amp; SDKs

<img src="../../img/socrata-heart-opensource.png"/>

### [dev.socrata.com/libraries/](http://dev.socrata.com/libraries/)

<div class="footnote"><a href="http://socrata.github.io/soda-ruby/">Ruby</a>, <a href="https://github.com/socrata/soda-scala">Scala</a>, <a href="http://socrata.github.io/soda-java/">Java</a>, <a href="https://github.com/socrata/soda-ios-sdk">ObjectiveC</a>, <a href="https://github.com/Chicago/RSocrata">R</a>, <a href="https://github.com/socrata/soda-swift">Swift</a>, etc.</div>

===

<img class="fullscreen-img" src="/presentations/img/work_tounge.gif" />

## One more thing...

<h1 class="fragment" data-fragment-index="0">We're hiring!</h1>

<h2 class="fragment" data-fragment-index="1"><a href="http://www.socrata.com/jobs">www.socrata.com/jobs</a></h2>

===

![Let's get this party started!](/presentations/img/lets_get_this_party_started.gif)

===

<img class="fullscreen-img" src="/presentations/img/team.jpg"/>

# Thanks!


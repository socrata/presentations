## Hack the Commute

![Socrata](/presentations/img/socrata-white-target-watermark.png) ![Hack Housing](/presentations/img/hackcommute.png)

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

![SODA](/presentations/img/snuffleupadata.png)

---

## Finding Data

### [communities.socrata.com/catalogs/hack-the-commute](https://communities.socrata.com/catalogs/hack-the-commute/)

---

## API Endpoints

Format:

<code>https://<span class="greenery">$domain</span>/<span class="toy-store-blue">resource</span>/<span class="golden">$identifier</span>.<span class="blushing-salmon">$ext</span></code>

---

### In the Data Catalog

![API Sidebar](http://dev.socrata.com/img/sidebar.gif)

---

## Example: Fremont Bridge Bike Counts

[data.seattle.gov/dataset/.../65db-xm6k](https://data.seattle.gov/d/65db-xm6k)

---

## Simple Filters

<code>
/resource/65db-xm6k.json?<span class="toy-store-blue">date</span>=<span class="golden">2012-10-02T00:00:00</span>
</code>

<pre><code data-trim contenteditable class="javascript">
[ {
  "fremont_bridge_nb": "0",
  "fremont_bridge_sb": "0",
  "date": "2012-10-02T00:00:00"
} ]
</code></pre>

---

## SoQL Queries

<code>
/resource/65db-xm6k.json?<br/>
<span class="toy-store-blue">$where</span>=<span class="golden">date &gt; '2015-03-19' AND date <= '2015-03-20' </span>
</code>

<small style="padding-top: 5em">For more details see <a href="http://dev.socrata.com">dev.socrata.com</a></small>

---

## Aggregating Data

<code>
/resource/65db-xm6k.json?<br/>
<span class="toy-store-blue">$select</span>=<span class="golden">SUM(fremont_bridge_sb), SUM(fremont_bridge_nb)</span><br>
</code>

<pre><code data-trim contenteditable class="javascript">
[ {
  "sum_fremont_bridge_sb": "1141137",
  "sum_fremont_bridge_nb": "1072744"
} ]
</code></pre>

---

## Paging Through Data

<code contenteditable>
/resource/65db-xm6k.json?<br/>
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

![Socrata Hearts Gov](/presentations/img/snuf-luv.png)

[thank-a-govie.com](http://thank-a-govie.com)

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


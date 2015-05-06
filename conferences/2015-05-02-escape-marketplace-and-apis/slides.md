## Socrata App Marketplace & Open Data APIs

![Socrata](/presentations/img/snu_geek.png)

===

![Escape from NY](/presentations/img/escape-from-ny.jpg)

===

<img class="fullscreen-img" src="/presentations/img/rockem.jpg" />

# <span class="toy-store-blue">Open Data</span> vs. <span class="blushing-salmon">Open APIs</span>

===

<img class="fullscreen-img" src="/presentations/img/safe.jpg" />

# Why is just <span class="toy-store-blue">Open Data</span> not enough?

---

<img class="fullscreen-img" src="/presentations/img/baguette.jpg" />

## A <span class="toy-store-blue">downloaded dataset</span> is a <span class="blushing-salmon">stale dataset</span><sup>&lowast;</sup>

<p class="footnote"><sup>&lowast;</sup> Metcalf's Law. I call dibs.</p>

---

<img class="fullscreen-img" src="/presentations/img/platform.png" />

## Don't make me <span class="toy-store-blue">build my own API</span>

---

<img class="fullscreen-img" src="/presentations/img/bricks.jpg" />

## More <span class="blushing-salmon">sustainable</span> and <span class="golden">portable</span>

===

<img class="fullscreen-img" src="/presentations/img/api.jpg" />

# Why not just APIs?

---

<img class="fullscreen-img" src="/presentations/img/gate.jpg" />

## A <span class="golden">gated</span> experience

---

<img class="fullscreen-img" src="/presentations/img/train.jpg" />

## APIs <span class="blushing-salmon">go away</span>

---

<img class="fullscreen-img" src="/presentations/img/hackathon.jpg" />

## You can't anticipate <span class="toy-store-blue">every use case</span>

===

<img class="fullscreen-img" src="/presentations/img/why-not-both.gif" />

## Why not both?

===

# <span class="toy-store-blue">Open Data</span> 
# +
# <span class="blushing-salmon">Open APIs</span>

===

# The Socrata Open Data APIs

![SODA](/presentations/img/snuffleupadata.png)

---

## Finding Data

### [data.cityofchicago.org](https://data.cityofchicago.org/)

---

### In the Data Catalog

![API Sidebar](http://dev.socrata.com/img/data_lens.png)

---

## Example: Chicago Restaurant Inspections

[data.cityofchicago.org/.../.../2bnm-jnvb](https://data.cityofchicago.org/d/2bnm-jnvb)

---

## Simple Filters

<code>
/resource/cwig-ma7x.json?<span class="toy-store-blue">facility_type</span>=<span class="golden">Restaurant</span>
</code>

<pre><code data-trim contenteditable class="javascript">
[ {
    "address": "2020 W CHICAGO ",
    "aka_name": "BAR BARI",
    "dba_name": "BAR BARI",
    "facility_type": "Restaurant",
    "inspection_date": "2011-09-12T00:00:00.000",
    "inspection_id": "634525",
    "inspection_type": "Canvass",
    "latitude": "41.896004699879654",
    "license_": "2109874",
    "location": {
      "type": "Point",
      "coordinates": [ -87.677938, 41.896005 ]
    },
    "longitude": "-87.6779378973854",
    "results": "Pass",
    "risk": "Risk 1 (High)",
    "state": "IL",
    "zip": "60622"
}, ... ]
</code></pre>

---

## SoQL Queries

<code>
/resource/cwig-ma7x.json?<br/>
<span class="toy-store-blue">$where</span>=<span class="golden">within_circle(location, 41.88, -87.63, 1000)</span>
</code>

<small style="padding-top: 5em">For more details see <a href="http://dev.socrata.com">dev.socrata.com</a></small>

---

## Aggregating Data

<code>
/resource/cwig-ma7x.json?<br/>
<span class="toy-store-blue">$select</span>=<span class="golden">DATE_TRUNC_YM(date) AS month, COUNT(inspection_id) AS total</span><br>
&amp;<span class="toy-store-blue">results</span>=<span class="golden">fail</span><br>
&amp;<span class="toy-store-blue">$group</span>=<span class="golden">month</span><br>
</code>

<pre><code data-trim contenteditable class="javascript">
[ {
"total": "1672",
"month": "2013-10-01T00:00:00"
}, ... ]
</code></pre>

---

## Paging Through Data

<code contenteditable>
/resource/cwig-ma7x.json?<br/>
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

## Libraries &amp; SDKs

<img src="../../img/socrata-heart-opensource.png"/>

### [dev.socrata.com/libraries/](http://dev.socrata.com/libraries/)

<div class="footnote"><a href="http://socrata.github.io/soda-ruby/">Ruby</a>, <a href="https://github.com/socrata/soda-scala">Scala</a>, <a href="http://socrata.github.io/soda-java/">Java</a>, <a href="https://github.com/socrata/soda-ios-sdk">ObjectiveC</a>, <a href="https://github.com/Chicago/RSocrata">R</a>, <a href="https://github.com/socrata/soda-swift">Swift</a>, etc.</div>

--- 

## Questions or Issues?

![Getting Help](/presentations/img/live-support.gif)

- Chase me down!
- IRC: [chat.freenode.net/#socrata-soda](irc://chat.freenode.net/#socrata-soda)
- Stack Overflow: [soda](http://stackoverflow.com/questions/tagged/soda) or [socrata](http://stackoverflow.com/questions/tagged/socrata)

===

<img class="fullscreen-img" src="/presentations/img/take-my-money.gif"/>

---

# Who is actually making <span class="golden">money</span> doing this?

---

<img class="fullscreen-img" src="/presentations/img/zillow-screenshot.png"/>

---

<img class="fullscreen-img tint-50" src="/presentations/img/zillow-speech.jpg"/>

## "It was really that opening up of government data that gave us the idea for Zillow." 
#### Rich Barton, Chairman & Founder, Zillow

--- 

<img class="fullscreen-img" src="/presentations/img/seeclickfix.png"/>

---

<img class="fullscreen-img" src="/presentations/img/plenario.png"/>

---

<img class="fullscreen-img" src="/presentations/img/sitecompli.png"/>

===

# OK fine, but how can <span class="toy-store-blue">Socrata</span> help me make money?

---

<img class="fullscreen-img" src="/presentations/img/opendatanetwork.png"/>

---

<img class="fullscreen-img" src="/presentations/img/marketplace.png"/>

---

# Socrata Certified Apps

![Seal of App-roval](/presentations/img/Seal_yellow.tif.png)

===

<img class="fullscreen-img" src="/presentations/img/work_tounge.gif" />

## One more thing...

<h1 class="fragment" data-fragment-index="0">We're hiring!</h1>

<h2 class="fragment" data-fragment-index="1"><a href="http://www.socrata.com/jobs">www.socrata.com/jobs</a></h2>


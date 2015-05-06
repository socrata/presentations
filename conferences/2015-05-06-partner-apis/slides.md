## Socrata APIs
### Socrata 2015 Partner Summit

![Socrata](/presentations/img/hello_world.png)

===

![Hey Ladies!](/presentations/img/metcalf.jpg)

<h3><img src="/presentations/img/twitter.png" alt="twitter" style="vertical-align: middle" /> chrismetcalf</h3>

===

![](/presentations/img/rockem.jpg)

# <span class="toy-store-blue">Open Data</span> vs. <span class="blushing-salmon">Open APIs</span>

===

![](/presentations/img/safe.jpg)

# Why is just <span class="toy-store-blue">Open Data</span> not enough?

---

![](/presentations/img/baguette.jpg)

## A <span class="toy-store-blue">downloaded dataset</span> is a <span class="blushing-salmon">stale dataset</span><sup>&lowast;</sup>

<p class="footnote"><sup>&lowast;</sup> Metcalf's Law. I call dibs.</p>

---

![](/presentations/img/platform.png)

## Don't make me <span class="toy-store-blue">build my own API</span>

---

![](/presentations/img/bricks.jpg)

## More <span class="blushing-salmon">sustainable</span> and <span class="golden">portable</span>

===

![](/presentations/img/api.jpg)

# Why not just APIs?

---

![](/presentations/img/gate.jpg)

## A <span class="golden">gated</span> experience

---

![](/presentations/img/train.jpg)

## APIs <span class="blushing-salmon">go away</span>

---

![](/presentations/img/hackathon.jpg)

## You can't anticipate <span class="toy-store-blue">every use case</span>

===

![](/presentations/img/why-not-both.gif)

## Why not both?

===

# <span class="toy-store-blue">Open Data</span> 
# +
# <span class="blushing-salmon">Open APIs</span>

===

# The Socrata Open Data APIs

![SODA](/presentations/img/snuffleupadata.png)

---

![](/presentations/img/opendatanetwork_search.png)

---

![](/presentations/img/opendatanetwork.png)

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

# The Socrata Publisher APIs

![LuvGuv](/presentations/img/luvguv_thumb.png)

---

## Overview

Follows the same paradigms as the consumer APIs:

* Same `REST`ful endpoint as the dataset<sup>&#42;</sup>
* Supports `JSON`, `XML`, `CSV`, etc.
* Bulk and metadata update interfaces also available

---

## Example: Adding a new fire 911 report

<pre><code contenteditable>
POST https://data.cityofchicago.org/resource/ijzp-q8t2.json
Content-type: application/json
Authorization: Basic [REDACTED]
X-App-Token: CGxaHQoQlgQSev4zyUh5aR5J3

[ {
    "inspection_id": "634525",
    "address": "2020 W CHICAGO ",
    ...,
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
</code></pre>

---

## Publisher Client Libraries

Libraries or examples available for:

* [Java](https://github.com/socrata/soda-java)
* [Scala](https://github.com/socrata/soda-scala)
* [Ruby](https://github.com/socrata/soda-ruby)
* ...

[dev.socrata.com/libraries/](http://dev.socrata.com/libraries/)

---

## Publisher Tools

Tools for streamlined integration:

* [Datasync](http://socrata.github.io/datasync/)
* [Safe FME](http://www.safe.com/)
* [Pentaho Kettle](http://dev.socrata.com/publishers/cookbooks/pentaho-kettle-etl-kit.html)

===

# Socrata Labs

![Socrata Labs](/presentations/img/beaker_200.png)

### [labs.socrata.com](http://labs.socrata.com)
---

## Catalog Search

[![Search](/presentations/img/Reading-glass.tif.png)](http://labs.socrata.com.dev/docs/search.html)

---

## Export Service

[![Export](/presentations/img/Down.tif.png)](http://labs.socrata.com.dev/docs/export.html)

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

# Live Tutorial

## <http://tmpl.at/1JqL2YS>

===

# Questions?

![Questions?](/presentations/img/question.png)

![Socrata](/presentations/img/socrata-white-large.png)
## API Deep Dive

===

# The Socrata Open Data APIs

![SODA](../../img/can.png)

---

## Finding Data

### [communities.socrata.com](https://communities.socrata.com/)
### [dev.socrata.com/data](http://dev.socrata.com/data/)

---

## API Endpoints

Format:

<code>https://<span class="greenery">$domain</span>/<span class="toy-store-blue">resource</span>/<span class="golden">$identifier</span>.<span class="blushing-salmon">ext</span></code>

---

### In the Data Catalog

![API Sidebar](/presentations/img/sidebar.gif)

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

# Publishing Strategies

![Strategies](../../img/Notebook.tif.png)

---

## Initial Import?
## Archival Dataset?
## Infrequent Changes?

<span class="fragment" data-fragment-index=0>There's no need for an API integration. Use the web tools!<span>

---

## Daily or Weekly Updates?
## Complete replacement?
## Comes from an ETL system?

<span class="fragment" data-fragment-index=0>Use DataSync or Safe FME<span>

---

## Real-time updates?
## Data that morphs over time?

<span class="fragment" data-fragment-index=0>Use the RESTful API<span>

===

# DataSync!

![Sync](../../img/Reload.tif.png)

===

# Safe FME

![Sync](../../img/logo_fme.png)

===

# The Socrata Publisher APIs

![Gear!](../../img/Gear.png)

---

## Overview

Follows the same paradigms as the consumer APIs:

* Same `REST`ful endpoint as the dataset
* Supports `JSON`, `XML`, `CSV`, etc.
* Bulk and metadata update interfaces also available

---

## Example: Adding a new fire 911 report

<pre><code contenteditable>
POST https://data.seattle.gov/resource/kzjm-xkqj.json
Content-type: application/json
Authorization: Basic [REDACTED]
X-App-Token: CGxaHQoQlgQSev4zyUh5aR5J3
[
  {
    "address": "1402 E Pike St",
      "longitude": "-122.314118",
      "latitude": "47.614121",
      "incident_number": "F120079189",
      "datetime": 1345675560,
      "type": "Motor Vehicle Accident",
      "report_location": {
        "longitude": "-122.314118",
        "latitude": "47.614121"
      }
  }
]
</code></pre>

---

## Publisher Client Libraries

Libraries or examples available for:

* [Java](https://github.com/socrata/soda-java)
* [Scala](https://github.com/socrata/soda-scala)
* [Ruby](https://github.com/socrata/soda-ruby)
* More coming soon...

[http://github.com/socrata](http://github.com/socrata)

===

# Help!

---

## Developer Portal

# [dev.socrata.com](http://dev.socrata.com)

<div class="footnote">Community powered! Learn how to <a href="http://dev.socrata.com/contributing.html">contribute</a>.</div>

--- 

## Getting Help

![Getting Help](/presentations/img/live-support.gif)

- Customer Support: [support.socrata.com](http://support.socrata.com)
- IRC: [chat.freenode.net/#socrata-soda](irc://chat.freenode.net/#socrata-soda)
- Stack Overflow: [soda](http://stackoverflow.com/questions/tagged/soda) or [socrata](http://stackoverflow.com/questions/tagged/socrata)

---

## Libraries & SDKs

<img src="../../img/socrata-heart-opensource.png"/>

### [dev.socrata.com/libraries/](http://dev.socrata.com/libraries/)

<div class="footnote"><a href="http://socrata.github.io/soda-ruby/">Ruby</a>, <a href="https://github.com/socrata/soda-scala">Scala</a>, <a href="http://socrata.github.io/soda-java/">Java</a>, <a href="https://github.com/socrata/soda-ios-sdk">ObjectiveC</a>, <a href="https://github.com/Chicago/RSocrata">R</a>, <a href="https://github.com/socrata/soda-swift">Swift</a>, etc.</div>

===

<img class="fullscreen-img" src="/presentations/img/maggie.jpg"/>

# Thanks!

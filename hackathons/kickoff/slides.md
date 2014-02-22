![Socrata](/presentations/img/socrata-white-large.png)
## Introduction to the SODA APIs

===

# Who the heck are you?

![Socrata](/presentations/img/socrata-white.png)

---

<h2>We build <span class="toy-store-blue">software</span> to make data <span class="blushing-salmon">more useful</span> to <span class="golden">more people</span>.</h2>

---

[data.edmonton.ca](http://data.edmonton.ca) [finances.worldbank.org](http://finances.worldbank.org) [data.cityofchicago.org](http://data.cityofchicago.org) [data.seattle.gov](http://data.seattle.gov) [data.oregon.gov](http://data.oregon.gov) [data.wa.gov](http://data.wa.gov) [www.metrochicagodata.org](http://www.metrochicagodata.org) [data.cityofboston.gov](http://data.cityofboston.gov) [info.samhsa.gov](http://info.samhsa.gov) [explore.data.gov](http://explore.data.gov) [data.cms.gov](http://data.cms.gov) [data.ok.gov](http://data.ok.gov) [data.nola.gov](http://data.nola.gov) [data.illinois.gov](http://data.illinois.gov) [data.colorado.gov](http://data.colorado.gov) [data.austintexas.gov](http://data.austintexas.gov) [data.undp.org](http://data.undp.org) [www.opendatanyc.com](http://www.opendatanyc.com) [data.mo.gov](http://data.mo.gov) [data.nfpa.org](http://data.nfpa.org) [data.raleighnc.gov](http://data.raleighnc.gov) [dati.lombardia.it](http://dati.lombardia.it) [data.montgomerycountymd.gov](http://data.montgomerycountymd.gov) [data.cityofnewyork.us](http://data.cityofnewyork.us) [data.acgov.org](http://data.acgov.org) [data.baltimorecity.gov](http://data.baltimorecity.gov) [data.energystar.gov](http://data.energystar.gov) [data.somervillema.gov](http://data.somervillema.gov) [data.maryland.gov](http://data.maryland.gov) [data.taxpayer.net](http://data.taxpayer.net) [bronx.lehman.cuny.edu](http://bronx.lehman.cuny.edu) [data.hawaii.gov](http://data.hawaii.gov) [data.sfgov.org](http://data.sfgov.org) [data.cityofmadison.com](http://data.cityofmadison.com) [healthmeasures.aspe.hhs.gov](http://healthmeasures.aspe.hhs.gov) [data.weatherfordtx.gov](http://data.weatherfordtx.gov) [www.data.act.gov.au](http://www.data.act.gov.au) [data.wellingtonfl.gov](http://data.wellingtonfl.gov) [data.honolulu.gov](http://data.honolulu.gov) [data.kcmo.org](http://data.kcmo.org) [data2020.abtassociates.com](http://data2020.abtassociates.com) [data.ny.gov](http://data.ny.gov) [health.data.ny.gov](http://health.data.ny.gov) 

===

# The Socrata Open Data APIs

![SODA](../../img/can.png)

---

## Finding Data

### [communities.socrata.com](https://communities.socrata.com/)

---

## API Endpoints

Format:

<code>https://<span class="greenery">$domain</span>/<span class="toy-store-blue">resource</span>/<span class="golden">$identifier</span>.<span class="blushing-salmon">ext</span></code>

---

## API Endpoints

Example: [Electric Consumption by Zip Code](https://data.city.gov/Environmental-Sustainability/Electric-Consumption-by-ZIP-Code-2010/abcd-1234)

<code style="font-size: 0.7em"> https://<span class="greenery">data.city.gov</span>/envir.../elec.../<span style="color: #ffca14">abcd-1234</span> </code>

... becomes ...

<code style="font-size: 0.7em">
https://<span class="greenery">data.city.gov</span>/<span class="toy-store-blue">resource</span>/<span class="golden">abcd-1234</span>.<span class="blushing-salmon">json</span>
</code>

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

![Questions](../../img/Question.tif.png)

---

## Developer Portal

![Developer Portal](../../img/Info.tif.png)

[http://beta.dev.socrata.com](http://beta.dev.socrata.com)

File issues and pull requests!

<http://github.com/socrata/dev.socrata.com>

---

## Open Source Code

Libraries in: 

* Ruby
* Java
* Scala
* ObjectiveC / iOS
* Our entire backend stack
* ... and more!

<img src="../../img/socrata-heart-opensource.png"/>

### [http://github.com/socrata](http://github.com/socrata)

===

## One more thing...

<h1 class="fragment" data-fragment-index="0">We're hiring!</h1>

<h2 class="fragment" data-fragment-index="1"><a href="http://www.socrata.com/jobs">www.socrata.com/jobs</a></h2>

<div class="fragment" data-fragment-index="1">
  <img src="img/work_tounge.gif"/>
</div>

===

# Thanks!

![Grat-zee!](img/grat-zee.gif)

===

![Let's get this party started!](img/lets_get_this_party_started.gif)

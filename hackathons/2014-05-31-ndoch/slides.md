![Socrata](/presentations/img/socrata-white-medium.png) ![NDoCH](./img/logo-ndoch-dark.png)
## Introduction to the SODA APIs

===

# Who the heck are you?

![Socrata](/presentations/img/socrata-white.png)

---

<h2>We build <span class="toy-store-blue">software</span> to make data <span class="blushing-salmon">more useful</span> to <span class="golden">more people</span>.</h2>

---

<a href="http://data.edmonton.ca" style="font-size: 0.9718528167552157em; color: #ffca14">data.edmonton.ca</a> <a href="http://finances.worldbank.org" style="font-size: 0.819719552686058em; color: #ff9c4e">finances.worldbank.org</a> <a href="http://data.cityofchicago.org" style="font-size: 1.043138759161384em; color: #12daeb">data.cityofchicago.org</a> <a href="http://data.seattle.gov" style="font-size: 0.9908285962045588em; color: #49f071">data.seattle.gov</a> <a href="http://data.oregon.gov" style="font-size: 1.1644252949557434em; color: #ffca14">data.oregon.gov</a> <a href="http://data.wa.gov" style="font-size: 1.1222658041916949em; color: #ff9c4e">data.wa.gov</a> <a href="http://www.metrochicagodata.org" style="font-size: 1.0794537548060201em; color: #ffe34e">www.metrochicagodata.org</a> <a href="http://data.cityofboston.gov" style="font-size: 1.087944653283771em; color: #ff9c4e">data.cityofboston.gov</a> <a href="http://info.samhsa.gov" style="font-size: 1.0787512029829642em; color: #f513aa">info.samhsa.gov</a> <a href="http://explore.data.gov" style="font-size: 0.8892171155578309em; color: #ffe34e">explore.data.gov</a> <a href="http://data.cms.gov" style="font-size: 0.8350497450961663em; color: #49f071">data.cms.gov</a> <a href="http://data.ok.gov" style="font-size: 1.0333200063877164em; color: #ffe34e">data.ok.gov</a> <a href="http://data.nola.gov" style="font-size: 1.0186066951177302em; color: #ffca14">data.nola.gov</a> <a href="http://data.illinois.gov" style="font-size: 0.9555749989840487em; color: #12daeb">data.illinois.gov</a> <a href="http://data.colorado.gov" style="font-size: 1.0719275100814882em; color: #12daeb">data.colorado.gov</a> <a href="http://data.austintexas.gov" style="font-size: 1.0259146662165897em; color: #ff9c4e">data.austintexas.gov</a> <a href="http://data.undp.org" style="font-size: 0.9337584464305995em; color: #ffe34e">data.undp.org</a> <a href="http://www.opendatanyc.com" style="font-size: 1.1868966306082367em; color: #ffca14">www.opendatanyc.com</a> <a href="http://data.mo.gov" style="font-size: 1.0178676716625163em; color: #49f071">data.mo.gov</a> <a href="http://data.nfpa.org" style="font-size: 0.8534644212748409em; color: #ff9c4e">data.nfpa.org</a> <a href="http://data.raleighnc.gov" style="font-size: 1.105368836655453em; color: #ffe34e">data.raleighnc.gov</a> <a href="http://dati.lombardia.it" style="font-size: 0.8777353633765307em; color: #ffca14">dati.lombardia.it</a> <a href="http://data.montgomerycountymd.gov" style="font-size: 0.8757053002533361em; color: #12daeb">data.montgomerycountymd.gov</a> <a href="http://data.cityofnewyork.us" style="font-size: 1.1049674699548826em; color: #ff9c4e">data.cityofnewyork.us</a> <a href="http://data.acgov.org" style="font-size: 1.0078864861908388em; color: #49f071">data.acgov.org</a> <a href="http://data.baltimorecity.gov" style="font-size: 1.093549809954082em; color: #ffca14">data.baltimorecity.gov</a> <a href="http://data.energystar.gov" style="font-size: 0.8108595305429369em; color: #12daeb">data.energystar.gov</a> <a href="http://data.somervillema.gov" style="font-size: 1.040052008869448em; color: #f513aa">data.somervillema.gov</a> <a href="http://data.maryland.gov" style="font-size: 0.9037966401730131em; color: #f513aa">data.maryland.gov</a> <a href="http://data.taxpayer.net" style="font-size: 0.9614175179549839em; color: #f513aa">data.taxpayer.net</a> <a href="http://bronx.lehman.cuny.edu" style="font-size: 0.8398780823925059em; color: #ff9c4e">bronx.lehman.cuny.edu</a> <a href="http://data.hawaii.gov" style="font-size: 0.8024640714306497em; color: #f513aa">data.hawaii.gov</a> <a href="http://data.sfgov.org" style="font-size: 0.8017173009257776em; color: #f513aa">data.sfgov.org</a> <a href="http://data.cityofmadison.com" style="font-size: 0.9589713135559528em; color: #f513aa">data.cityofmadison.com</a> <a href="http://healthmeasures.aspe.hhs.gov" style="font-size: 0.9508117111767557em; color: #ffe34e">healthmeasures.aspe.hhs.gov</a>

===

# The Socrata Open Data APIs

![SODA](../../img/can.png)

---

## Finding Data &amp; Help

### [www.socrata.com/ndoch](http://www.socrata.com/ndoch)

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

<footer>For more info: <a href="http://dev.socrata.com/docs/endpoints.html">dev.socrata.com/docs/endpoints.html</a></footer>
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

<footer>For more info: <a href="http://dev.socrata.com/docs/filtering.html">dev.socrata.com/docs/filtering.html</a></footer>

---

## SoQL Queries

<code>
/resource/abcd-1234.json?<br/>
<span class="toy-store-blue">$where</span>=<span class="golden">kwh &gt; 80000</span>
</code>

<footer>For more info: <a href="http://dev.socrata.com/docs/queries.html">dev.socrata.com/docs/queries.html</a></footer>

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

<footer>For more info: <a href="http://dev.socrata.com/docs/queries.html">dev.socrata.com/docs/queries.html</a></footer>

---

## Paging Through Data

<code contenteditable>
/resource/abcd-1234.json?<br/>
<span class="toy-store-blue">$limit</span>=<span class="golden">50</span><br/>
&amp;<span class="toy-store-blue">$offset</span>=<span class="golden">100</span>
</code>

<footer>For more info: <a href="http://dev.socrata.com/docs/paging.html">dev.socrata.com/docs/paging.html</a></footer>

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

[http://dev.socrata.com](http://dev.socrata.com)

---

## Libraries & SDKs

<img src="../../img/socrata-heart-opensource.png"/>

### [dev.socrata.com/libraries/](http://dev.socrata.com/libraries/)

--- 

## Live Help

- IRC: [chat.freenode.net/#socrata-soda](irc://chat.freenode.net/#socrata-soda)
- Hangout: [TBD](http://example.com)

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

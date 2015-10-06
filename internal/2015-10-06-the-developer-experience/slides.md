
![Hello World](/presentations/img/hello_world_200.png)

## The _Developer_ _Experience_

===

# Who the heck are you?

--- 

![Hey Ladies!](/presentations/img/metcalf.jpg)

<h3><img src="/presentations/img/twitter.png" alt="twitter" style="vertical-align: middle" /> chrismetcalf</h3>

---

![Fullscreen](/presentations/img/living_labs.jpg)

---

![Geek](/presentations/img/geek_thumb.png)

## The Socrata Developer Program

===

# What do we do?

---

![Fullscreen](/presentations/img/hackathon.jpg)

# _Developer Events_

---

![Fullscreen](/presentations/img/dev.socrata.com.png)

# _Education_

---

![Fullscreen](/presentations/img/consulting.jpg)

# _Consulting_

===

# The _Socrata_ _Open Data_ _APIs_

---

![What!?](/presentations/img/whatdidyousay.gif)

---

<div style="text-align: left; font-size: 3em; line-height: 1.1em">
  <span class="blushing-salmon">A</span>pplication<br/>
  <span class="fragment" data-fragment-index=0><span class="toy-store-blue">P</span>rogramming<br/></span>
  <span class="fragment" data-fragment-index=1><span class="golden">I</span>nterface</span>
</div>

---

# Common Language

A <span class="blushing-salmon">consistent</span> way for <span class="toy-store-blue">two software systems</span> to <span class="golden">communicate</span>.

---

![Fullscreen](/presentations/img/rockem.jpg)

===

# Why are <span class="toy-store-blue">Open Data APIs</span> valuable?

---

## A <span class="toy-store-blue">downloaded dataset</span> is a <span class="blushing-salmon">stale dataset</span><sup>&lowast;</sup>

<p class="footnote"><sup>&lowast;</sup> Metcalf's Law. I call dibs.</p>

---

## Don't make developers <span class="toy-store-blue">build their own APIs</span>

---

## Makes applications more <span class="blushing-salmon">sustainable</span> and <span class="golden">portable</span>

===

# API Overview

<p class="footnote"><sup>&lowast;</sup> This is where it gets <em>really</em> nerdy...</p>

---

## The <span class="blushing-salmon">S</span><span class="golden">O</span><span class="toy-store-blue">D</span><span class="greenery">A</span> Consumer APIs


* Simple, _[REST](http://en.wikipedia.org/wiki/Representational_state_transfer)ful APIs_ for each dataset
* _Easy to learn_ and develop against
* [SQL](http://en.wikipedia.org/wiki/SQL)-like _query_ syntax
* _Flexible_ output types ([JSON](http://en.wikipedia.org/wiki/JSON), [XML](https://en.wikipedia.org/wiki/XML), [CSV](https://en.wikipedia.org/wiki/Comma-separated_values))

---

## The <span class="blushing-salmon">S</span><span class="golden">O</span><span class="toy-store-blue">D</span><span class="greenery">A</span> Publisher APIs

Follows the same paradigms as the consumer APIs:

* Same _endpoint_ as the dataset
* Same _data formats_
* _Bulk_ and _real time_ updates
* Library support, utilities, and sample code&lowast;
  * DataSync, Safe FME

<p class="footnote"><sup>&lowast;</sup> Check out the <a href="http://discover.socrata.com/SocrataUniversity">Introduction to Integration</a> class for more</p>

---

## Example: King County Property Parcels

[kenmorewa.data.socrata.com/.../.../yrp3-3hu8](https://kenmorewa.data.socrata.com/dataset/King-County-Parcels/yrp3-3hu8)

---

## Simple Filters

<code>
/resource/ydpf-78qt.json?<span class="toy-store-blue">lake_washington</span>=<span class="golden">1</span>
</code>

<pre><code data-trim contenteditable class="javascript">
[ {
    "access": "4",
    "accnt_num": "013000001506",
    "addr_full": "3515 NE 100TH ST",
    "addr_hn": "3515",
    "addr_num": "3515",
    "addr_pd": "NE",
    "addr_sn": "100TH",
    "addr_st": "ST",
    "lake_sammamish": "0",
    "lake_washington": "1",
    ...
}, ... ]
</code></pre>

---

## SoQL Queries

<code>
/resource/ydpf-78qt.json?
<span class="toy-store-blue">$where</span>=<span class="golden">within_circle(centroid, 47.76,-122.24, 1000)</span>
</code>

<small style="padding-top: 5em">For more details see <a href="http://dev.socrata.com">dev.socrata.com</a></small>

---

## Aggregating Data

<code>
/resource/ydpf-78qt.json?<br/>
<span class="toy-store-blue">$select</span>=<span class="golden">district_name, COUNT(&#42;)</span><br>
<span class="toy-store-blue">&lake_washington</span>=<span class="golden">1</span><br>
<span class="toy-store-blue">&$group</span>=<span class="golden">district_name</span><br>
<span class="toy-store-blue">&$order</span>=<span class="golden">COUNT(&#42;) DESC</span><br>
</code>

<pre class="fragment"><code data-trim contenteditable class="javascript">
[ {
  "count": "2303",
  "district_name": "SEATTLE"
}, {
  "count": "945",
  "district_name": "KIRKLAND"
},
..., {
  "count": "217",
  "district_name": "KENMORE"
}, ... ]
</code></pre>

===

# Developer Events

---

![Fullscreen](/presentations/img/hackathon2.jpg)

## Hackathons

* _In-person_ in one or many locations
* _Limited_ in time and scope
* Often have _specific goals_ and rules
* _Focused_ on networking and ideation

---

![Fullscreen](/presentations/img/summerjam.jpg)

## App Contests

* Usually _virtual_
* _Longer_ in time and scope (1-6 months)
* Focused on creating _sustainable apps_

--- 

![Fullscreen](/presentations/img/codeseattle.jpg)

## Hack Nights & CfA Brigades

* _Periodic_, in-person events
* Focused on networking and building apps _over time_
* Usually _no prizes_

===

# Why are these events valuable?

---

## A _safe environment_ for experimentation

---

## A _valuable ecosystem_ for business ideas

--- 

## A place for developers and data providers to _network_

=== 

# What resources do we provide?

![dev.socrata.com](/presentations/img/can.png)

---

## Developer portal

* Getting started resources for developers
* Sample code, common use cases, inspiring walk-through examples
* Open source libraries and SDKs
* Automatically generates tailored API documentation for *every Socrata dataset*
* Open to contributions from the community

<br/>

## [dev.socrata.com](http://dev.socrata.com)

---

## Event Coaching & Consulting

* Education & planning support
* Outreach & recruiting
* In-person mentoring & evangelism

===

# How can you help?

---

# _Keep me informed!_

---

# _Spread the word!_

---

# _Volunteer!_

===

![Questions?](/presentations/img/question.png)

===

# Thanks!


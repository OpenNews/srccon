---
layout: 2015_layout
title: Sessions at SRCCON
subtitle: Our peer-led sessions combine skillsharing, discussion, and collaboration.
section: sessions
sub-section: interior
background: stickerdots
byline: Erik Westra
permalink: /sessions/
---

The following sessions have been confirmed for SRCCON 2017. Huge thanks to all who submitted proposals, and to the [community panel](#community-review) that helped us during the review process.

Some session descriptions here may evolve between now and SRCCON. This year's final schedule will reflect any updates and include an evening slate of fun, informal talks, discussions, and activities. The complete [2017 SRCCON schedule is available here](http://schedule.srccon.org).

<div class="session-proposal-list">{% comment %}The one-line if statement below is ugly but prevents massive whitespace in the template{% endcomment %}
{% for proposal in site.data.sessions %}
    {% if proposal.facilitator.size > 0 and proposal.facilitator_twitter.size > 0 %}{% capture facilitator_name %}<a href="https://twitter.com/{{ proposal.facilitator_twitter }}">{{ proposal.facilitator }}</a>{% endcapture %}{% elsif proposal.facilitator.size > 0 %}{% capture facilitator_name %}{{ proposal.facilitator }}{% endcapture %}{% else %}{% assign facilitator_name = false %}{% endif %}{% if proposal.cofacilitator.size > 0 and proposal.cofacilitator_twitter.size > 0 %}{% capture cofacilitator_name %}<a href="https://twitter.com/{{ proposal.cofacilitator_twitter }}">{{ proposal.cofacilitator }}</a>{% endcapture %}{% elsif proposal.cofacilitator.size > 0 %}{% capture cofacilitator_name %}{{ proposal.cofacilitator }}{% endcapture %}{% else %}{% assign cofacilitator_name = false %}{% endif %}{% if proposal.cofacilitator_two.size > 0 and proposal.cofacilitator_two_twitter.size > 0 %}{% capture cofacilitator_two_name %}<a href="https://twitter.com/{{ proposal.cofacilitator_two_twitter }}">{{ proposal.cofacilitator_two }}</a>{% endcapture %}{% elsif proposal.cofacilitator_two.size > 0 %}{% capture cofacilitator_two_name %}{{ proposal.cofacilitator_two }}{% endcapture %}{% else %}{% assign cofacilitator_two_name = false %}{% endif %}
    <div class="session-proposal" id="proposal-{{ proposal.id }}">
        <h2 class="session-title"><a href="#proposal-{{ proposal.id }}">{{ proposal.title }} <span class="permalink">&para;</span></a></h2>
        {% if facilitator_name %}<p class="facilitator">Facilitated by {{ facilitator_name }}{% if cofacilitator_name %} &amp; {{ cofacilitator_name }}{% endif %}{% if cofacilitator_two_name %} &amp; {{ cofacilitator_two_name }}{% endif %}</p>{% endif %}
        <p class="session-description">{{ proposal.description | markdownify }}</p>
    </div>
{% endfor %}
</div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script src="/media/js/listfilter.min.js"></script>
<script>
var filter = ListFilter({
    listContainer: '.session-proposal-list',
    filterItemClass: '.session-proposal'
});
</script>

<span id="community-review"></span>

## Community reviewers

We'd also like to thank the folks who helped us select this amazing slate of sessions! We reached out to community members with a range of experiences and perspectives to make sure that SRCCON would have sessions that responded to your needs.

Thank you, community reviewers!

* Michael Grant
* Chris Groskopf
* Geoff Hing
* Greta Kaul
* Dolly Li
* Haoyun Su
* Christine Zhang

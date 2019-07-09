---
layout: layout
section: sessions
photocredit: Erik Westra
photocredit_url: http://www.westraco.com/
permalink: /sessions/
title: SRCCON 2019 — Sessions
---

# SRCCON 2019 Sessions

The program at SRCCON is built around hands-on, participatory sessions, [and also makes space](/program) for emergent conversations, evening activities, and time to talk with the people you meet. Our [conference schedule for 2019](https://schedule.srccon.org) is built from the sessions listed here.

We have a few sessions and facilitators still to confirm, and some descriptions here may evolve between now and SRCCON. Thank you to everyone who submitted proposals, and to the [community panel](#community-review) that helped us during the review process!

<div class="session-proposal-list">{% comment %}The one-line if statement below is ugly but prevents massive whitespace in the template{% endcomment %}
{% for proposal in site.data.sessions %}
    {% if proposal.facilitator.size > 0 and proposal.facilitator_twitter.size > 0 %}{% capture facilitator_name %}<a href="https://twitter.com/{{ proposal.facilitator_twitter }}">{{ proposal.facilitator }}</a>{% endcapture %}{% elsif proposal.facilitator.size > 0 %}{% capture facilitator_name %}{{ proposal.facilitator }}{% endcapture %}{% else %}{% assign facilitator_name = false %}{% endif %}{% if proposal.cofacilitator.size > 0 and proposal.cofacilitator_twitter.size > 0 %}{% capture cofacilitator_name %}<a href="https://twitter.com/{{ proposal.cofacilitator_twitter }}">{{ proposal.cofacilitator }}</a>{% endcapture %}{% elsif proposal.cofacilitator.size > 0 %}{% capture cofacilitator_name %}{{ proposal.cofacilitator }}{% endcapture %}{% else %}{% assign cofacilitator_name = false %}{% endif %}{% if proposal.cofacilitator_two.size > 0 and proposal.cofacilitator_two_twitter.size > 0 %}{% capture cofacilitator_two_name %}<a href="https://twitter.com/{{ proposal.cofacilitator_two_twitter }}">{{ proposal.cofacilitator_two }}</a>{% endcapture %}{% elsif proposal.cofacilitator_two.size > 0 %}{% capture cofacilitator_two_name %}{{ proposal.cofacilitator_two }}{% endcapture %}{% else %}{% assign cofacilitator_two_name = false %}{% endif %}
    <div class="session-proposal" id="proposal-{{ proposal.id }}">
        <h2 class="session-title"><a href="#proposal-{{ proposal.id }}">{{ proposal.title }}</a></h2>
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

* Allie Kanik
* Andrea Suozzo
* Ariana Giorgi
* Audrey Carlsen
* Dana Amihere
* Dan Keemahill
* Mike Stucka

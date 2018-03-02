---
layout: 2015_layout
title: Your Proposals
subtitle: We're displaying all the proposed sessions for this year's SRCCON.
section: proposals
sub-section: interior
background: stickerdots
byline: Erik Westra
permalink: /sessions/proposals/
redirect_from:
  - /proposals/
---

We received 149 proposals for SRCCON this year. They were all amazing and are listed here. To see the sessions accepted for SRCCON 2017, visit the [Sessions page](/sessions).

{% comment %}We'll list proposed sessions for SRCCON 2017 here. After the call for proposals closes on April 7, we'll review them all and publish the list of accepted sessions prior to our [ticket lottery](/tickets) opening on May 3. If you have an idea for this year's SRCCON, you can [propose a session now](/sessions/proposals/pitch)!{% endcomment %}

<div class="session-proposal-list">{% comment %}The one-line if statement below is ugly but prevents massive whitespace in the template{% endcomment %}
{% for proposal in site.data.proposals %}
    {% if proposal.facilitator and proposal.facilitator_twitter %}{% capture facilitator_name %}<a href="https://twitter.com/{{ proposal.facilitator_twitter }}">{{ proposal.facilitator }}</a>{% endcapture %}{% elsif proposal.facilitator %}{% capture facilitator_name %}{{ proposal.facilitator }}{% endcapture %}{% else %}{% assign facilitator_name = false %}{% endif %}{% if proposal.cofacilitator and proposal.cofacilitator_twitter %}{% capture cofacilitator_name %}<a href="https://twitter.com/{{ proposal.cofacilitator_twitter }}">{{ proposal.cofacilitator }}</a>{% endcapture %}{% elsif proposal.cofacilitator %}{% capture cofacilitator_name %}and {{ proposal.cofacilitator }}{% endcapture %}{% else %}{% assign cofacilitator_name = false %}{% endif %}
    <div class="session-proposal" id="proposal-{{ proposal.id }}">
        <h2 class="session-title"><a href="#proposal-{{ proposal.id }}">{{ proposal.title }} <span class="permalink">&para;</span></a></h2>
        {% if facilitator_name %}<p class="facilitator">Proposed by {{ facilitator_name }}{% if cofacilitator_name %} and {{ cofacilitator_name }}{% endif %}</p>{% endif %}
        <p class="session-description">{{ proposal.description | markdownify }}</p>
    </div>
{% endfor %}
</div>

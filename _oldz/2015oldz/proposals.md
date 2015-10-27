---
layout: 2015_layout
title: Sessions
subtitle: SRCCON is built around two days of peer-led conversations, hands-on workshops, and skillshares. 
section: sessions
sub-section: interior
background: postits
permalink: /sessions/proposals/index.html
---
#Proposals

Session proposals are now closed, and we are reviewing the proposals below and building the SRCCON 2015 program. In the meantime, learn more about [how the selection process works and what it means to facilitate at SRCCON](/sessions).

<div class="session-proposal-list">{% comment %}The one-line if statement below is ugly but prevents massive whitespace in the template{% endcomment %}
{% for proposal in site.data.proposals %}
    {% if proposal.facilitator and proposal.facilitator_twitter %}{% capture facilitator_name %}<a href="https://twitter.com/{{ proposal.facilitator_twitter }}">{{ proposal.facilitator }}</a>{% endcapture %}{% elsif proposal.facilitator %}{% capture facilitator_name %}{{ proposal.facilitator }}{% endcapture %}{% else %}{% assign facilitator_name = false %}{% endif %}{% if proposal.cofacilitator and proposal.cofacilitator_twitter %}{% capture cofacilitator_name %}<a href="https://twitter.com/{{ proposal.cofacilitator_twitter }}">{{ proposal.cofacilitator }}</a>{% endcapture %}{% elsif proposal.cofacilitator %}{% capture cofacilitator_name %}and {{ proposal.cofacilitator }}{% endcapture %}{% else %}{% assign cofacilitator_name = false %}{% endif %}
    <div class="session-proposal" id="proposal-{{ proposal.id }}">
        <h2 class="session-title"><a href="#proposal-{{ proposal.id }}">{{ proposal.title }} <span class="permalink">&para;</span></a></h2>
        {% if facilitator_name %}<p class="facilitator">Proposed by {{ facilitator_name }}{% if cofacilitator_name %} and {{ cofacilitator_name }}{% endif %}</p>{% endif %}
        <p class="session-description">{{ proposal.description }}</p>
    </div>
{% endfor %}
</div>
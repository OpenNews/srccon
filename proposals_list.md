---
layout: layout
section: sessions
photocredit: Erik Westra
photocredit_url: http://www.westraco.com/
permalink: /sessions/proposals/
---

# SRCCON 2018 Session Proposals

Thank you to everyone who submitted a session idea for SRCCON this year—what an amazing list! After we review each proposal, we'll notify everyone about their session status by the end of April.

<div class="session-proposal-list">{% comment %}The one-line if statement below is ugly but prevents massive whitespace in the template{% endcomment %}
{% for proposal in site.data.proposals %}
    {% if proposal.facilitator and proposal.facilitator_twitter %}{% capture facilitator_name %}<a href="https://twitter.com/{{ proposal.facilitator_twitter }}">{{ proposal.facilitator }}</a>{% endcapture %}{% elsif proposal.facilitator %}{% capture facilitator_name %}{{ proposal.facilitator }}{% endcapture %}{% else %}{% assign facilitator_name = false %}{% endif %}{% if proposal.cofacilitator and proposal.cofacilitator_twitter %}{% capture cofacilitator_name %}<a href="https://twitter.com/{{ proposal.cofacilitator_twitter }}">{{ proposal.cofacilitator }}</a>{% endcapture %}{% elsif proposal.cofacilitator %}{% capture cofacilitator_name %}{{ proposal.cofacilitator }}{% endcapture %}{% else %}{% assign cofacilitator_name = false %}{% endif %}
    <div class="session-proposal" id="proposal-{{ proposal.id }}">
        <h2 class="session-title"><a href="#proposal-{{ proposal.id }}">{{ proposal.title }}{% comment %} <span class="permalink">&para;</span>{% endcomment %}</a></h2>
        {% if facilitator_name %}<p class="facilitator">Proposed by {{ facilitator_name }}{% if cofacilitator_name %} and {{ cofacilitator_name }}{% endif %}</p>{% endif %}
        <div class="session-description">{{ proposal.description | markdownify }}</div>
    </div>
{% endfor %}
</div>

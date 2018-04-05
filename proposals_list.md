---
layout: layout
section: sessions
photocredit: Erik Westra
photocredit_url: http://www.westraco.com/
permalink: /sessions/proposals/
---

# SRCCON 2018 Session Proposals

We'll update this list through the end of our call for participation on April 13, then review them all and notify everyone about their session status by the end of April. We hope these proposals—along with our [proposal guide](/sessions/proposal-guide/) and [walkthrough of the call for participation form](https://opennews.org/blog/srccon-participation-howto)—help spark ideas about how _you'd_ like to participate.

If you'd like to take part in this year's SRCCON—as a facilitator, an attendee, or in any other way—you should [fill out our CFP](/sessions/proposals/pitch)!

<div class="session-proposal-list">{% comment %}The one-line if statement below is ugly but prevents massive whitespace in the template{% endcomment %}
{% for proposal in site.data.proposals %}
    <div class="session-proposal" id="proposal-{{ proposal.id }}">
        <h2 class="session-title"><a href="#proposal-{{ proposal.id }}">{{ proposal.title }}{% comment %} <span class="permalink">&para;</span>{% endcomment %}</a></h2>
        {% if proposal.facilitator %}<p class="facilitator">Proposed by {{ proposal.facilitator }}{% if proposal.cofacilitator %} and {{ proposal.cofacilitator }}{% endif %}</p>{% endif %}
        <div class="session-description">{{ proposal.description | markdownify }}</div>
    </div>
{% endfor %}
</div>

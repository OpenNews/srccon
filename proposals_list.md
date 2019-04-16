---
layout: layout
section: sessions
photocredit: Erik Westra
photocredit_url: http://www.westraco.com/
permalink: /sessions/proposals/
---

# SRCCON 2019 Session Proposals

We'll update this list through the end of our call for participation on April 24, then review them all and notify everyone about their session status by May 10. We hope these proposals—along with our [proposal guide](/sessions/proposal-guide/)—help spark ideas about how _you'd_ like to participate.

If you'd like to take part in this year's SRCCON—as a facilitator, an attendee, or in any other way—you should [fill out our CFP](/participation/form/)!

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

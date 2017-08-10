---
layout: 2015_layout
title: Sessions
subtitle: SRCCON is built around two days of peer-led conversations, hands-on workshops, and skillshares.
section: sessions
sub-section: interior
background: postits
permalink: /sessions/index.html
---

The following sessions have been accepted to SRCCON. We thank all who submitted proposals. Session descriptions will evolve in the weeks leading up to SRCCON, and the final schedule will reflect these updates and include an evening slate of fun, informal talks and discussions.

SRCCON will run from 9am till 9pm on Thursday, June 25 (including breakfast and non-session evening activities), and from 10am till 6:15pm on Friday, June 26. We will publish the complete SRCCON schedule in June.

<div class="session-proposal-list">{% comment %}The one-line if statement below is ugly but prevents massive whitespace in the template{% endcomment %}
{% for proposal in site.data.sessions %}
    {% if proposal.facilitator and proposal.facilitator_twitter %}{% capture facilitator_name %}<a href="https://twitter.com/{{ proposal.facilitator_twitter }}">{{ proposal.facilitator }}</a>{% endcapture %}{% elsif proposal.facilitator %}{% capture facilitator_name %}{{ proposal.facilitator }}{% endcapture %}{% else %}{% assign facilitator_name = false %}{% endif %}{% if proposal.cofacilitator and proposal.cofacilitator_twitter %}{% capture cofacilitator_name %}<a href="https://twitter.com/{{ proposal.cofacilitator_twitter }}">{{ proposal.cofacilitator }}</a>{% endcapture %}{% elsif proposal.cofacilitator %}{% capture cofacilitator_name %}{{ proposal.cofacilitator }}{% endcapture %}{% else %}{% assign cofacilitator_name = false %}{% endif %}{% if proposal.cofacilitator_two and proposal.cofacilitator_two_twitter %}{% capture cofacilitator_two_name %}<a href="https://twitter.com/{{ proposal.cofacilitator_two_twitter }}">{{ proposal.cofacilitator_two }}</a>{% endcapture %}{% elsif proposal.cofacilitator_two %}{% capture cofacilitator_two_name %}{{ proposal.cofacilitator_two }}{% endcapture %}{% else %}{% assign cofacilitator_two_name = false %}{% endif %}
    <div class="session-proposal" id="proposal-{{ proposal.id }}">
        <h2 class="session-title"><a href="#proposal-{{ proposal.id }}">{{ proposal.title }} <span class="permalink">&para;</span></a></h2>
        {% if facilitator_name %}<p class="facilitator">Facilitated by {{ facilitator_name }}{% if cofacilitator_name and cofacilitator_two_name %}, {% elsif cofacilitator_name %} and{% endif %} {% if cofacilitator_name %}{{ cofacilitator_name }}{% endif %}{% if cofacilitator_two_name %}, and {{ cofacilitator_two_name }}{% endif %}</p>{% endif %}
        <p class="session-description">{{ proposal.description }}</p>
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

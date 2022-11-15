---
layout: layout_hub
permalink: /srccon-care-2022/program/
logo: /media/img/srccon_care_header.png
logo_link: /srccon-care-2022/
share_image: /media/img/srccon_care_logo_share.png
title: SRCCON:CARE — December 8-9, 2022 — Online
description: Join us for two days of hands-on sessions and emergent conversations to reflect on caring as a practice in journalism.
main_footer: true
---

<div class="page-intro">    
    <div class="sub-nav">
        Want to get involved? Get in touch! 
        <span class="line-splitter"></span>
        <span class="contact-options"><a href="https://twitter.com/srccon">Twitter</a>
        <span class="line-splitter">&bull;</span>
        <a href="mailto:srccon@opennews.org">Email</a></span>
        <a href="/care/participation/form" class="button">Join us at SRCCON!</a>
    </div>
</div>

# Our program

SRCCON:CARE is community-driven and peer-led, with a mix of intimate conversations, outcome-oriented workshops, and social sessions that help folks step out of work mode when they need to. Our schedule outline and session list appears below.

## Schedule

We’ll be gathering over two days, with generous breaks. Reserve these blocks on your calendar now:

<table class="time-blocks">
  <thead>
    <th>Date</th>
    <th>Blocks (all in ET)</th>
  </thead>
  <tbody>
    <tr>
      <td>December 8 (Thu)</td>
      <td>
        <ul>
          <li>12-12:45pm: Welcome + group gathering</li>
          <li>Break</li>
          <li>1-2pm: Sessions</li>
          <li>Break</li>
          <li>2:30-3:30pm: Sessions</li>          
        </ul>
      </td>
    </tr>
    <tr>
      <td>December 9 (Fri)</td>
      <td>
        <ul>
          <li>12-1pm: Sessions</li>
          <li>Break</li>
          <li>1:30-2:30pm: Sessions</li>
          <li>Break</li>
          <li>2:30-3:15pm: Closing + group gathering</li>          
        </ul>
      </td>
    </tr>
  </tbody>
</table>

## Sessions 

Our schedule will include the sessions below. Details may evolve as we approach the event, and we have a couple final sessions still to confirm, so check back for updates. Thank you to all the community members who proposed ideas for SRCCON:CARE! 

<div class="session-proposal-list">{% comment %}The one-line if statement below is ugly but prevents massive whitespace in the template{% endcomment %}
{% for proposal in site.data.sessions_care_2022 %}
    <div class="session-proposal" id="proposal-{{ proposal.id }}">
        <h4 class="session-title"><a href="#proposal-{{ proposal.id }}">{{ proposal.title }}</a></h4>
        {% if proposal.facilitators %}<p class="facilitator">Facilitated by {{ proposal.facilitators }}</p>{% endif %}
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


{% include srccon_care_2022_footer.html %}
---
layout: layout
section: remote
permalink: /documentation/
title: SRCCON 2019 — Documentation
---

# SRCCON 2019 Documentation

It's important to us to keep SRCCON small enough to feel friendly and conversational, but we also care about getting the ideas and conversations that take place at SRCCON into the wider world. The most important way this happens is when attendees return to their newsrooms and put new skills and approaches to work, but we also document SRCCON as extensively as possible. This page collects resources you can refer back to as you bring SRCCON home with you:

* [Session transcripts](#session-transcripts)
* [Session notes & resources](#session-notes--resources)
* [Session write-ups on Source](#session-write-ups)

## Session Transcripts

Our live-captioning team will transcribe about 16 sessions at SRCCON. Sessions that have stenographers are marked on [our full schedule](https://schedule.srccon.org), or you can use the lists below. If you were in a session and you notice something that needs to be fixed, we'd love your [pull requests](https://github.com/opennews/srccon) or [emails](mailto:srccon@opennews.org).

<div>
    <h3>Thursday transcribed sessions</h3>
    <table>{% assign thursday = site.data.schedule | where:"day","Thursday" %}
{% for session in thursday %}
        {% if session.transcription != "" %}<tr><td>{{ session.time }}</td><td><a class="session-title" href="/transcripts/SRCCON2019-{{ session.id }}">{{ session.title }}</a></td></tr>{% endif %}
{% endfor %}
    </table>
</div>

<div>
    <h3>Friday transcribed sessions</h3>
    <table>{% assign friday = site.data.schedule | where:"day","Friday" %}
{% for session in friday %}
        {% if session.transcription != "" %}<tr><td>{{ session.time }}</td><td><a class="session-title" href="/transcripts/SRCCON2019-{{ session.id }}">{{ session.title }}</a></td></tr>{% endif %}
{% endfor %}
    </table>
</div>

## Session Notes & Resources

All sessions at SRCCON have a collaborative etherpad that facilitators and attendees can use to share links and capture notes on discussions as they take place. Each entry on [our schedule](https://schedule.srccon.org) has a link to that session's etherpad. We also collect slide decks, worksheets, and other documentation right here—if you're a facilitator and you have session resources to share, [let us know](mailto:srccon@opennews.org)!

* ["“Abandon normal instruments”: Sideways strategies for defeating creative block" session notes](https://etherpad.opennews.org/p/SRCCON2019-creative-strategies)
* ["“Abandon normal instruments”: Sideways strategies for defeating creative block" slides](https://docs.google.com/presentation/d/1urnD-lnBjX2TxGvqAuWpT_y5TKV3-vzgXd7pf7fYScc/edit#slide=id.g5d09e5e8e8_0_5)
* ["A playbook for reporters interested in reaching people at risk of being undercounted" session notes](https://etherpad.opennews.org/p/SRCCON2019-census-coverage-playbook)
* ["Beat as a product: Lessons from product innovation for the newsroom" session notes](https://etherpad.opennews.org/p/SRCCON2019-beat-as-product)
* ["Being in the room: the hard work of interview-based hiring" session notes](https://etherpad.opennews.org/p/SRCCON2019-interview-based-hiring)
* ["Building capacity, impact, and trust by tapping into expertise outside the newsroom" session notes](https://etherpad.opennews.org/p/SRCCON2019-expertise-outside-newsroom)
* ["CMS Demos: Approaches to Helping Our Newsrooms Do Their Best Work" session notes](https://etherpad.opennews.org/p/SRCCON2019-cms-demos)
* ["Calling All Media Diversity Avengers: Now’s the time to act." session notes](https://etherpad.opennews.org/p/SRCCON2019-media-diversity-allies)
* ["Changing journalism’s awards culture" session notes](https://etherpad.opennews.org/p/SRCCON2019-changing-awards-culture)
* ["Creative ways to teach complex issues" session notes](https://etherpad.opennews.org/p/SRCCON2019-creative-teaching)
* ["Creative ways to teach complex issues" slides](https://docs.google.com/presentation/d/1qujD1cpVAkaPOq0YPqrIKxHJcbkQo97385xNPTve_98/edit#slide=id.p1)
* ["Designing the next phase for newsroom technologists" slides](https://docs.google.com/presentation/d/1NdD8FDz4qTFD40m9H2ECZXBLCDugY7MsceCcHsQzlkM/edit#slide=id.p)
* ["Document this conference! An introduction to Library." session notes](https://etherpad.opennews.org/p/SRCCON2019-document-library)
* ["Engineering Beyond Blame" session notes](https://etherpad.opennews.org/p/SRCCON2019-engineering-beyond-blame)
* ["Engineering Beyond Blame" slides](https://docs.google.com/presentation/d/1P9b8K2OOmD_A-eG5Cy8FfLQ8UNhe5_KfeRgsAgcNfMs/edit#slide=id.g5dbc31ce86_0_0)
* ["Fade In: What Data Journalism Can Learn from Screenwriting" session notes](https://etherpad.opennews.org/p/SRCCON2019-learning-from-screenwriting)
* ["Fade In: What Data Journalism Can Learn from Screenwriting" slides](https://docs.google.com/presentation/d/1yaQiVIek6JZ6LO8n11aNS0XIp2pJ6baRux3sFlY0ldo/edit)
* ["Fix your feedback loop: Letting people, not polls, drive your election coverage" session notes](https://etherpad.opennews.org/p/SRCCON2019-people-polls-elections)
* ["Fix your feedback loop: Letting people, not polls, drive your election coverage" slides](https://docs.google.com/presentation/d/1pYqr86Sqr5Hz48PcEEY2lL3dK-s_3jwX-h9Qq0IL4H0/edit#slide=id.g2432869b74_0_328)
* ["Game of Newsletters: A song of inboxes and subject lines" session notes](https://etherpad.opennews.org/p/SRCCON2019-newsletter-strategy)
* ["Game of Newsletters: A song of inboxes and subject lines" slides](https://docs.google.com/presentation/d/1f5YugZzEf3BBbNuPqqh90ZX8l2pXzI0PSkvwGJYwkIc/edit#slide=id.p)
* ["Game of Newsletters: A song of inboxes and subject lines" cards & worksheets](https://docs.google.com/document/d/1KY4pz9p9FaSinF_Fzt7CeZngS4iasKb7-PccRqa0jJs/edit)
* ["Ghosts in the Machine: How technology is shaping our lives and how we can build a better way" session notes](https://etherpad.opennews.org/p/SRCCON2019-ghosts-in-the-machine)
* ["How are we in community together?" session notes](https://etherpad.opennews.org/p/SRCCON2019-how-are-we-in-community)
* ["How can newsrooms be more active catalysts for change?" session notes](https://etherpad.opennews.org/p/SRCCON2019-catalysts-for-change)
* ["How can newsrooms be more active catalysts for change?" slides](https://docs.google.com/presentation/d/12P2I-tqoddAz-0XgixpkApAuMykrX0YzARo-EuJw5PI/edit)
* ["How to edit data as seriously as we edit words" session notes](https://etherpad.opennews.org/p/SRCCON2019-editing-data)
* ["How to re-org your newsroom around product without breaking it" session notes](https://etherpad.opennews.org/p/SRCCON2019-newsroom-reorg-product)
* ["How to re-org your newsroom around product without breaking it" slides](https://docs.google.com/presentation/d/1-Oh-6QKDemj7zZwG0H5C3F_kPfnFuAJGNehUCrZqOpg/edit)
* ["If I knew then what I know now" session notes](https://etherpad.opennews.org/p/SRCCON2019-if-i-knew-then)
* ["Let’s JAMstack! How to Make Data-driven Static Sites" session notes](https://etherpad.opennews.org/p/SRCCON2019-data-driven-static-sites)
* ["Let’s JAMstack! How to Make Data-driven Static Sites" slides](https://jamtalk.netlify.com/)
* ["Let’s build some ethical advertising" session notes](https://etherpad.opennews.org/p/SRCCON2019-ethical-advertising)
* ["Making The Case For Remote Work" session notes](https://etherpad.opennews.org/p/SRCCON2019-case-for-remote-work)
* ["Making The Case For Remote Work" slides](https://docs.google.com/presentation/d/1ZtvYjubuHt4vVt8ocLfEMcq1EbK6KADkIZe5aNVubP4/edit#slide=id.p)
* ["Meeting management challenges in local newsrooms" session notes](https://etherpad.opennews.org/p/SRCCON2019-local-newsroom-management)
* ["Meeting management challenges in local newsrooms" documentation](https://drive.google.com/drive/folders/1a883gDNLZs2ASjeNE78GslzWRGRoqJr_)
* ["Membership Has its Privileges (and They Are Not Just for the Privileged)" session notes](https://etherpad.opennews.org/p/SRCCON2019-membership-privileges)
* ["Murder Mystery: Collaborative Journalism Edition" session notes](https://etherpad.opennews.org/p/SRCCON2019-murder-mystery-collaborative-journalism)
* ["Noise & Signal: Knowing when to adopt new tech, and when to ignore it" session notes](https://etherpad.opennews.org/p/SRCCON2019-adopting-new-tech)
* ["Noise & Signal: Knowing when to adopt new tech, and when to ignore it" slides](https://docs.google.com/presentation/d/1_np-Qy6gjfJ-Y8no3pncR1VdXFG2uSuUBa74MKXgKug/edit#slide=id.p)
* ["Proud to be a Platypus: Finding Your Own Innovative Role in News" session notes](https://etherpad.opennews.org/p/SRCCON2019-proud-platypus)
* ["Proud to be a Platypus: Finding Your Own Innovative Role in News" slides](https://docs.google.com/presentation/d/1XZxPxSnW1vG00EIQYaUwtNGssbfZOZozqt-o-U9oIBA/edit)
* ["Proud to be a Platypus: Finding Your Own Innovative Role in News" worksheet](https://docs.google.com/document/d/1IWMeKEPx5JftNLZdVS06q-spp7sCLEPV7I0RE0w8D1c/edit)
* ["Spreadsheets IRL: The How and Why of Making Data With Your Community" session notes](https://etherpad.opennews.org/p/SRCCON2019-making-data-with-community)
* ["Spreadsheets IRL: The How and Why of Making Data With Your Community" slides](https://docs.google.com/presentation/d/1ZEGG-lmCy7VWYK6LGogZLa7bmbQzzqCB-GFLWIPEDqo/edit)
* ["State of Newsroom Diversity Reports" session notes](https://etherpad.opennews.org/p/SRCCON2019-newsroom-diversity-reports)
* ["Staying with the trouble: Doing good work in terrible times" session notes](https://etherpad.opennews.org/p/SRCCON2019-good-work-troubling-times)
* ["Steps to getting a local news startup off the ground" session notes](https://etherpad.opennews.org/p/SRCCON2019-local-news-startups)
* ["Steps to getting a local news startup off the ground" worksheet](https://docs.google.com/document/d/1h2bfiChVPUoF_4zoE669y7Oeb8KzuAf-3KIwqlCsGi0/edit#heading=h.dox4zdl28dq6)
* ["Steps to getting a local news startup off the ground" playbook](https://shorensteincenter.org/playbook-for-local-nonprofit-news-outlets/)
* ["Structured communication: Tools you can use to change culture and help your team feel heard" session notes](https://etherpad.opennews.org/p/SRCCON2019-structured-communication)
* ["Structured communication: Tools you can use to change culture and help your team feel heard" slides](https://docs.google.com/presentation/d/1hsTATpIiD6T_JGbJIGgBh_P44CAF17humnasvDUlcvk/edit?ts=5d271404#slide=id.g5a63c046d2_0_174)
* ["The Geeks Won: Now What?" session notes](https://etherpad.opennews.org/p/SRCCON2019-geeks-won-now-what)
* ["The Geeks Won: Now What?" slides](https://docs.google.com/presentation/d/17T372cPhimiNyhmmxBZs6wawV7G6m3USo6_UjvD3ZPg/edit#slide=id.p)
* ["Training: Finding new data sources with search and exploration tools" session notes](https://etherpad.opennews.org/p/SRCCON2019-training-data-sources)
* ["We should rethink the way we think about percentages" slides](https://docs.google.com/presentation/d/1AIn7DeNzUSB96HK9iy6Kw2fl2w5uS28Qs1Uow7WNVOc/edit)
* ["What happens to journalism, when AI eats the world?" session notes](https://etherpad.opennews.org/p/SRCCON2019-ai-eats-the-world)
* ["What happens to journalism, when AI eats the world?" slides](https://docs.google.com/presentation/d/1EM21pf0A3DzP72NNU9zK6ejqhxafww4Px4jNCpItVJ4/edit)
* ["Why it matters — Designing for impact" slides](https://docs.google.com/presentation/d/1iUrxAMbf6FmBmkd2C03G8-LBy82MCyxg2mTi6k3h-YA/edit#slide=id.p)

## Session Write-Ups

In the leadup to SRCCON 2019, we’ll feature a selection of previews with session facilitators about the topics they're bringing to this year's event. You can [keep up with the series on Source](https://source.opennews.org). After this year's SRCCON, we'll also publish a series of session summaries that dig into the things people learned during conversations and workshops.

<p class="sponsor-tag">Transcription at SRCCON is made possible by <a href="https://www.lenfestinstitute.org/"><img src="/media/img/partners/lenfest.png" class="" alt="The Lenfest Institute"></a></p>

<!-- NOTE: We should add an attendee writeups section here too -->
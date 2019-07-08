---
layout: layout
section: remote
permalink: /transcription/index.html
---

# Transcription

It's important to us to keep SRCCON small enough to feel friendly and conversational, but we also care about getting the ideas and conversations that take place at SRCCON into the wider world. The most important way this happens is when attendees return to their home newsrooms and put their new skills and approaches to work, but we also document SRCCON as extensively as possible.

Our live-captioning team will transcribe about 16 sessions at SRCCON. Sessions that have stenographers are marked on [our full schedule](https://schedule.srccon.org), or you can use the lists below. Live streams will be available during the event, and we'll post links to the archives here afterward.

<div>
    <h3>Thursday transcribed sessions</h3>
    <table>{% assign thursday = site.data.schedule | where:"day","Thursday" %}
{% for session in thursday %}
        {% if session.transcription != "" %}<tr><td>{{ session.time }}</td><td><a class="session-title" href="https://aloft.nu/conf?name=srccon&session=2019-{{ session.id }}">{{ session.title }}</a></td></tr>{% endif %}
{% endfor %}
    </table>
</div>

<div>
    <h3>Friday transcribed sessions</h3>
    <table>{% assign friday = site.data.schedule | where:"day","Friday" %}
{% for session in friday %}
        {% if session.transcription != "" %}<tr><td>{{ session.time }}</td><td><a class="session-title" href="https://aloft.nu/conf?name=srccon&session=2019-{{ session.id }}">{{ session.title }}</a></td></tr>{% endif %}
{% endfor %}
    </table>
</div>


## Share Your Docs!

All sessions at SRCCON have a collaborative etherpad that facilitators and attendees can use to share links and capture notes on discussions as they take place. Each entry on [our schedule](https://schedule.srccon.org) has a link to that session's etherpad.

We also collect ntoes, slide decks, worksheets, and other documentation for a list of resources after SRCCON is over (you can [check out last year's right here](https://2018.srccon.org/documentation/)). If you take notes during a session or have material to share, [let us know](mailto:srccon@opennews.org)!


## Write-Ups

In the leadup to SRCCON 2019, we’ll feature a selection of previews with session facilitators about the topics they're bringing to this year's event. You can [keep up with the series on Source](https://source.opennews.org). After this year's SRCCON, we'll also publish a series of session summaries that dig into the things people learned during conversations and workshops.

<p class="sponsor-tag">Transcription at SRCCON is made possible by <a href="https://www.lenfestinstitute.org/"><img src="/media/img/partners/lenfest.png" class="" alt="The Lenfest Institute"></a></p>
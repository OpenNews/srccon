---
layout: layout
section: remote
permalink: /documentation/
---

# SRCCON 2019 Documentation

It's important to us to keep SRCCON small enough to feel friendly and conversational, but we also care about getting the ideas and conversations that take place at SRCCON into the wider world. The most important way this happens is when attendees return to their newsrooms and put new skills and approaches to work, but we also document SRCCON as extensively as possible. This page collects resources you can refer back to as you bring SRCCON home with you:

* [Session transcripts](#transcription)
* [Session notes & resources](#session-notes--resources)
* [Session write-ups on Source](#session-write-ups)

## Session Transcripts

Our live-captioning team will transcribe about 16 sessions at SRCCON. Sessions that have stenographers are marked on [our full schedule](https://schedule.srccon.org), or you can use the lists below. If you were in a session and you notice something that needs to be fixed, we'd love your [pull requests](https://github.com/opennews/srccon) or [emails](mailto:srccon@opennews.org).

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

## Session Notes & Resources

All sessions at SRCCON have a collaborative etherpad that facilitators and attendees can use to share links and capture notes on discussions as they take place. Each entry on [our schedule](https://schedule.srccon.org) has a link to that session's etherpad. We also collect slide decks, worksheets, and other documentation right here—if you're a facilitator and you have session resources to share, [let us know](mailto:srccon@opennews.org)!

## Session Write-Ups

In the leadup to SRCCON 2019, we’ll feature a selection of previews with session facilitators about the topics they're bringing to this year's event. You can [keep up with the series on Source](https://source.opennews.org). After this year's SRCCON, we'll also publish a series of session summaries that dig into the things people learned during conversations and workshops.

<p class="sponsor-tag">Transcription at SRCCON is made possible by <a href="https://www.lenfestinstitute.org/"><img src="/media/img/partners/lenfest.png" class="" alt="The Lenfest Institute"></a></p>

<!-- NOTE: We should add an attendee writeups section here too -->
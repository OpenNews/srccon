---
layout: layout
section: remote
permalink: /documentation/index.html
---

# Documentation

It's important to us to keep SRCCON small enough to feel friendly and conversational, but we also care about getting the ideas and conversations that take place at SRCCON into the wider world. The most important way this happens is when attendees return to their newsrooms and put new skills and approaches to work, but we also document SRCCON as extensively as possible. This page collects resources you can refer back to as you bring SRCCON home with you:

* [Session transcripts](#transcription)
* [Session notes & resources](#session-notes--resources)
* [Session write-ups on Source](#session-write-ups)

## Session Transcripts
Our live-captioning team transcribes about half the sessions at SRCCON. Sessions that had stenographers are marked on [our full schedule](https://schedule.srccon.org), or you can use the lists below. If you were in a session and you notice something that needs to be fixed, we'd love your [pull requests](https://github.com/opennews/srccon) or [emails](mailto:srccon@opennews.org).

<div>
    <h3>Thursday transcribed sessions</h3>
    <table>{% assign thursday = site.data.schedule | where:"day","Thursday" %}
{% for session in thursday %}
        {% if session.transcription != "" %}<tr><td>{{ session.time }}</td><td><a class="session-title" href="https://aloft.nu/conf?name=srccon&session=2018-{{ session.id }}">{{ session.title }}</a></td></tr>{% endif %}
{% endfor %}
    </table>
</div>

<div>
    <h3>Friday transcribed sessions</h3>
    <table>{% assign friday = site.data.schedule | where:"day","Friday" %}
{% for session in friday %}
        {% if session.transcription != "" %}<tr><td>{{ session.time }}</td><td><a class="session-title" href="https://aloft.nu/conf?name=srccon&session=2018-{{ session.id }}">{{ session.title }}</a></td></tr>{% endif %}
{% endfor %}
    </table>
</div>

## Session Notes & Resources

All sessions at SRCCON have a collaborative etherpad that facilitators and attendees can use to share links and capture notes on discussions as they take place. Each entry on [our schedule](https://schedule.srccon.org) has a link to that session's etherpad. We also collect slide decks, worksheets, and other documentation right here—if you're a facilitator and you have session resources to share, [let us know](mailto:srccon@opennews.org)!

* ["Archiving News Websites for the Long Long Term" session notes](https://docs.google.com/document/d/1gsjtKEkM7Cx2aA9fknnzN8I1b4WmqWuOKRjyD4iKcvo/edit)
* ["Toward an ethical framework for engagement" draft framework](https://medium.com/@jenniferbrandel/ethicsofengagement-db3ff5279603)

## Session Write-Ups

In the leadup to SRCCON 2018, we featured a selection of Q&As with session facilitators about the topics they brought to this year's event. You can [find the series on Source](https://source.opennews.org/articles/tags/srccon-2018/).

And each year after SRCCON, we also publish a series of [session summaries on Source](https://source.opennews.org/articles/tags/srccon-2018/) that dig into the things people learned during conversations and workshops. If you publish your own writeups or blog posts, we'd love to [hear about them](mailto:source@opennews.org) so we can help you share them with everyone!

<!-- NOTE: We should add an attendee writeups section here too -->
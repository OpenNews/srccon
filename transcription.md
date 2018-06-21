---
layout: layout
section: remote
permalink: /transcription/index.html
---

## Transcription

It's important to us to keep SRCCON small enough to feel friendly and conversational, but we also care about getting the ideas and conversations that take place at SRCCON into the wider world. The most important way this happens is when attendees return to their home newsrooms and put their new skills and approaches to work, but we also document SRCCON as extensively as possible.

Our live-captioning team transcribes about half the sessions at SRCCON. Live streams will available from this list, and then we'll replace links with cleaned-up archives.

<div>
    <h3>Thursday sessions</h3>
    <table>{% assign thursday = site.data.schedule | where:"day","Thursday" %}
{% for session in thursday %}
        {% if session.transcription != "" %}<tr><td>{{ session.time }}</td><td><a href="https://aloft.nu/srccon/2018-{{ session.id }}">{{ session.title }}</a></td></tr>{% endif %}
{% endfor %}
    </table>
</div>

<div>
    <h3>Friday sessions</h3>
    <table>{% assign friday = site.data.schedule | where:"day","Friday" %}
{% for session in friday %}
        {% if session.transcription != "" %}<tr><td>{{ session.time }}</td><td><a href="https://aloft.nu/srccon/2018-{{ session.id }}">{{ session.title }}</a></td></tr>{% endif %}
{% endfor %}
    </table>
</div>

## Write-Ups

In the leadup to SRCCON 2018, we’re featuring a selection of Q&As with session facilitators about the topics they're bringing to this year's event. You can [keep up with the series on Source](https://source.opennews.org/articles/tags/srccon-2018/).

After this year's SRCCON, we'll also publish a series of session summaries [on Source](https://source.opennews.org), digging into the things people learned during conversations and workshops.in the weeks that follow the conference. If you publish your own writeups or blog posts, we'd love to [hear about them](mailto:source@opennews.org) so we can help you share them with everyone!
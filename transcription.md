---
layout: 2015_layout
title: Remote participation
subtitle: Live transcription and writeups can bring some of SRCCON to you.
section: remote
sub-section: interior
background: remote
permalink: /transcription/index.html
---

It's important to us to keep SRCCON small enough to feel friendly and conversational, but we also care about getting the ideas and conversations that take place at SRCCON into the wider world. The most important way this happens is when attendees return to their home newsrooms and put their new skills and approaches to work, but we are also documenting SRCCON as extensively as possible.

## Transcription

We have a live-captioning team transcribing the sessions below. You can reach each session's transcription stream from its detail page (linked below), and we'll publish cleaned-up transcriptions here after the conference closes.

<div>
    <h3>Thursday sessions (Central Time)</h3>
    <table>{% assign thursday = site.data.schedule | where:"day","Thursday" | sort:"id" %}
{% for session in thursday %}
        {% if session.transcription != "" %}<tr><td>{{ session.time }}</td><td><a href="http://schedule.srccon.org/#_session-{{ session.id }}">{{ session.title }}</a></td></tr>{% endif %}
{% endfor %}
    </table>
</div>

<div>
    <h3>Friday sessions (Central Time)</h3>
    <table>{% assign friday = site.data.schedule | where:"day","Friday" | sort:"id" %}
{% for session in friday %}
        {% if session.transcription != "" %}<tr><td>{{ session.time }}</td><td><a href="http://schedule.srccon.org/#_session-{{ session.id }}">{{ session.title }}</a></td></tr>{% endif %}
{% endfor %}
    </table>
</div>

## Write-Ups

During and after SRCCON, we have a documentation team writing up session summaries, collecting resource lists, and more. We'll be [publishing the write-ups on Source](https://source.opennews.org) in the weeks that follow the conference, and also collecting write-ups and blog posts from attendees.

<div id="sponsortag">
<p><span>Transcription at SRCCON is made possible by <a href="https://slack.com/"></span><img src="/media/img/partners/slack.jpg" class="transcript" alt="Slack"></a>.</p>
</div>

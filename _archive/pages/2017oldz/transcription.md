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

Our live-captioning team transcribed about half the sessions at SRCCON this year. Live streams were available during these sessions, and links to the cleaned-up archives appear below.

<div>
    <h3>Thursday sessions</h3>
    <table>{% assign thursday = site.data.schedule | where:"day","Thursday" %}
{% for session in thursday %}
        {% if session.transcription != "" %}<tr><td>{{ session.time }}</td><td><a href="/transcripts/SRCCON2017-{{ session.id }}">{{ session.title }}</a></td></tr>{% endif %}
{% endfor %}
    </table>
</div>

<div>
    <h3>Friday sessions</h3>
    <table>{% assign friday = site.data.schedule | where:"day","Friday" %}
{% for session in friday %}
        {% if session.transcription != "" %}<tr><td>{{ session.time }}</td><td><a href="/transcripts/SRCCON2017-{{ session.id }}">{{ session.title }}</a></td></tr>{% endif %}
{% endfor %}
    </table>
</div>

## Write-Ups

In the leadup to SRCCON 2017, we’re featuring a selection of sessions from last year’s conference [on Source](https://source.opennews.org/articles/tags/srccon-spotlight/). Those write-ups include transcripts and audio when we have them, and brand-new interviews with the session facilitators. You can keep up with the series at [SRCCON Spotlight](https://source.opennews.org/articles/tags/srccon-spotlight/).

During and after this year's SRCCON, we'll also have a documentation team writing up session summaries, collecting resource lists, and more. We'll [publish everything on Source](https://source.opennews.org) in the weeks that follow the conference, and also collect write-ups and blog posts from attendees.

<div id="sponsortag">
    <span>Transcription at SRCCON is made possible by</span> <a href="http://www.facebook.com/"><img src="/media/img/partners/2017/facebook-logo.png" class="" alt="Facebook"></a>
</div>

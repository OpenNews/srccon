---
layout: layout
section: remote
permalink: /documentation/
---

# SRCCON 2018 Documentation

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
        {% if session.transcription != "" %}<tr><td>{{ session.time }}</td><td><a class="session-title" href="/transcripts/SRCCON2018-{{ session.id }}">{{ session.title }}</a></td></tr>{% endif %}
{% endfor %}
    </table>
</div>

<div>
    <h3>Friday transcribed sessions</h3>
    <table>{% assign friday = site.data.schedule | where:"day","Friday" %}
{% for session in friday %}
        {% if session.transcription != "" %}<tr><td>{{ session.time }}</td><td><a class="session-title" href="/transcripts/SRCCON2018-{{ session.id }}">{{ session.title }}</a></td></tr>{% endif %}
{% endfor %}
    </table>
</div>

## Session Notes & Resources

All sessions at SRCCON have a collaborative etherpad that facilitators and attendees can use to share links and capture notes on discussions as they take place. Each entry on [our schedule](https://schedule.srccon.org) has a link to that session's etherpad. We also collect slide decks, worksheets, and other documentation right here—if you're a facilitator and you have session resources to share, [let us know](mailto:srccon@opennews.org)!

* ["Approaching Collaboration: Lessons Learned from Building a Data Collaborative" slides](https://docs.google.com/presentation/d/1MVu2Rpb3Z7jH7GaYzuya5mPMGzQ7_FmATxZDAr_O5Ds/edit#slide=id.g345336d2eb_0_10)
* ["Archiving News Websites for the Long Long Term" slides](https://docs.google.com/presentation/d/1Igu2Xz-zeo18urr1fFf-ZmCydx6xxA_ma8NnotUdpXQ/edit?usp=sharing)
* ["Archiving News Websites for the Long Long Term" session notes](https://etherpad.opennews.org/p/SRCCON2018-archiving-news-websites)
* ["Archiving News Websites for the Long Long Term" condensed session notes](https://docs.google.com/document/d/1gsjtKEkM7Cx2aA9fknnzN8I1b4WmqWuOKRjyD4iKcvo/edit)
* ["Are you running an experiment, or are you just winging it?" slides](https://docs.google.com/presentation/d/1i7OjW7ho2f6b5P9n4nWKcWS9f1p50wL5_Yi6TCyFmGw/edit#slide=id.g3cb1948c9d_0_20)
* ["Are you running an experiment, or are you just winging it?" worksheet](https://docs.google.com/document/d/14H70owcFXItXF2bcDt7LJ1c_NLHnz4_MmOg9XMJGfTc/edit)
* ["Are you running an experiment, or are you just winging it?" session notes](https://etherpad.opennews.org/p/SRCCON2018-running-experiments)
* ["Building a community guide for immigrant journalists: How to survive and support" session notes](https://etherpad.opennews.org/p/SRCCON2018-community-immigrant-journalists)
* ["Building Resilience: Moving Beyond a Fear-Based Model of Change" session notes](https://etherpad.opennews.org/p/SRCCON2018-building-resilience)
* ["Democracy, Documenters and the City Scrapers" session notes](https://etherpad.opennews.org/p/SRCCON2018-democracy-documenters)
* ["Doing more data with less programming" Workbench launch post](https://medium.com/@Workbench/seriously-no-more-spreadsheets-imagining-the-data-journalism-workflow-of-the-future-386336e12048)
* ["Doing more data with less programming" session notes](https://etherpad.opennews.org/p/SRCCON2018-more-data-less-programming)
* ["Don’t Panic: the guide to working without an editor, even if you have one sitting right next to you" presentation](https://caseymm.github.io/no-editor-no-problem/)
* ["Getting sh*t done without authority" slides](https://docs.google.com/presentation/d/1vuwrw72lj52INAg4x_-jLOlJOsv4p-7QP-Xt-ogMzLs/edit#slide=id.p)
* ["Getting sh*t done without authority" session notes](https://etherpad.opennews.org/p/SRCCON2018-getting-it-done)
* ["Help drag FOIA (kicking and screaming) into the digital era" session notes](https://etherpad.opennews.org/p/SRCCON2018-foia-digital-era)
* ["How to give great feedback and look good doing it" slides](https://docs.google.com/presentation/d/1gD1F3Nu1Hquz3MYI2sNKYII640Ndv4XUfyt7zz3ku68/edit)
* ["How to give great feedback and look good doing it" tipsheet](https://docs.google.com/document/d/1_6WgjEc2HMXJwbzTfqszKs39oWs5Z5Pgudq_N6MP-dw/edit)
* ["How to give great feedback and look good doing it" session notes](https://etherpad.opennews.org/p/SRCCON2018-great-feedback)
* ["How to make a big transition and maintain your cool" session notes](https://docs.google.com/document/d/1qXxvRin0OTHkdQCzeRKRaYaYp8M9eJkIMsZ46Pe-v4Q/edit)
* ["I’m a stranger here myself: Building a newsroom roadmap for young journalists of color and their allies" session notes](https://etherpad.opennews.org/p/SRCCON2018-young-journalists-of-color)
* ["Kickoff Kit: helping new teams move faster by aligning early" slides](https://www.dropbox.com/s/b0zwxsz9pfl4d5y/Kickoff%20Kit.pdf?dl=0)
* ["Kickoff Kit: helping new teams move faster by aligning early" exercise packet](https://www.dropbox.com/s/i8nvfri3zh5jk8b/Kickoff%20Kit%20Packet.pdf?dl=0)
* ["Leading News Orgs to Water by Hacking Our Hiring" slides](https://docs.google.com/presentation/d/1rTJ4FY2Q-8zUGVlhMxDGdxLEi2u2_7NHHV1a4Z5db3U/edit)
* ["Leading News Orgs to Water by Hacking Our Hiring" session notes](https://etherpad.opennews.org/p/SRCCON2018-hacking-hiring)
* ["Leave the coasts" session notes](https://etherpad.opennews.org/p/SRCCON2018-leave-coasts)
* ["Let’s build the data journalism textbook we need, and break academic publishing while we’re at it" repo](https://github.com/datajtext/DataJournalismTextbook)
* ["Let’s build the data journalism textbook we need, and break academic publishing while we’re at it" session notes](https://etherpad.opennews.org/p/SRCCON2018-data-journalism-textbook)
* ["Let’s Make State Legislative Information Useful" session notes](https://etherpad.opennews.org/p/SRCCON2018-state-legislative-information)
* ["More Security Trainers Please!" session agenda](https://docs.google.com/document/d/1WudApPGHnzFSUqkZl5mWbl7G3GUlpWF5eqoybq1wvFs/edit#)
* ["More Security Trainers Please!" session notes](https://etherpad.opennews.org/p/SRCCON2018-security-trainers)
* ["Off the shelf and into the open: forging academia-journalism partnerships to bring findings out of journals and original research into reporting" session notes](https://etherpad.opennews.org/p/SRCCON2018-academia-journalism-partnerships)
* ["Preparing for security vulnerabilities if you’re an open source maintainer *or* user" session notes](https://etherpad.opennews.org/p/SRCCON2018-security-prep)
* ["Radical listening - How do you design a media membership program focused on participation" session writeup: "Designing a membership program in 75 minutes — with help from a few D20’s"](https://building.theatlantic.com/designing-a-membership-program-in-75-minutes-with-help-from-a-few-d20s-8b78bfc890f7)
* ["Radical listening - How do you design a media membership program focused on participation" session notes](https://etherpad.opennews.org/p/SRCCON2018-radical-listening-membership)
* ["Rebuilding Ad Tech: Open Source, Server to Server, Publisher First" slides](https://docs.google.com/presentation/d/1_6Kp6eMFEvB9nPHtzyJxOdiJPMxYn1KEFdyCWYBpK6o/edit#slide=id.gc6fa3c898_0_0)
* ["Rebuilding Ad Tech: Open Source, Server to Server, Publisher First" repo](https://github.com/washingtonpost/ad-schema)
* ["Rebuilding Ad Tech: Open Source, Server to Server, Publisher First" session notes](https://etherpad.opennews.org/p/SRCCON2018-rebuilding-ad-tech)
* ["Regression in the newsroom: When to use it and thinking about best practices" slides](https://docs.google.com/presentation/d/1RWYeoFv5LS1P5BHdUedEeDZkLYRMv5X-WTEk3DZPaOw/edit#slide=id.p)
* ["Regression in the newsroom: When to use it and thinking about best practices" session repo](https://github.com/fresques/RegressionInTheNewsroom)
* ["Regression in the newsroom: When to use it and thinking about best practices" session notes](https://etherpad.opennews.org/p/SRCCON2018-stats-newsroom)
* ["Reimagining news nerd career paths" slides](https://docs.google.com/presentation/d/1RnnnJTSfU6gwjB-muLwwG1fu2duVKtA6CMrZBvmcgRo/edit?ts=5b35827d#slide=id.g3cb4aad1d4_0_125)
* ["Reimagining news nerd career paths" session notes](https://etherpad.opennews.org/p/SRCCON2018-job-listings-career)
* ["Restoring our reader’s privacy in a time of none" slides](https://docs.google.com/presentation/d/1-hD8TY6SxIL9HE-lzpMqa3EwIMBSzeY2J-Yi05ZpdxM/edit#slide=id.p)
* ["Restoring our reader’s privacy in a time of none" session notes](https://etherpad.opennews.org/p/SRCCON2018-restoring-reader-privacy)
* ["Shedding light on the command line" slides](https://docs.google.com/presentation/d/1fxdX9oSNbRQnrX4kkGhJ-7H0zB8Je75ZwJ54aCgBEbY/edit#slide=id.g3a2d9e0b31_0_16)
* ["Shedding light on the command line" session notes](https://etherpad.opennews.org/p/SRCCON2018-light-command-line)
* ["Sick [journalist] theory: real talk about navigating disability in the newsroom" session notes](https://etherpad.opennews.org/p/SRCCON2018-disability-in-newsroom)
* ["Sure, You’re Making Tools. But Do People Use Them?" slides](https://docs.google.com/presentation/d/e/2PACX-1vSKa0BwHaOuOiIU67fPrMgJjmiRw_ZqIkt9U3_yEsQF-r6xh6CHwJoSEAuyRmGBRQvrRkVNnZxfIqSJ/pub?start=false&loop=false&delayms=3000)
* ["Sure, You’re Making Tools. But Do People Use Them?" session notes](https://etherpad.opennews.org/p/SRCCON2018-using-tools)
* ["Talk Less. Listen More. How Listening Can Help Journalists Begin to Repair Relationships with Marginalized or Ignored Communities" slides](https://docs.google.com/presentation/d/1ForeH9xqIxlaBSz2ZZCJiM8Gc2GqBCccUCo4latBRIg/edit)
* ["Talk Less. Listen More. How Listening Can Help Journalists Begin to Repair Relationships with Marginalized or Ignored Communities" session notes](https://etherpad.opennews.org/p/SRCCON2018-talk-less-listen-more)
* ["Time to grow: How to dig deep and stretch yourself in the midst of day-to-day survival" slides](https://docs.google.com/presentation/d/12vRqcRtZC32JnOYCPSRASlIhKLqDw5eSdjxQWR9gf6Q/edit#slide=id.p)
* ["Toward an ethical framework for engagement" draft framework](https://medium.com/@jenniferbrandel/ethicsofengagement-db3ff5279603)
* ["Toward an ethical framework for engagement" session notes](https://etherpad.opennews.org/p/SRCCON2018-ethical-engagement)
* ["The Balancing Act of Becoming a New Manager" session notes](https://etherpad.opennews.org/p/SRCCON2018-new-managers)
* ["The Newsroom Collaborative Manifesto" session notes](https://etherpad.opennews.org/p/SRCCON2018-newsroom-collaborative-manifesto)
* ["The Shape of Stories: Unleash Your :60 Storyteller" session notes](https://etherpad.opennews.org/p/SRCCON2018-shape-of-stories)
* ["Visualization as a Civil Right (bring your headphones!)" slides](https://docs.google.com/presentation/d/1ayhuQHKZn5fcyLUTQchDrsFmlgurWa7KouI24ltLfo8/edit#slide=id.p)
* ["Visualization as a Civil Right (bring your headphones!)" session notes](https://etherpad.opennews.org/p/SRCCON2018-visualization-civil-right)
* ["Visualizing data by hand" slides](https://docs.google.com/presentation/d/1aicq0BRkNWCcMRVG_aJjvQ8BVjdEQ5UwSJHVUcJkm_4/edit#slide=id.p1)
* ["Visualizing data by hand" session notes](https://etherpad.opennews.org/p/SRCCON2018-visualizing-data)
* ["Voice interfaces and their impact on journalism" slides](https://docs.google.com/presentation/d/1vuovjVQtmiogKvWqKQD4BBI8oQtEzuwCPwk9ILanuzQ/edit#slide=id.g3adbe71329_0_4)
* ["Voice interfaces and their impact on journalism" session notes](https://etherpad.opennews.org/p/SRCCON2018-voice-interfaces)
* ["We Went to Therapy And We’ll Tell You All About It" session notes](https://etherpad.opennews.org/p/SRCCON2018-newsroom-therapy)
* ["Whine & Shine: A support group for nerds, journalists and those who bridge the gap" the "how to work with me" worksheet](https://docs.google.com/document/d/1eKdfOiO6nAjfo-P-lx8UfyyTWDf56vN84kY5kiDqk9Y/edit)
* ["Whine & Shine: A support group for nerds, journalists and those who bridge the gap" the "how to work with us" worksheet](https://docs.google.com/document/d/10i41KrEexJ2On7GDvS_I3RddEVWCYfQjaIYtMGpfp_M/edit)
* ["Whine & Shine: A support group for nerds, journalists and those who bridge the gap" session notes](https://etherpad.opennews.org/p/SRCCON2018-bridging-gaps)
* ["Who Needs A Front End? – How To Leave The UX of Newsroom Tools to Slack" session repo](https://github.com/brizandrew/slack-graphics-request)
* ["Who Needs A Front End? – How To Leave The UX of Newsroom Tools to Slack" session notes](https://etherpad.opennews.org/p/SRCCON2018-slack-as-frontend)
* ["Without Free or Favor: Compelling readers to pay for news (tote bags not included)" slides](https://www.dropbox.com/s/396b7c4w1gboyem/SRCCON%202018_%20Without%20Free%20or%20Favor%20%281%29.pdf?dl=0)
* ["Without Free or Favor: Compelling readers to pay for news (tote bags not included)" canvas worksheet](https://www.dropbox.com/s/0axxtx031wi0uat/SRCCON%20Canvas.pdf?dl=0)

## Session Write-Ups

In the leadup to SRCCON 2018, we featured a selection of Q&As with session facilitators about the topics they brought to this year's event. You can [find the series on Source](https://source.opennews.org/articles/tags/srccon-2018/).

And each year after SRCCON, we also publish a series of [session summaries on Source](https://source.opennews.org/articles/tags/srccon-2018/) that dig into the things people learned during conversations and workshops. If you publish your own writeups or blog posts, we'd love to [hear about them](mailto:source@opennews.org) so we can help you share them with everyone!

<!-- NOTE: We should add an attendee writeups section here too -->
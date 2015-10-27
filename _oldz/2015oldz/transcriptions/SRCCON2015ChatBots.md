---
layout: 2015_layout
title: Session Transcripts
subtitle: A live transcription team captured the SRCCON sessions that were most conducive to a written record—about half the sessions, in all.
section: docs
sub-section: interior
background: books
byline: Nate Bolt
bylineurl: https://www.flickr.com/photos/boltron/3212284622/in/photolist-5TRNiC-4VkeqM-4VpqGm-4VkcGz-4Vpr1S-4Vken4-fmXRof-2YtFPR-fmHB44-dFxkXG-7yv4t7-4VnnAn-5A3XSn-4Vnnmv-4VnnqK-9uup4n-4Vnnv6-3ViP2v-4VnngF-4VkgVa-4VkeuZ-4Vkg5R-4VpmbC-4VpnDu-4Vk9rK-4VpqRL-4VpsPb-4VpuU3-4Vkf5D-4Vkdj6-4Vk8uc-b1TXEz-4VkhcX-mF5DPa-fmHXAB-r8mgB3-s5i4Mz-7i3R7t-og8qB5-fmXSCf-7i7Ky9-92YNnD-fmHDut-5C51hV-rMM8b3-k639ok-8FDPAB-apFhiP-rL2vRV-4VptiN
permalink: /docs/transcripts/chatbots/index.html
---

# Post Hoc Justifications for Newsroom Chat Bots

### Session Facilitator(s): Tom Nehil, Justin Myers

### Day & Time: Thursday, 12:30-1:30pm

### Room: Minnesota


All right. We're going to get started. This session we're talking about bots and all of the useful journalistic things they can do, in addition to the hilarious and fun things they can do. My name is Tom Nehil. I work at MinnPost here in Minneapolis. So I'm also happy to take Minneapolis after we talk about bots.


And I'm Justin Myers. I'm the automation editor at the Associated Press. So this is lots of my job. Sometimes they do journalism, sometimes they do, sometimes they don't.


So at MinnPost, we started communicating as a team using Campfire and then switched over to Slack. And at some point decided to hook up bots into our chatrooms and we use, I don't know if you say "who-bot," or "huh-bot," but it's the node based bot and the reason a that we did this in the beginning was just for fun. So our bot is named min bot and it can tell knock-knock jokes and tell horoscopes and all sorts of useful stuff like that. So that's fine but that's not exactly, like, something that you can justify spending a lot of time at work building. So the question that I kind of had for this and this session, and I don't really have the answer, so I'm hoping you guys have good ideas, or have built good ideas is:  How can we use these bots that the public is never going to see, we're never going to publish the bots necessarily. But what can we do as journalists, or as news people, better, easier, more effective. So I think I guess, ideally I think what we want to do is kind of just open up the floor, looking for both examples for stuff you've built or use that, like, do journalistic things, or also, just things that you think would be really good for a bot to do but you haven't necessarily built yet, and, you know, maybe by the end of SRCCON we'll have all that running and good to go.


Yeah, I feel like in general one of the things that I ask people at the AP is how do you spend your time and how would you like to spend why you time? And so, sort of, that difference between the two:  What's all of the tedious crap that you spend your time doing and how can we have, you know, a bot to take care some of that load for you. So hearing --


Can you give any examples of why you might use a bot?


So one of the scripts that I built, it's more useful in theory than it ended up being in practice, but we do a lot of work at Minn Post, following the Minnesota Legislature. So OpenStates, this great foundation, has built APIs for finding information about legislators. Implementing bills, and finding out what state they're from. So I wrote a script that works very badly. So we could be sit in a chatroom even though it's just a chatroom, do a fair amount of work and if we have a question about, for example a legislator, it's not like it's that hard to, like, open up a browser tab and search these things in Google, so that's why it ended up being more useful in theory than in practice, but you could ask, you could say, "MinnBot, who does so-and-so represent?" And it could kick back at you, their legislative district for example, and a link to a map. And that actually is useful because our districts in Minnesota are just letters and numbers but if you clicked on the map, you could figure out what towns were there, which would then give you the context that you needed to figure out what kind of—what kind of issues might be important to that person. And yeah, so that could also check, like, if we were following, like, a certain bill, we would be able to check the status of that or, like, the last thing that happened with that bill.

One thing that I didn't do with it. It was all based on ASCII, right? So you had to have the question. You would ask the bot and the bot would go and get the information. But I think something to extend that, that would be useful is if the bot were actively looking for information on certain things and knew that certain things were interesting to you. So, like, for me, those are the two things that the bot can do well, right? So there's, like, the things that you need to ask for and then there are the things where it's like continuously monitoring and it's going to tell you. So obviously, for certain pieces of legislation, building something that that, you know, we have just like a list that says, and we can have that in Slack. We just say, MinnBot, add this to the list of bills to watch. And then it would then alert of us of certain legislative actions like, like passed in the House or something like that. So that's something that we, like, maybe next session we'll try to build in.


I've try to build a few of the reporter-type bots. So the last 11 that I did was I guess, for a health care team at AP. So the Department of Health and human services has this page where they list any breaches of people's health care data, right? So the anthem breach where hey, we're a big health insurance company lost a bunch of people's data.

Basically how can we tell reporters and editors who cover those areas, or who cover health care, specifically, about these things that have happened. So we've got different thresholds and different settings for different people and they can sort of subscribe and say, "I'm interested in breaches of companies in Missouri that affect at least a million people." And I've got something that will tell them. If there's something like that.


Well, couldn't you just describe the tool? How does it alert them, like, Slack or email?


Email. Sorry, I should have mentioned that up front. So a lot of the sort of reporting bots that I've been working on, either work through email alerts, or through Panda. How many people here are familiar with Panda? So Panda is sort of this internal dataset library tool for newsrooms. So the idea is that you—all of your data reporters, for example, are putting data that they receive in this overall search server rather than just leaving it in spreadsheets on their computers where nobody else is going to find them.

And so some of the bots that I've been writing simply populate a dataset in Panda and then Panda has its own alerting—email alerting system and notifications that people can use.


Doesn't the Times have an earthquake bot that publishes directly interview the CMS. It doesn't talk to reporters, it just makes a story that's like a stub like there was an earthquake of this magnitude centered here at this time. And that's just now a story that people can flesh out as...


For that matter... there's a lot of interest in things like that. I think sometimes they're hard to write.


I think earthquakes are sort of the easiest possible thing there.


And the core problem there like translating structured data into stories can be applied to a bunch of other domains that a bot might be useful for. So, like, for instance at Fusion, we've been highlighting a couple bots on the audience development side and the analytics side because in both instances, on the analytics, it's simple to use, like, kind of a—you use like Google analytics API to get to get the stats of the story. And maybe if you do that on an automated routine, you can detect spikes and give the writer some positive feedback like, "Hey, your story's on fire!" And give them a little dopamine burst.


It could be like a little NBA jam announcers.


The audience development example that we used was—when, so, a bunch of us are on Facebook. It shouldn't be a—a bunch of our traffic is on Facebook. That shouldn't be a surprise to this audience. But the traffic can be boosted if you post on another Facebook page, or a news blog and what we did was when content was published, we queried Clout to find—we queried a service, I think it was CrowdTangle which looks at Facebook's universe and unifies posts that have high velocity. And so we unified pages that had relevant done it from a list of relevant organizations, things like Planned Parenthood and so when there was a match, we can plant that in the growth editor and say, you might want to match these pages. There's the journalistic applications but then there's also the audience development analytics applications and they can also use structured data to their stories that they didn't.


Yeah, I mean, one thing that we did, we did Airbnb post. So that's got an API and that's—the thing that I said that was really simple was we just ask, but then you don't have to break out of what you're doing. But yeah. Building in something where the bot's just checking, you know, relatively frequently, you can learn about something that's spiking or whatever. And then actually take action. I don't know what it would be. Move it up on the home page, whatever's relevant. So yeah, it's super useful to people who are kind of running site. Have any of you built any—yeah, sure.


So I've, I'm also at Fusion and I've been with Fusion for a while—eight days now.


Oh, yeah?


A long time.


but I've started looking in on the editorial side, as well, well, that's currently in the process of gathering steam. We're working on a story about how all the candidates that are running for president whether they're democratic or republican they're all running against Hillary Clinton. And so we have a bot that's basically scanning all of their Twitter feeds and every time one of them talking about Hillary Clinton just makes, grabs a tweet, retweets it, and also lets us know, and hopefully like in a week or so we'll have an example to go off of for the story. Like I said, this is literally my second week so I'm just getting started.


How does it let you know about—does it like archive them or...?


It archives them, and also right now, I have it running on Heroku. I'm just checking the logs.


Can you talk about setting up a bot in Heroku?


I actually learned how to do it from Tom Mayor, who's a worry of ours at Thunderdome and is now running a part of the Marshal Project. There may be another way to do this. This is just the way that I picked up from him. It's just because my programming skills are still very basic but I know Python pretty well. You just write a basic Python command line script—any libraries that it needs, you just need to make—it's a txt file where you list all of them. And PIP installs them and you just send them to Heroku. And a proc file that just says to run the scripts, basically. Python.py. And then you send it all to Heroku, and you know, for some bots in the past, I've just used the Twitter rest API. I would schedule it so that it would basically be runbot.py once an hour, and it would do that fine and it never reached enough that it actually costed money. For the Hillary one, it uses a streaming API, so I just had it run once and then I just bought the 7-dollar hobbyist tier. So it would never go to sleep and it's been fine.


Yeah, Heroku is really nice for setting up bots.


And like I said, it's perfect for my programming ability because it doesn't involve running a server, or the indications that's over my head.


Yeah, MinnBot runs Heroku, too.


And especially because I'm back at a company that loses Slack again. I'm getting into looking at Slack bots. You guys have some cool ones running. But I've seen some Slack bots where they have right under their page "push to Heroku" button. You don't have to write any code. You just push the button, and write to the web and it sets it up in Heroku for you, and then you just have to configure the information.


Maybe we could, like, brainstorm bots with, like, different functions.


I mean, that question of what are the things that you kind of have to do sort of regularly where maybe a bot could --


We have a few—I work at Dow Jones. And for there, a lot of the services that provide market data and news and whatnot to the whole of the organization. So, we have a couple of bots that we've set up. One of them is just a simple thing that lets people, in Slack, query for images. So you know, just look at our internal tool for our image databases, essentially, and post all those into Slack and that's kind of nice because Slack presents that. You can present it—the captions. You can present it, you know?


Is that something, like, producers use to find art for stories?


I think it will be—so it's a new tool that's starting to pick up a little bit. So I'm not sure exactly how it's going to—or where it's going to take off. And else have—and you can look up any stock price with simply with a bot. There's a logic for that and something that's kind of interesting, too, is we've run an IPO bot, recently. So that's basically just taken our IPO feed and whenever there's a change. So if a company withdraws their IPO, or changes their target price range, or something like that, those changes, they'll just print out a message in Slack.


Yeah.


So, you know, people who are interested in that, in tech, or whatever can...


Do you have, like, reporters in Slack that are watching that, kind of?


I think the idea's is that we will be. So that one is, like, a week old, too. So we've been using Slack for a little while but we're just starting to try to figure out how to make it more useful.


Yeah.


So, and years ago, we had a good service. It generated, it was called a data-driven headlines. And it would generate headlines based off of large blocks of stocks. So if someone traded 200 shares of something, it would produce a pretty headline and publish that out, and that would go out to gits, or various newsfeeds. You could easily implement that into something like Slack, too.


Yeah, and maybe use the story as a basis of a story that maybe requires and recording.


One of the trickier parts that we've run into with implementing into Heroku is it's that's external and it does not have access to a lot of our internal services. So that's something that we need to figure out, if you have to access a protected resource --


Yeah, where is it going to run?


Yeah, in our case, at the AP, we've got sort of this in-house, weird—none of us who are on my team actually built it. We just all sort of inherited it, so we all don't really like the architecture of it. It's got the super creative fame of scheduled tasks, which does about what it says on the tin. It's like a web-based crog (phonetic). So I write for example, in Ruby, an example, a script, it's getting around on the server that just got mentioned about not running on a service that's outside your company network.

Some examples that are coming in on etherpad from Jeremy Bowers at the New York Times, he's got one saying, "The Times has a bot that lets editors and reporters know when transcripts of Supreme Court decisions have come out."


Tiff could probably...


I watched this one.


We're working on training a bot to help us be able to diff, well not training. We're running the code. It's not like we can just give it treats or something.


God I wish.


Has anyone done like any machine learning bots?


There's a couple I know. That are Slack bots. Times is one of them.


To come, I'm sure.


In part, we still need humans to validate, but effectively trying to say, this would be an autosummary for something like SCOTUS. What the breakdown is why can in terms of who made the decision. They normalize it, and abstract it and put it into the bot reply, or what the bot posts, but trying to do that so that there's a little bit more information that's extracted rather than why—but I think that's one of the long-term plans.


And so who's looking at that Slack channel?


Um, anybody that --


Would it be reporters that would then go --


So reporters are watching, techies are watching. Anyone that's watching a project that a Supreme Court decision feeds into.


I'm sorry, is that bot isolated into a room. Or does that speak into a room that --


It's in the room, but it's just the way the chatter goes on especially with things like today with SCOTUS. What media organizations have the tip just for—because there's a delay between when Supreme Court announces stuff and when they put stuff on the server. So there's information about what decisions are going to be decided and how fast. Sometimes there's enough of a delay where people on Twitter and SCOTUS blog knows about it well before we get the document. So we try to source all that in there, too.


Anybody have thoughts of other things they might want? Things that might come in handy with bots?


I know what I've wanted. I missed Google words when it was really powerful. It's like not the same any more, right? Is it hidden? I don't know if it was a user mistake but anyways I think it would be nice for a reporter to be able to flag a keyword search that gets piped into Slack really easily around their loop. I also think it would be nice if we have, like, a recipe cookbook for some of this stuff. Because I think a lot of this has been just common problems, and given that HUBOT is a framework that we could be sharing more code.


Like, what are those sort of architypes, right, of where we might write a recipe. Maybe it's not just a specific API but it's like if you have this kind of API like...


Well, there are the tools like this and that, or Sapier that do those sorts of things. But it seems like in a lot of cases they don't quite get to the level of bot—or like of the kind of behavior that you want from a bot.


Is it because, like, you want the bot to be a little smarter than maybe, like, sort of...


I think because you want to take, if it's—like, you want to be able to drop—drop a processing step. You kind of want Yahoo pipes inside of this if this, then that. You know, RIP Yahoo Pipes but... yeah.


There's a platform, well, not a platform but a Ruby project that I've seen but haven't really experimented with yet called Whogan.


I know that.


Okay, then.


Named after some Norse mythological crow or something. And as I understand it, it's sort of Yahoo Pipes.


I know one of the things that I'm investigating as a replacement for Pipes because we use a lot of Pipes for where I am. I just haven't had a chance to play around much with it yet.


I know what we use it for now. We use it as a corrections channel. So any channel that needs a correction, the bot takes it over, and corrects it, so that we can be collectively embarrassed in the privacy of our own user intranet.


What does it do, just list?


Yeah, we would like to eventually get the actual correction words into it.


There's some flag on CMS or something for corrections?


Yeah, that's cool.


Is that what powers the bot like pin when you put up a new story.


In my old company, we had to send an email to the entire staff whenever we published a new story. And so the best thing that I discovered at the Times was that they had a bot that said that a new bot if it was but if you were working on them and you had to grab things it was super, super helpful.


I was thinking about something like that because...


I literally know nothing about it.


And um, 'cause I think there's a bunch of stuff in that audience development side that bots could be doing because so often, in the newsroom, we will publish a story and then move onto the next one. But it's not until like four hours the publication happens there's the most potential room for additional velocity.


We have stuff watching Reddit and if there's fresh comments recently on something, we encourage the journalist to go in and the reporters to go in, and speak on the piece on the subject matter. And another that looks at the Google news One Box competition for specific topics and lets us know when our stories don't rank with the stories that we're talking about. So it alerts audience elements to go and figure out how we rerank before that turn. I don't know how that runs but I know we have to jump through hoops whenever it spits out something.


When we were talking about the LA Times earthquake thing. And when we talk about the Slack bot telling you a story's doing really well those are bots. But isn't all the --


It's automation.


A bot is—the Chatter UI is the essential characteristic of a bot to me.


The what of UI?


Chat as UI.


This is something that I wrestle with constantly. The team I work with. Just the product team is 80 people. So the bots, you have a number of chat bots. One of the things that I am thinking about lately is when all these things are, what are the strengths and weaknesses of chat as a space for different things like, we do a lot of automation. People here are talking about a lot about different kinds of automation. But the strengths of chat being, like, low friction, constant attention, everything's in front of you and sort of the weakness of that is distraction. And, like, that's why I'm dicer where these bots speak into, channels. Do they need to speak into channels at all? Are some of the better served are filtered into a dashboard? How does attention figure into the decisions you all make about where your automation speaks to?


One thing I'd like to see—I have no idea how you would even accomplish this, but I would like to see a bot that I could ask for a summary of, like, the last hour of a Slack channel that I have not been paying attention to and there's, like, this giant, sort of, discussion.


They mentioned that like a "while you were gone" type of feature.


Would it be better than Twitter's while you were gone feature? It's pretty bad. No matter how many times. It's like I didn't really get this.


To get to your question, one of the criteria when we think of the actionability of a message, and there's, like, some bots that are set up that are like autobots. Like we like to keep our eye on our taxonomy and so we have a bot that tells us when a new tag is added. But with all these bots it has to be something it's a growth editor, when I get that message I can then do x and it makes me better at my job. I think those are worth piping into the chat. That's kind of what I think about.


I think one thing for us, given the user control for signal to noise. Whenever we make something, when one person is like, I want more, it makes it really noisy. And the other person is like, get that thing out of the room, it's really noisy. So the thing is, how can I let the user customize. Once it's all based in the code, it makes it really hard for a user to go in and say, I just want these ones. I just want these ones. So I've been looking at maybe we'll have all these channels where users post these things but also having an interface for a user to be able to go in and say, list all the types of alerts and say, I'll just have this one, and private message me about these ones. And I can go into a room, I can have these conversations but in order that they can control better what alerts they get. That's my pipe dream. I don't know if anyone has that dream written for me here.


And so we use this really rudimentary setup that I've put together with somebody's help at the AP with Sharepoint, because we use a lot of Sharepoint internally, God help us. So for a lot of these bots I've put together a basic list for some subscriptions and some settings, tweaks. So I've mentioned the health care one. So if you decided breaches that affect a million people. I don't get enough. Maybe you should turn it down to half a million. You could do that without changing the code. So I just, at the bottom of every email that sends out, have an link back to the list. I want to change. Here's a reminder of your settings. If you want to change them, go here and then they don't have to bother me at all. I don't have to push anything and, you know, it's a little more frictionless that way.


We have a pretty small team at Minn Post. So there's not a ton of chatroom noise. We use Slack. One thing, though is—and we only have the one bot which we kind of feed scripts into and it's not too crazy. But we set it up to DJ the music in the newsroom on Spotify. So we just created a new channel for that because there's a lot of like next, searching for music, cuing up stuff and figured that probably that doesn't need to be, like, in the newsroom channel. So yeah, I think at some point, doing channels might get unwieldy. Are you going to be a member of...?


It's footstep, at a certain point it's just as distracting as having a dedicated channel. It's hard for me not to pay attention.


I feel like the notifications problem is kind of like a superset to the specific bot problem because I mean, notifications are a friggin' pain in the ass. And I know in Slack I've had to go on, like, the soft mute for all our general channels and, I don't know, they're so noisy, and if you have the white button excessive compulsion to hit it every time, it's totally a time sink.


What do people do about health checks for bots, like, if you have things that are checking a feed like, the health data breach feed that's just sort of sitting there silently alerting, like, what happens if the feed goes away, or the feed changes. Like, how do you sort of, it would be kind of lake a metabot. It wouldn't be a bot.


I was just thinking about this on the plane yesterday. But I don't know yet but I would love to come up with something because actually one of them that I wrote, not that one, but a different one, involves a lot of scraping and one step in that scrape changed this month. It's like monthly updates. And I'm glad I caught it.


Right.


But that's just because I was paying attention, clicking around. And part of the idea is that I don't have to do that any more.


Well, it seems that can happen on two levels. I mean, the feed the sort of data source can change and then, something could go wrong with the bot itself, right? I don't know if it's like building in some kind of tests that are part of—I think it's at least a good practice to think about, right? I mean, some kind of error reporting, at least, into the way that you build the bot.


You could build, like, a proxy that it gets its data source that it, like, inserts random fire drills into it and then checks that the things come out in the right channel and then follows it up with, like, "This was a test." If it actually were a data breach we know the process would have worked.


There's the thing that Netflix has that completely automated it but they call it Chaosmonkey and so it just mucks with part of their infrastructure at random and sees if they handle it.


That's some brave stuff.


I am nowhere near that brave because...


I think our developers are just the chaos monkeys. We're just trying to get to the point where that's less of an issue.


Yeah, I would not want something to mess something that posts to the Wire.


So one thing that we do is we have use stats—almost all of our bots if I'm right, will send, you know, health check messages saying, "Hey, I ran my loop. I did this. I had a success metric and I did it." And we just have a Grifono board (phonetic) that's always small and it will change the background and say, "Silent for an amount of time." And yet it's helpful because you don't have to check it but sometimes you do get false positives. So that's something that we're still trying to solve well because it kind of works but I still have to have, like, a monitor in my room saying, yup, things are good along with the ten other monitors saying, "Yup, things are good."


One of the things that I was thinking of on the plane, and inevitably I couldn't get to other things was trying to come up with a different—how do I just not set up another monitor on my desk. And so part of me wants to, like, put together small, like, physical robots for each of these and have them, like, respond to login messages, right? All right. So this one fell over! I don't know how that would actually work in practice but it would be hysterical to have them running around my desk.


I actually designed a prototype last week. It was like a meeting reminder that blew a little bubble, like a soap bubble on your desk. It was like sort of the lightest possible reminder that something's happening.


That's a fairly early Internet Wave to the Cats.


What was that one?


It was really early 90s. It was this site, Wave to the Cats. You would push a button and it would say a hand somewhere was waving at a cat.


I had thought about giving my cat a "yo'" button and have him climb up the wall, and it yos me and my wife.


Not really a chat interface but it's still communication.


Well, that's...


That's the kind of attention that I like.


Here's one bit of information.


The cat says "yo."


I know one thing that I've set up, and I keep turning it on and off. And I'm not sure if it's helpful but we have a little red police light like a zig bee, that can control whether it's on and off. So it's kind of fun user feedback by if it kept bouncing between goal and not goal, and switching between on and off and if someone just turns it off. We're over this number! Why is it not... and so I unplugged it. So I don't know.


That sort of reminds me of the, like, software companies and such that has a traffic light for their build status, right? Like all the tests are passing:  Green. We're running the tests right now, yellow, a test failed:  Red.


So I've been wanting to figure out a good way to get some—to get some of that stuff in there but it would be helpful not to just, having another obnoxious thing on our desk that's going to bother us.


I think one company had a rather intensive light, that had a missile launcher that would figure out who had broken the build and shoot missiles at them. We could do that to pay a particular reporter.


It's like the ultimate get blamed.


Let's get punished.


At least it's not water balloons.


So it sounds like who bot is what a lot of people are using. I've got in a bots and I've got a couple in mind that I want to do. Is this only in Slack, or is this something that could be outputted different ways or...?


Well, Who bot, I think it mostly works with chat platforms of various kinds. And so we used it in Campfire than --


Yeah, I was saying it in hipchat kind of implementation.


Yeah, didn't they start in IRC for that?


Yeah, so IRC.


A lot of things in Slack remind me of grade school, like IRC.


I think Slack was taking IRC and making it kind of current design sensibilities.


Mine was a chat bot that fires ASCII torpedos.


That could be done. I know the hacker space I belonged to back when I lived in D.C. has something that, like, whenever you post a link to something in IRC, Reddit responds with the title so that you know that you're not getting Rickrolled or something. But of course, people still have shenanigans but something to just really quickly respond.


We haven't really brought up Twitter bots, which of course, are regional, and evolved ways of shapes and forms. And interactive other users are just annoying. Just follow accounts overall.

I mean, there would be a little bit of a question with the fact that we're all in news and probably working on tools to sort of augment news-gathering and reporting and you wouldn't necessarily want that to be a public Twitter feed but there's been a handful that are public that different organizations one. Like the one that comes to mind is the one that's watching Wikipedia edits within the IP address block of the capitol building. That one's occasionally irritating. But...


We had a story about that the other day because someone edited.


1802, or whatever it was?


Somebody edited Rick Santorum's page so that instead of Winchester, Virginia, it said fart virgin. They would edit the space so that it would push down "Rick Santorum" and for the most part, it worked. It pushed it way down the feed and I think most people who were following it, just muted it.


I mean, I think there's the possibility, too, a lot of our reporters, I'm not a big fan of Twitter but a lot of our reporters are on Twitter a lot. And you know, because they follow our reporters and news sources. So if you can get a useful bot in the mix there, that's going to give them—I mean, the downside is they might miss the tweet, right? Because while some people are obsessive about reading their feeds, some people are not. So that may be not mission critical but it's still useful information. I think that could be pretty helpful. Because, yeah, some of our reporters don't really want to use Slack, they don't really easy the value of it because they're not sitting at their desk all day like I am, or standing at my desk as it were. So you know, that's like on their phone and it's just like this feed of information. But that's not something that I've actually done anything with.


Twitter bots are actually how I first taught myself Python and it was sort of like the task that I gave myself to, sort of, do something with it and I think with a lot of journalists sort of have the thing of, you know, seeing the forest from the trees, that Twitter can feel sometimes like the whole world, it's actually very tiny slice of your world. So if you're making a Twitter bot you have to ask whether, it's going to reach the audience, that it's going to have the impact that it has, if it's worth the time building the code.


I was going to say, that could tell us about what it feels like to kill your bot.


I've had so --


The SRCCON article go all on this.


For the ones that I just made as hobbies, I frequently had to cannibalize them because I only have so many phone numbers to get an Twitter API key.


If you guys, I'm sure if you have—well, if you haven't check out the bot week post on source. It came around the time that I proposed this session but one of the ones that I thought was really cool was in the New York Times election night 'cause that's always like kind of a crazy night.


I think Jeremy mentioned that in the etherpad.


Okay great.


So do you want to keep going?


Well, I just... I don't know. Did anybody use—experience what that was like? Is it useful?


Yes, in part because we didn't have to have someone watching. It does automate effectively some of the more tedious work of election night. You're going to know how things are polling. You're going to know when the major networks are calling when. But it's like asking someone to mind all the little uninteresting races that are not going to work. So handcuffs handy to have election bot working. Is it came to increasingly levels of closures. To remind ourselves to go and pay attention. Which we knew but we also needed a reminder to go see stuff. It didn't have a check of where you can go and ask it, follow up on these things. What's the current polling rate but I think we had plans to build that. So we didn't use this for this last, but we did use it for—but for next year we've got more things we want to do.


I read that. And so you have this thing that's providing ambient notifications in an open space and natural language as a way to say, this speaks to a little bit of what you're talking about:  Only talk to me and I'm interested in what I want to know. You are the canonical bot that knows what the current state of Florida is with respect to elections. Like, that's the kind of bot that I'm super, super curious about, and I haven't written a lot about it. Most of the things that I write about bots is pushing. It's a censor, or talks, or response of something that happened to everybody as opposed to I want to private message the bot and say:  What's the current water level in California? That's the stuff that without having to walk away from in the chat, you have this canonical source. Like are we writing more of those? Because that's—is that easier to justify to the point of the conversation—is that easier to justify than just saying saying, let's build something that's interesting to push this out but saying, wouldn't it be nice to ask the bot a question and have the bot come back with a canonical answer. Should we be writing those?


I'm also dealing with a team with economical data. There are a lot of sources of it. What if there were ways for reporters to ask:  What was this particular rate in this? That's the kind of thing, that if it were available could be very useful. And especially, since I'm an editor of a real time economics blog, having that be in Slack, it would be really interesting.


We did another. Anybody familiar with rubber duck programming? We built a rubber duck bot that you just say like, "Hey, rubber duck book, I'm having a problem." And it would do like ELISA type stuff, like the old chat factor program.


Elisa is probably a bot, right? It's chat oriented.


It's the first chat bot.


I don't remember right now, but some group used it to go after—what was the—the gamer hashtag.


Gamer gate.


But it basically did. It would talk to people who were particularly rowdy on Twitter and they didn't realize that they were talking to a bot.


I had a friend who did that.


Elisa would be a great name for a bot company.


That's interesting that you say that you're more interested in the kind of the asking the questions because, like, most of my stuff, and granted most of it is really rudimentary is asking stuff from the bot versus the continuous monitoring thing but I really think that the hybrid is kind of the most interesting possibility, right? Like, you don't know you have these questions and the continuous monitoring sort of prompts a question because it says this thing happened and you're like oh, I want to know more about that. And that helps cut down on the noise. It tells you that it knows something and you're going to ask it more so I think that's a pretty good conceptual framework for useful chat bots. I think.


Coupling those two things. I don't want to make it sound like I'm not a librarian. I don't know. It's kind of interesting to think about it from the attention standpoint because I'm not a journalist. I don't know what it's like to be somebody on the other side of that wall.


That's noisy.


Yeah, that's noisy.


What if you had—what if the bot knew, like, what stories you were working on, or what stories you were working on and then when you're writing a similar story in the future, would remember what you asked it last time so that, like, if you're writing another story about a company, it would sort of know, here's the data that you might want at your fingertips. That's sort of interesting.


If you teach it like if I'm doing earnings. I need these stats. And it gives you back, like, a form?


Yeah, a sort of thing where you wouldn't sort of build this report. It would just, like, know in this particular context, here's the information that you asked for last time. So you look like you're writing a statistics story.


Here's all the stuff you searched for that—or like while the budget said you were working on this kind of story.


Right.


Before that it says that you're working on now.


Right.


I wonder how noisy that would get. But that does seem potentially useful.


Yeah, I kind of wonder about the potential for sort of like more editorial workflow bots stuff. I think about when a story is published, that's a really great example of that. I should be able to set that up—and that's like more for the social media team or person now to get the notifications but I wonder if there are, like, other parts of the workflow that could be enhanced by a bot. Like, our bot is not aware of the budget of the day. But I'm very... and I mean, what could you—could you build a useful interface for a bot that, like, actually does the budgets, sort of?


I was about to say that.


Like, what are the stories? Where are they right now and who's got what?


I've seen bots that automate this in kind of the same way. Like, what's everyone working on at a preset time.


Reminder bots, saying, I want to ping this, and ask what's their stock. And get increasingly shouty and, like, increasingly offensive gifs.


Slack has a little reminder command but it doesn't let you remind other people of things. You can only...


That's not really helpful. I guess it reminds me to harass them in a way.


That's the first step.


Our audience development team has a reminder bot every day at 3:00 p.m. that it's time for a break. It's just a series of fruit emojis.


If you put in an URL,ing this is a very narrow use case like someone who's managing an account. It would tell where else in our social media universe it's been posted but it's really useful if you ask it most of the time. But if we have a story that was posted to the main account and it has 8 million retweets, like, let me know first. But that's kind of like what you were saying, it goes both ways. You can apply a certain threshold at which it would talk to you.


I was trying to look for production stuff that a friend of mine mentioned. But I'm not finding it offhand.


We had another feed that if you put someone's name in, it would find a photo of them online and put a mustache on them. That was useful.


Ten minutes?


Yeah, ten minutes left.


Great. I think like the mustache thing, I guess everybody has a different newsroom culture but to me, it's important that the bot has to maintain some level of personality, I think just for a chat bot, especially just to kind of... I don't know. There's some aspect of Minnbot that I find very charming and the very best days are when it kind of comes with something unexpected but, like, very useful or witty or whatever. And that often happens just kind of randomly, I think. But it's always good to think about it when writing about your bots but being annoying, which, I guess is a difficult balance.


On that note, there was something that I saw that had the principle:  Be as smart as a puppy. So the idea is that keep your bot charming but not frustrating. Don't try to have it be too smart. So the limitation is have it be smart as a puppy, so maybe people will empathize with it at sort of the same level.


Or just have an puppy bot.


Puppy bot.


Lots of poo poo emojis.


When you're sad, it's like a cute puppy to look at.


So like emergency cats but it's Slack.


Like emergency cats.


I've got a script for that.


Well, put it in the etherpad.


Everyone with Apple Watch can watch their stress level somehow, and when you're stressed out...


Yes, heart rate stress for everyone. We promise it's not going to go HR.


Or have a Jawbone that when it reaches a certain level, don't ask them anything. You're angry because you're high.


What's the next three-hour window for this person when the heart rate level drops.


What else?


What are some of the pitfalls with bots? We've mentioned noise. They get annoying. Are there any other questions that you need to be worried about when you're building a bot like, "I should not do this."


Well, I think for me, just in training, being aware of bots especially if there's lots of them, knowing which ones are useful and making sure that they're all running. If I have one or two bots, okay, cool, I can do this. Or even having a bot that has lots of features. There's, like, 200 commands on this thing. What—how do I train that? Well, so this one will do an emergency, you know, notification on the website, and this one will put a poo poo emoji and stuff. And there's two line items on the same chat.

So if anyone was at the last session, I mentioned that this was one of my first big fails when I was learning programming, sort of as kind of like a completion thing. it was an idea that one of my fellows at Digital Media had, that was a bot that would scrape news headline sources and try to make them into Upworthy headlines and the results were monstrous. The results were horrifying. Things like, you know, is I ri used chemical weapons on its citizens, you won't be able what happened next.

So you have to realize if it's as smart as a puppy, it could be very stupid.


Yeah, I mean like I think that's definitely a downfall when you're writing, like, supposedly funny scripts. Just always be aware of being sensitive, right, because the bot is not smart enough to know. So you have to kind of anticipate those kinds of things and that's just part of, like, I feel like making a workplace that works for everybody. So that's something that I try to be aware of.


Your chat bot is a coworker.


Yeah.


Your chat bot should be a coworker.


Like, a really great coworker. The one you like.


It should be the best one.


Yeah. So, are we going to be able to condense editors that they should definitely give us days to work on our bots? I don't know.


We did a Hackday for bots that was pretty successful. I mean, Hackdays are a nice opportunity to, like, prototype ideas, try them in a newsroom environment.


But that was focused on bots?


Yeah, bots, specifically.


And did that produce some good?


Yeah, trending bot, that generated stories based on different pageview thresholds to authors and then the growth hacking bot that identifies large, like, Facebook pages with relevant ideas.


That's cool.


All right. We can try and hold everybody here for another two and a half minutes but I wonder if there's any more poop out there. But thank you everybody. I think there's a lot of good stuff that's, you know, now in the etherpad.


Yeah, check that out.


If you were zoning out during the session, check that out.


Where is that located?


Right here. Bit.ly/srcconbots2015.


That was cool. 

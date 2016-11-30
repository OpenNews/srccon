This is a DRAFT TRANSCRIPT from a live session at SRCCON 2014. This transcript should be considered provisional, and if you were in attendance (or spot an obvious error) we'd love your help fixing it. More information on SRCCON is available at http://srccon.org.

Captioning by the wonderful people of White Coat Captioning, LLC
whitecoatcaptioning.com


7/25/14
Session 27, Mobile sucks!
Session Leader: Alastair Coote

OK, so we're round about 4:30, so we might as well start.  See if anybody comes in a couple of minutes late.  So hi, my name is Alastair Coote. I am a developer at the New York Times.  I work on the interactive news team, often working with mobile, so I've spent way too much of my time staring at these stupid devices.  And mobile is great in many ways, the things that we can do now, sort of everyone has our content in their pocket, that's fantastic, but the real truth is that actually developing for mobile is awful.  It sucks.  All the different devices, all the different browsers on those devices for a minute it felt like we had desktop browsers sorted out, even IE was relatively OK, and then suddenly we're thrown back into this wild west where everything is awful, so I thought we could come together in a sort of group therapy style and we could talk out our problems and hopefully those people in the room with questions and there will be some other people in the room with answers to these questions, even if we haven't gotten answers maybe we can demystify things a little bit.  I don't know, we'll see.  

The way I'm hoping we're going to structure this is now or in a minute everyone is going to grab a post-it note or two and they're going to write down a problem they've had in working with mobile.  It can be a technical thing or a philosophical thing or a conceptual thing, whatever you think.  And then we'll talk about it in groups for a few minutes.  Hopefully not for too long because I think it will be great to bring this back to a group discussion for a greater period of time.  Step 1, everybody grab a post-it note and if you've worked on mobile and there's something that's annoyed you about it and my colleague, Tiff and I will be walking around and collecting the post-it notes.
[group activity]
... ... ...
>> OK, nobody has any others?  We're all good?
>>
>> OK, so I've done my best, which is not great, at grouping these problems into some sort of topic areas or groups.  Quite a few people mentioned testing, cross-device testing or testing in general.  People mentioned doing both mobile and desktop at the same time.  Lots of people talking with layout.  Orientation changes.  Landscape in phones is annoying, who uses it.  A lot of people talking about multimedia as well, audio, video, both those presentations are quite difficult on mobile devices, particularly when iPhone won't play a video without you tapping it, so on and so forth.  Lots of people talking about the restrictions on devices sort of just technologically:  They're slow, that sort of the interactions tapping and clicking and battery life, connection speed, that sort of thing.  All right.  So that's five.
>> So what we're going to do, we're going to get everyone into five groups, so we've got five tables, but any of you guys in the back sort of join in that table there, and everyone will get a topic to talk about for about ten minutes or so, basically for you guys to talk about whether you have you've -- once everyone has talked about it in groups, we'll bring it back to the larger group, so each group can present what they were talking about, so maybe you can write on the sheet and add some more detail, but the hope is there might be someone who sat over there who is a great idea about testing so I want to bring it back to the group as a whole so they can still manage to give out an answer.  Who wants to talk about desktop versus mobile.  I'm just going to start assigning them to you, then.  There you are, guys, desktop and mobile layout.
[group activity]
... ... ... :  OK, about two minutes left.  Maybe start thinking about one person per group who's going to talk about what you've been talking about ... :
>> OK, everybody ready to wrap up and talk to the group?  All right.  No, what I mean is you are ready to talk to the group.  All right, well, what's what's up with you guys?
>> We're going first.
>> Yeah, it was always the way, I'm sorry.  So you guys were talking about mobile and desktop and dealing with that as a sort of a situation.  Anyway, you want to talk through what you talked about?
>> The first question is like the first question of apps versus web, and we all immediately concluded, responsive web, to start off there, but we kind of looked OK, let's force ourselves to think about when would you have a compelling argument for apps and there weren't that many, but there were some.  The thing that we acknowledge is that the tools have changed that you can start publishing almost disposable apps, kindle singles or things like that that if you can had he hit that threshold but overall you're going to have bigger reach, more bang for your buck, bigger audiences with the smartphones.  The next one was what features should you bring over.  What should you optimize first and we didn't get too far into it but we talked about the guardian NSA files.  I consumed it on my phone, this is freaking great on my phone, I actually read it soup to nuts all the way through and it turned out most of us had that experience and we went to desktop and there's bonus stuff on the desktop.  It didn't feel like we got ripped off, which was great.  Usually oh, you got the whack version of the story or oh, you don't have this plug-in go screw yourself.  So that was a conscious great example, but that was a special project.  That's not the daily stuff, so we just were about to hit that.
>> All right.
>> Anyone disagree?  Anyone got anything they want to add?  Well, that's easy.  All right.
>> Yeah, you've done it.  You guys were talking about layout, right?  Yes, OK.  Go.
>>
>> You have a person who's -- everyone needs to have a person who's going to talk.
>> We did not make a decision.

>> We talked about the fact that there's not enough space on mobile and how do you deal with complicated graphics and tables and things that need a lot of space and the conclusion being largely that you have to start mobile first and design those things small to begin with which might mean a different form so a table might really be a list or card stacked type thing, and then you decide whether or not the investment in designing a progressively optimize the version that would go in a desktop would make since ...  Business department has to change the way they deal with advertising outside of the scope of what the design can do.  What else did we talk about?
>> No fixed headers or footers.
>> Does anyone disagree with that 1234 hovers doesn't work any more.  So you probably just don't do it.
>> All right.
>> So that still doesn't fix my problem with the fact that people hand me PDFs and I've got to figure out some way to display them on a phone.
>>yeah, don't have a solution for that one.
>>
>> Read PDF one letter at a time.  Yeah, that sounds like a dream.
>> So I think a lot of these problems we create ourselves in terms of speed, like as we add more stuff to the site, you know, we're just adding more problems for us in terms of speed, so just like keeping it simple, and you know, focusing on mobile first.  There are some things that you might implement after the fact, like lazy loading and stuff like that, talked about responsible solutions and how this might help, as well as no animated GIFs, but then we decided we like animated GIFs.  And whereas everyone else in the table says GIFs it's "JIFs".
>> I don't have to do a vote by hand, but I think you might be on the losing side of this.
>> I'm used to it.
>> Fighting the good fight.
>> And we also talked about there's two different types of speed.  There's processing power, which you know is a big part of the Javascript stuff, animations and stuff like that, so you know, cutting that down to a minimum, and then there's also, you know, performance over network, and, you know, getting everything kind of in one but will or doing like high-priority CSS stuff like that up front and maybe in line to just like get that out of the and get stuff to people quickest.  So there's those two things.  We also talked about memory and hitting those in case it crashes.  But mostly on those first two.
>> So who didn't want animated GIFs and why?  It's interesting to know.
>> Sort of -- I didn't mean to use accusatory terms, but --
>> Well, I mean animated GIFs are the.
>> It's a separate images for each frame of the -- and Twitter did go to video, as well, for their new GIFs.
>> So, yeah, they've heavy.
>> So that kind of leads into these guys with multimedia, because I know one of the reasons people use animated GIFs is because you can't play it on an iPhone.  So great on a desktop, but it wouldn't work on a phone.
>> So you guys, whoever's talking?
>> Yeah, I mean the big sort of thread where video codecs, we can talk about solutions for, including the one that I use changes the service to manage all of your ... [inaudible] but you know, working with legacy things such as -- I call them legacies, but things such as Brett co, for example, APIs, not responsive, which is a lot of problems with that, and, you know, the good mobile players out yet.
>> Yeah, I guess tradeoffs between having a service like right cowhere the API is really tern but they can show you different versions of videos, versus hosting yourself and figuring out all that part.
>> One of the things we have in fact is right cohandles rather than putting through 8 different versions of your video.
>> But we also have audio or typography and web finds.  These are still hard problems to solve, because with audio, depending on the size of the audio file, you've got to deal with that and of course you've got to have OGG and some other kind of format and if you want auto play that's another problem.  So I feel honestly media on mobile is still really crappy.  It's a hard problem to solve and I don't know who solves it or if it's solvable.
>>
>> Or like you could have a desk stop experience where you have all these things hooked up to a video, like events triggering when you get to certain parts and information popping up and then you get to mobile and you're like, oh, well, guess you can't have any of that.  Plays a standard video.
>> You have the big yellow Brock that says this page was designed for desktop.
>> That's the solution, right?
>> Yeah, the solution out of this is that people should not use mobile:
[laughter]ra, so I mean we just complained about it, I don't know how much more there is to say.
>> It's group therapy, it's cathartic, you can just let out.  I know we've got a couple of people from NPR here, I don't know if you guys work very much with the audio stuff.
>> Yeah, I'm on the visuals team.  Does anyone here work on a video site that they have to do mobile?  Damn damn.
>> I've done some like fancy builds where you have, yeah, video elements and stuff.
>> and so you just have to -- you.
>> Just cut back down to the bone and such.
>> Or even an image sometimes, if you have atmospheric video even in the background, you have to roll back to just an image.
>> OK.
>> All right, and last group, you guys were doing testing.
>> Yeah, we chose testing because that one's easy to have quite a long conversation about how much it sucks.
>> Yeah, everything is terrible.
>> So we want to do a really quick poll of the room, how many of you have a device lab and use it?
>>
>>
>> Yeah, which, yeah, well, I don't think -- well, you've used it, I don't even know which floor it's on, and then how many people tested on like threeish devices or so, routinely, like whatever you're working on you try to.  OK, twoish devices.  The device of you and like a good friend.
>> and how many people kind of have no time for mobile testing unless you're just really lucky.  OK, that's honest.  Appreciate that.
>> and then of course, like the cards that we got were like it sucks, it sucks, it sucks and too many devices which we all know has been on the landscape for a long time.  One thing we were talking about oh, our other question who has ever done any testing for the windows phone.  Not only do you say jiff, you also test on a windows phone.
>> We heard of you.
>> Statistical outlier.
[laughter]
>> Who's got a blackberry.
>> and so one of the other things we brought up was like what exactly is your build-test loop.  One of my problems is ultimately especially if you want to test on multiple devices like how long does it take you to write something, figure out how you're going to test it and then like get back to like, you know, updating whatever it was that you're working on and Tiff had mentioned that sometimes in the newsroom you've got like one person who's got this particular build of phone that you know is hey, go check this.
>> I have a so you end up with, like, but that's not scalable across like a suite of apps, right?  How many times do you get like pinged for like can you check out these three sites?
>>
[laughter]
>> This is definitely an NYT characteristic but it has to work on your boss' phone.Ing ...
>> and it's a little bit more challenging when you get an iOS simulator and actually running S code on your box or whatever.  A lot of that is improving but not to the point that we briefly talked about with Chris:
>> I'm mostly curious whether Tiff was mentioning that the NYT has sort of a mobile like framework set of styles whatever for their site.  Do other groups have that specifically that you have to like build your apps within?  Because one of the things I'd never really thought about I should have a set essentially a base set of things that I know work on mobile and then like you just build things on top of that, and that is the sort of set of assumptions that you work with that you know will work.
>> In our site we call it the site chrome.  We're usually working with those things on the page and they behave the way they behave.  The challenging thing is I spend most of my time tweaking details.
>> We've somehow worked ourselves into an interesting situation with that a number of times.
>> I'd like to plug one of my favorite things, bootstrap.  At the tribune we feed bootstrap in every possible way we could and just using when you stuck to whatever it gave out of the box as closely as possible, you often would end up with something that responded pretty well right away and then from there you would make your adjustments tand tweaks for your content what you would knock out a day's worth of writing:
>> So how many people use bootstrap?
>> That's good.  Not a bad number.
>> So you mentioned browser stack?  Who here has heard of browser stack?  Uses browser stack?
>> Well, maybe you can talk a little bit about how you use it in your work.
>> Yeah, I mean we just -- they're adding some -- always adding more and more mobile custom capabilities, and the globe, the last time I was there, had like a whole setup of like basically every phone imaginable and running every different browser and basically all phones all at once and then swiped.  That's basically browser styling and I believe the way browser stack does it is it's not emulation.
>> It's an aerial model where you own a time share of every phone?
>> Yeah.
>> Not like robot fingers that.
[laughter]
>> and also just to throw out there like if you go to --
>> It's like 12 bucks a month.
>> If you go to modern . i.e, you'll get free three months of browser stack.
>> All right, so you mentioned testing a windows phone.  I'm curious, how do you do it?  I mean I'll start because actually both like Safari and the iOS and on android you can connect up to tools using a USB cable.
>> I just don't to websites on it.
>> It's not getting too nuanced.
>> Is there like a debugger.
>> Not that I've tried.  This is not my primary phone, so, yeah, I'm mostly Mac-based.
>> OK, so here's another question, how many people have tested on a windows tablet.
>> Only once in my case but I have done one.
>> I really am amazed that Microsoft has done such a terrible job on that.  Speaking of which, blackberry, is anyone here have a blackberry?  Does anyone use one?  Do you test on blackberry?  How old is that?
>> It's actually great.  I test on it because I it's the phone I use most often, and it is always -- it always works.
>> Is this the new blackberry.
>> It's the least finnicky platform.
>> It's a 10, yeah.
>> At what point do various people talk out support for devices and what percentage of user.
>> That is how productive our phone is.  It actually works as a phone.  Which actually to be fair it's actually on 26% battery so it's going to die in about an hour.
>> Does anybody have any input on deciding which phones to support?  What is the threshold for when you stop caring.
>> We talked about that from a certainly word but a sociological angle and the device presentation versus people who were on handed-down devices and things like that and how a lot of times the testing suites specify the latest and greatest.  But like a medium range device the experience on that is so terrible that we're losing audience that that might be their only consumption ability is through a less popular feature phone, but certainly a less popular smartphone.
>> and how would we even figure that out or test that.
>> I was going to ask like, so it's smartphone or nothing, or newest smartphone or nothing.  So feature phones, you're SOL.
>> There might be -- I don't know NYT's --
>> We have to develop all the way down to blackberry 4.6 and it's terrible.  The testers are really bad.  The emulators are really bad.
>> Which is why you switched teams.
>> That's an interesting question, who tests on android?  Who tests on more than one android device?  That's a decent number.  So interesting to know which android devices you test on.
>> Chris has two.  Are they all like android 4 and --
>> Well, this is one of them and we have someone with a generation back.  So that's the thing that's sort of interesting in what Tiff was saying, there's a lot of like low-range android phones that are slow and some of them are still running and Droid 2.3 and if you don't factor that in, actually, the lan Droid experience can be a lot more --
>> Difference who tests on android tablet?
>> It's actually more than I expected to be honest with you.  And I'm assuming --
>> We find a bug and then it's low priority and then.
[laughter]
>> Mostly by wife bugs me because she has a Nexus 7.
>> That's like your boss' computer.
>> That's the Blackberry thing.  Because somebody -- probably not your boss, but your boss' boss' boss, has an old Blackberry that they will never let go of:
>> I have a lower end phone by choice, it was cheap, I wanted it directly from the factory, but I'm curious, are you seeing socioeconomic divides, do you even care, does that factor into which phones you take into account for testing?
>> NPR.org -- I don't work for the product team, but they're very aggressive in dropping support, largely because NPR -- I mean we support IE 10 and up, and I don't even know what our -- I can't speak to exact numbers of when they --
>> Yeah, I mean that I think it's largely a case of your audience, you know, NPR's audience is highly educated and tends to be fairly affluent, so we're able to do that.
>> Yeah, maybe that actually speaks to the media organization that are at something like this, the tier that we all are.  This came up years ago, what does the world wrestling federation support, legitimately something that is catering towards middle class or even lower class culture, not to mention groups of people, I'm always really fascinated to see what their online effort is.
>> Do you get an answer for that because that is a really great metric for Nascar.  Anyone know anyone?
>> I do have some cross-sectional perspective as DocumentCloud.  No, not Nascar documents, but some news organizations are going to have a higher percentage of IE8 or whatever.
>> That's actually not possible at the chronicle of higher ed because we are mainly serving lots of universities with locked-down computers so we have to make sure it works, or something it doesn't have to look perfect, but it needs to be readable, you know?
>> Sort of the same thing getting back to sociological things is so I work with chronicle of higher education, you know, I don't know the mobile numbers, necessarily and how that breaks down, but I could see where there's probably a divide between younger adjunct faculty or freshly hired tenure track faculty using their new iPhones and android devices, and then the very old, been-there-a-while, tenured-for-20-years professor who reluctantly switched to a Blackberry a long time ago and won't touch anything else because he finally knows how this works and do we still support that, because hey, those people read our paper.
>> Isn't this what progressive enhancement was for, though, right?  You design up from an extremely simple page that should fucking work everywhere.  If I load it up on a feature phone I should at least be able to read the text on the page:  If you open it up in an old phone you got a text area with a submit button.  That was the whole point of progressive enhancement.  It's still hard, like, this work is hard or there's a much bigger gap between that first thing you build and the big shiny glossy thing you might end up on a nice browser, but you still need to start with that foundation, should be able to start with some super simple, like any fucking device is going to be able to read.
>> Speaking of socioeconomics, I came from New Mexico from the paper that was right next to the Indian reservation and like 60% of them don't have electricity, but most of them have cell phones.  We totally would rather keep the lap version because they could still read it and they actually a fairly large segment of our audience because we're kind of the only paper that served them, we eventually had to give it up because of the corporate contract because that was a large part of our audience so we wanted them to still read it.
>> There's a clear distinction between feature phones and the android device but the problem with the android device and you've got a phone that identifies as an android device and it's running chrome but it's got a quarter of the memory of another phone, right?  This is one of the problems I've got with my mobile experiments with a document viewer.  I can pretty easily crash an iPhone 5 if I want to, which is why I started testing on an iPhone 3 but I have no way to tell that your android device is going to crash until it crashes and I don't know what the way around that is.
>> But I think that gets back to what's actually important.  The thing you were saying earlier, how do you make the PDF appear.  It's different if somebody wants to put out a newspaper page, but if it's something like a document that oh, here's a public records request we just got, I think that's more important is to see the info that that's in a document.  So here is full text, here's all that.  Click here to see the document.  For validity, verification, but it's important to read what's in the text.  But what's actually important is that you be able to read the text.
>>
>> Instrumentation can help a little bit with that, because if it just crashes and doesn't:  [inaudible]
>> A related issue is the speed of technological change adoption, so in the last four years on the desktop environment we've seen at a general interest site, the migration of users from internet explorer to in most cases Firefox, and that took a while, but the speed of moving from Firefox to Chrome has been much faster, much much faster, and I think we're going to see those speeds increasing, even on the mobile.
>> Right.  Well, it is pretty much 5:30.  So slightly a shame, because this has been going well and we could probably carry on for another 2 hours, but I believe there are some closing remarks going on downstairs, so everyone should go to that.  So thank you very much ... ... ... 

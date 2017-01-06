---
layout: 2015_layout
title: Session Transcripts
subtitle: A live transcription team captured the SRCCON sessions that were most conducive to a written record—about half the sessions, in all.
section: docs
sub-section: interior
background: books
byline: Nate Bolt
bylineurl: https://www.flickr.com/photos/boltron/3212284622/in/photolist-5TRNiC-4VkeqM-4VpqGm-4VkcGz-4Vpr1S-4Vken4-fmXRof-2YtFPR-fmHB44-dFxkXG-7yv4t7-4VnnAn-5A3XSn-4Vnnmv-4VnnqK-9uup4n-4Vnnv6-3ViP2v-4VnngF-4VkgVa-4VkeuZ-4Vkg5R-4VpmbC-4VpnDu-4Vk9rK-4VpqRL-4VpsPb-4VpuU3-4Vkf5D-4Vkdj6-4Vk8uc-b1TXEz-4VkhcX-mF5DPa-fmHXAB-r8mgB3-s5i4Mz-7i3R7t-og8qB5-fmXSCf-7i7Ky9-92YNnD-fmHDut-5C51hV-rMM8b3-k639ok-8FDPAB-apFhiP-rL2vRV-4VptiN
permalink: /docs/transcripts/frontendtools/index.html
---

# What (Front-End) Tools Do You Use?

### Session Facilitator(s): Alan Palazzolo, Justin Heideman

### Day & Time: Friday, 2-2:45pm

### Room: Thomas Swain


Hey, everyone. My name is Allan, I work at WNYC.

And I'm Justin and I work at NPR.

NPR, Minnesota. So we wanted to gather people together and just sort of talk in small groups about the front end tools that you use. So since we mostly build stuff that's on the web, we all have experiences using different tools and we all have opinions about that, and why we do those things.

So a few things to keep in mind:  Please respect each other. This can be a very touchy subject for some people. Some people have very strong opinions about tools. We want to keep that to a minimum. It's not really about what's better; it's about sharing your experiences some of those decisions that go into those experiences. And speak one at a time, which you've probably heard in other sessions which means make sure that everyone shares their opinions.

So we're going to do a series of discussions. We've got a timer, so it's going to be short discussions about topics of tools. So you're going to talk in your small groups. We're going to report back. There's an etherpad over there. If you want to take notes, that would be awesome. I'm going to try to take notes as well be when we report back. But more help is better. That's it.

That's it. Yeah. So we're going to cover six different topics so it's going to be definitely a bit of a lightning round and we have a list of main questions that we'll sort of come up with. What tools do you use for category, and why, what I was would you be scratching by other tools that you didn't choose. Why? And what do you want to know if other people have experiences to use a tool that somebody in your group can know about. We would like, to hear about that, too. So some general questions that are a little bit more specific. So some of the things that you might think about about a tool like how do you get started. You can see them all listed there. So all right, are you ready? The first one, I think we're going to talk about CSS pre-processors. So you two people over there, you might want to join that table over to get kind of a critical mass so you have a four equally sized groups there. So the way this is going to work, we're going to give you five minutes so discuss CSS pre-processors. We have some of the more common ones here. Maybe you don't use any pre-processor and you might want to talk about that.

Also if you don't know what something is, that's a perfectly fine opinion/thing to talk about, right? You can be like what are these things. Hopefully someone in the groups knows what they are. So talk about why they exist. Why do people use them, why you might use them, that sort of thing.

All right. So I'm going to start the timer, five minutes, and we're going to lightning through this stuff. So start.
[ Group Work ]
One more minute.

Five seconds. All right. So we're going going to lightning this guy up. So can I just go around to each group and can each group talk about one thing that they learned? So I'm going to start with this group over here because it's closest to me. So what was the takeaway from your discussion?

We wanted to use LESS or SASS. We don't want to write raw CSS.

What does that mean?

We want to recommend a compiler.

We don't want to go nuts with the programming that you can do with SASS or...?

So keep it simple in the SASS? Fix some of the syntactical stuff in CSS but not necessarily write a whole new, you know, Turing complete language?

Never mix them up.

What about you guys over there? I'm pointing in the middle.

We're kind of a SASS table over here and we just kind of can were talking about taking it one step further and taking out the middleman and building a template that can use SASS integration and all those other things but SASS.

And Compass.

And Compass, I I can't actually remember. It's sort of a mix-in for SASS, right?

It's actually an import library. It's a Bootstrap grid, you can import transitions library and get really granular transitions. You can import mix-ins. Under it's just for importing stylesheets to get you off the ground really quickly. So if you didn't want to screw around with forms, you can just export compass forms and have a really nice compass form style. And it's all modular, too. So you can import lots of modular scale and get a lot of great import on your site.

It's kind of like a standard library per language.

How about you guys over there?

I think we decided that we had to use SASS.

SASS?

A lot of us, we don't use anything. We just do straight CSS but... that's pretty much...

We're launching a redesign where we're using SASS but it's not on our site yet.

Any pros, cons with or without SASS?

I think for us, the tool chain up, the scratch was overall a pain in the projects, but some questions about the deployment for us.

And let's go to our final group over here.

We're kind of a SASS table, too.

Oh.

I love all of you.

Sounds like some experience with Bourbon.

Anybody have experience SASS versus --

Don't fuck around with language syntax. Things need to be opened and closed, you need periods at the end of your sentences. Let's just do this right.

And you can kind of then, it's easier to learn 'cause it's, like, it feels like we're doing CSS and you can just do straight CSS and it's fine. So you don't have to change.

So most people are talking about SASS.

All right. We're obviously not going to, like, fully get into these topics in five minutes. So please feel free to take those discussions further.

All right, so the next one is I don't think either of us have a ton of experience with and we're hoping that some of you might be able to help with that. Front-end testing.

So this is where everyone gets to admit they don't test, right?
[ Laughter ]

And then we can talk about why we don't test. And what, sort of, tools you've looked at, or possibly have thought about in doing those things, or not doing those things. And also, if you want to try designate someone as a notetaker, that will help to report back, just to be a little bit more concise.

PhantomJS, or PhantomCSS?

PhantomJS, sorry.

I was just doing this off the top of my head. All right, so go.

Five minutes.
[ Group Work ]
30 seconds. All right. Time. So can I get a show of hands:  How many of you are doing any kind of front-end testing at all. I'm just kind of curious.

Automated front-end testing?

Yeah, automated. With computers. Not visual.

So not clicking on my browser and adjusting the windows?

How many of you, like, do browser testing, essentially go through a bunch of browsers? Okay. That's good. Let's go the other way around. Let's start with this group over here.

I haven't done a whole lot of automated browser testing but we have a new project—it's an open source project called Five By. So it uses a lot of those things up there, like selenium web driver JS, and you can use mocha type driver, and you can pick which browsers and you can kind of script it out like click on this, and scroll on there and validate where that's at. So our team's using that now it's relatively new.

What was it called again?

Five By.

Like the word...

Yeah, there's a space. But other than that, I think mocha testing type functions for me.

We do unit testing, but mostly for regressions, so we don't accidentally wipe out some functionality that we chain. We don't do—we do the thing where we look at the site in browsers but we don't do it automatically.

Who was using in-browser testing, or automated in-browser testing? There were some hands over here. Can we hear from some of you? Yeah.

Dang it. So we use Casper JS with PhantomJS and we just do it for core functionality to make sure it can run. So somebody would log in, post a comment. We have a special story written about a tree or something. But we have 9,000 comments now because it's a comment every day or something. But I would say it probably covers maybe 5% of our code base technology it's super important that it works, the codebase, but the vast majority of the stuff, we just leave up to our, like, API unit testing on the backend to make sure that we get the correct data across.

I have one.

One more comment, maybe.

Tape plus Browserify.

Browserify is dead in the water.

Tape plus something else.

Tape is amazing.

That's a whole nother discussion. We'll get to that one. Test ling. Testling is dead in the water, which I spent a lot of time, big time. So let's just go over that group, any awesome stuff?

I like Leave Require, JSS a lot. So I like Squire, so you can combine that with many of the runners, but I'm huge with Tape, also.

We talked about the team that didn't have the technical know-how to stay on top of their tests where the team would fall behind not necessarily because they want to, but because they have members where it's not their priority or it's hard to make it a priority.

Probably our most-tested stuff are our CMS tools that are written front-end client stuff. We have a lot of testing for those but the user-end stuff is not very tested a lot because it changes so much and you just build it one month and you're like, I want something different and you're just like, ugh, you throw that away.

We test for style on some projects, also that we know that are going to long-living. So like pipe it is—pie flakes on our window apps.

I don't know if this applies to this room but if there's any audience that isn't the general public, we anti-test and we support this, this will work in Chrome, and if you don't have Chrome open and install it, then it will work. And that saves a ton of time in that group and we would rather go to bat with a company's IT department and their restrictions and we have gotten Chrome to the people in these giant, immobile institutions and that feels really good. Way better than testing. Hah!

I love it.

All right. You guys over here?

Anything to add?

Nothing to add.

One thing that was interesting that you were saying, like doing manual testing.

Yeah, we do manual regression testing. We actually do testing. We set aside the data for the push. So two days before the release, the data we want to push. We set aside in a room, 30 minutes to an hour.

You run scripts? Yeah, we run a script and we just check it off on a spreadsheet. We'll do it two days in a row. Two days before the sprint and then we'll push on Wednesday night, just to fix what we've found. And if we don't find anything to fix we don't test on Wednesday.

We do selenium for pages that we don't work too much. Yeah, I don't know. Some pages we're not developing on. So like—so we're never going to speak with a developer. We're never going to see them. So we're going to see if there's a 500 there at some point. So it's never going to be an issue.

Let's just skip it and we'll come back.

We're going to skip interface frameworks because I think we've touched on that. But I think we're going to go to build systems because I think that's one where people can have a little more... so Ron Rockily, makefiles. What do you got?

And if there's people in the group that don't know what these are, that should be your first question:  Why are they good? Why do people use them?
[ Group Work ]
All right. I don't want to keep talking about this probably for the next 20 minutes at least. We're going to cut it off and say we want to talk about other stuff, too. Let's start with the middle table because that's where I was just talking to people.

So, I mean, give me a highlight.

Uh...

Automation is great. We don't care what it is.
[ Laughter ]

Honestly we don't care. Some Grunt, and Gulp, some MPM scripts.

Bower.

Whatever works. Whatever works for you.

Sales.js.

Sails—SAILS. That's a good way to start a project.

Hey, trying to make the Chaos Monkey for the browser.

That's fuck JS, isn't it?

Any other thoughts?

Mimed?

It's kind of all of those things.

What's Middleman?

It's front-end based on Rails.

It's a static site generator but it doesn't have to be a static site generator, you can do other stuff as well. But it scaffolds out your code. It does all the automation shit for you. It comes with compass and SASS. And if you want to do LESS, you can do LESS, it can handle any templating language. All the Javascript compilation.

So we shouldn't use anything else.

If you're building static sites, yeah. If you're a fucking, long-form feature that's not Snowfall, I would definitely use that. Integrates with spreadsheets, APIs, it's rad.

How much more do you get --

It's like Jekyll if you don't like blah.

It sounded like our overall thing was that Grunt is a pain in the ass to write, so we prefer Gulp.

I agree with what you're saying, anything you're using is, is good. Whatever works for you is the right answer. That's my personal thought. I prefer Gulp to Grunt but I have no judgment for anything anybody says.

I never—we never used collaborative before --

Fabric is Python—deployment stuff. Python based.

I heard somebody say that it's whatever you picked first.

Yeah.

It's sort of true, right?

But somebody else picked first. And then you're scrambling.

How about y'all?

We like to write—it's a lot nicer to write Gulp than it is to write Grunt, we haven't used fat files or broccoli. (phonetic) it's kind of like we love Travis to run—to do deployments for us. Just because we do everything on GitHub. And Travis is great for that. And it's also free if you're doing that.

I've also started using Web pack. You can use it in Gulp, too, if you just use Gulp for compiling and building, you can do that but it's kind of got a nice, if you're doing—not static, but a React, or an Angular app, it has a dev server that's nice. And react has a hotloader, so you can change your JSX stuff and it would compile it and just load it right in the browser. And so it keeps your state if you have a search and you have search results, just change the search result templates without having to load. It's kind of nice.

It is somewhat picky about what it will hotload into the configuration of webpack is not simple but the dev server is pretty nice.

What about you all?

We use Forman and pack files. Although we are a Python share.

All right. Should we move onto the next thing? We're going to talk about client-side Javascript frameworks, which again, would be one that we can—probably had a lot of reaction to. And there's probably been a new framework that's come out during this conference.

Right now.

During this talk.

So five minutes.

All right. Time. All right. I think we'll start over there. What do you got?

We've got two React fans and I like Marionette/Backbone. So yeah, I would say that we've all played with all of them in some capacity and I think that some of the—there were some Angular nuances that led some people to React and I just moved from Backbone to marionette because I was tired of bringing.

And React, more specifically is more flexible, as well.

What's that?

Flexible. Which is another.

It's like a he pattern, more or less.

There's like 30 flex libraries and within, like, a three month span you'll go from experimental to four versions to be deprecated.

Flux.

They're in flux?

Oh, it sucked. We had a bad—we called it the "lost sprint." So you save yourself time.

Was flux the one that --

So don't use flexible, is that the takeaway? Was the consensus to not use flexible?

No, flexible was the one that met our needs for routing.

Flummox. That was the one.

What about the middle group over here?

One React, one Angular and one I love Backbone and underscore.

But the Angular one, I use it, it's fine. It's just fine. It's not great. It's a lot of magic and really hard to debug but, you know, when you want something quick it's nice.

I mean, so yeah, Backbone and Underscore are so much of what I do is with data. So having a model and then you write a controller for it and then you attach it to a view and then you've got a really beautiful—that's how you're supposed to write Javascript so it forces you to write really, really nice Javascript and it gets people away from doing just a shitton of jQuery selectors and really actually thinking about how those things interact.

How about you guys over here?

Angular makes me feel dirty.

Plus one to marionette.

I mean, for me, I'm also like, in 192 Backbone camp. But for a lot of things that I do, or at least—we don't lean them if we don't have to lean on them. We generate HTML, not having to loop through things. And put them together in a way that's very similar to Javascript. So unless it has to be a really dynamic app we try to cut out the mimed in this case. And not pull those in unless we have to and that helps us performance wise.

Because I would love to use ember. Because ember is pure fucking magic but it's also a fucking huge performance hit.

But not anymore.

But the question is, is ember fast yet?

One?

What for what?

Ember fans?

I love it. It's fucking pure magic but I can't justify it.

It looks like they're hiring.

How about you guys over here? Some Angular fans, right? Or users?

More React now.

Yeah.

So, and at the new Wall Street Journal home page uses React. We're using it for the Market Watch home page project that we've put up.

We use it are reflux—another "flux" in conjunction with React router which was not too bad but probably there's a better one out already.

There's a new version of React Router that's coming out next week.

Done, boom.

And then the second version in two months, it's changed everything.

I know the guy who writes it. He lives in Utah.

And it's a great framework that works but they're still figuring everything out. It's kind of ridiculous.

Also, I will add that I'll still write Backbone occasionally and I write it because I never have to worry about not knowing something about it that would throw me off like in Angular or React. And so you can be sure of Backbone.

And just Underscore gives you so many tools. It's almost like jQuery. JQuery is the best regex tool ever invented. Just don't write some fucking regex function, use jQuery. And handlebars with underscore, it's just so... beautiful.

All right. How much time do we have?

What time do we go to? We can squeeze it in probably, if you don't mind going late. Go right up until 3:00. You can bail if you want but we're going to talk about module loaders.

So we're going to go through module loaders, maybe not the same as architecture stuff. But so, five minutes. Go.

I've never been able to get one of those fucking things to work in a CMS.
[ Group Work ]
All right. We're going to call this right now because looks like people are leaving for the next session. Any other thoughts about module loaders?

Browserify. But once modules get to browsers natively, that's when we're going to use them then. Provided that it's good. I don't know. It could be awful.

We have some Require stuff in production right now. Babelify, I guess.

Thoughts over here?

Require. The ease of shimming things is my favorite. Mapping, and doing other shims and stuff I think is very intuitive. It works with my brain. Yeah.

Anyone using Webpack? I heard you guys were talking, or were excited about it. Has anybody put that into use?

I've used it and I've used Browserify before and I really like the Browserify system better and I'm worried that everyone is starting to use Webpack and Browserify is going to not, sort of, have a huge userbase.

Also, like, the big dig on Require that I would have is that it has the slowest builds off all of those things because every other one of those has a thing where it can sort of smart-build the pieces that have been changed and Require, it's all or nothing if you're actually building it.

Any other thoughts?

All right. Well, I guess that's it. I think that wraps it up.

We'll have the notes on the etherpad, if you want to see, hopefully you learned some good things or, you know, have vindicated some of your decisions, probably.

Cool.

Thanks for coming, everybody and having your lunch with us. 

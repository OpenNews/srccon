---
layout: 2015_layout
title: Session Transcripts
subtitle: A live transcription team captured the SRCCON sessions that were most conducive to a written record—about half the sessions, in all.
section: docs
sub-section: interior
background: books
byline: Nate Bolt
bylineurl: https://www.flickr.com/photos/boltron/3212284622/in/photolist-5TRNiC-4VkeqM-4VpqGm-4VkcGz-4Vpr1S-4Vken4-fmXRof-2YtFPR-fmHB44-dFxkXG-7yv4t7-4VnnAn-5A3XSn-4Vnnmv-4VnnqK-9uup4n-4Vnnv6-3ViP2v-4VnngF-4VkgVa-4VkeuZ-4Vkg5R-4VpmbC-4VpnDu-4Vk9rK-4VpqRL-4VpsPb-4VpuU3-4Vkf5D-4Vkdj6-4Vk8uc-b1TXEz-4VkhcX-mF5DPa-fmHXAB-r8mgB3-s5i4Mz-7i3R7t-og8qB5-fmXSCf-7i7Ky9-92YNnD-fmHDut-5C51hV-rMM8b3-k639ok-8FDPAB-apFhiP-rL2vRV-4VptiN
permalink: /docs/transcripts/betterprogramming/index.html
---

# Become a Better Programmer Through Mundane Programming

### Session Facilitator(s): Daniel Nguyen, Geoff Hing

### Day & Time: Thursday, 11am-noon

### Room: Minnesota



Morning, everyone. Thank you for joining us. I know this is the most excitingly titled presentation. There was a purpose to that. I know I'm probably kind of boring in actuality but that's just a coincidence. I hope what we have to talk about is hopefully going to be very useful to you, or at least enlightning. But anyway, I guess we'll just introduce ourselves real quick. My name is Dan Nguyen. I'm currently a lecturer at Stanford University in their Computational Journalism Lab. Before that, I was at ProPublica working as a news application developer and then before that, I was a regular reporter at the Sacramento Bee, although they slowly moved me into multimedia. I did do computer engineering in college and I wanted to not ever do it again, but they slowly pushed me in there and, you know, it worked out well. I wouldn't have done it on my own, so I just kind of waddled my way into the field. But anyway, so that's where I come from.


My name is Geoff Hing. I come from Chicago where I'm a news application developer at the Chicago Tribune. This time last year I was doing development work for OpenElections. I don't know how many of y'all have to deal with elections and elections data, but it's like a treasure trove of mundane programming tasks. So that's me.


Okay. So the title of this talk was actually just going to be "Mundane Programming." And they were like, "That's not a very good title and people aren't going to go to that" and I said, okay, "Be a Better Programmer Through Mundane Programming," which is really, it's not me trying to dress it up; it's really the whole point of this. It's something that not everyone really realizes—that I've kind of realized late in my career that I've been lucky to work at places where programming and journalism was encouraged, especially at ProPublica. And I mean, I kind of hated it, to be honest. I like writing more than I love coding. But anyway, as some of you know who are kind of in the field, there are very exciting challenges in terms of either disseminating the production part. A lot of people think about it in terms of who's going to build the next mobile app or website to doing investigations and it's so... but it's also a very tough place to be a programmer.

I've never worked in a real, or in an engineering company but I get that, like, there's a certain process, like, there's testing or there's other programmers to work with. And so, many newsrooms, if you're a developer, can be a little bit lonely. If you're someone who's trying to learn on your own, it can be very lonely. And so we want to do, kind of, reach out to that group of people, people who are whether you're pretty new, you've been going at it for a few years, few months, or maybe even if you're kind of an intermediate level programmer who's come out of school, and we want to just to kind of, as a group, talk about you know, barriers that you have in programming.

Like, what you aspire to, why you didn't want to do it other than just like, it's a promising career choice compared to the other journalism positions you might find. But yeah, what makes you think you want to do it. And why do you do it when it's such a pain in the ass? So Geoff, do you have anything to add?


No, it's just that that's what we're trying to get at in the session. Couple of procedural points. We have ether point going, in addition to the real-time transcript that Stanley is making. The etherpad is for if you have thoughts that you maybe want to raise your hand, that you thought were relevant for links. We thought of that as more of a participatory aspect of the session and so the URL is there. I can read it out loud if it's too light. Does anybody need that? And then there's also a site that Dan put together that has a number of examples of, sort of, mundane programming tasks with source code and these slides are also on the web for future reference...


In a quick note, it's supposed to be more polished. I realized that it's also a lot harder to do that and also the presentation as well. My goal:  It's something that I'm planning to build along because it's just useful to a lot of other people. And not just the people in this room but if you go to it now, code snippets at work for me, and actually one of the themes of this is to not give a shit about anyone else as long as your code works for exactly what you wanna do. But it's something that I'm going to polish as soon as I'm not busy coordinating, or helping with the presentation. So anyway... moving along.


So let's talk about, like, the zen of code or the essence of code.


Some of you guys may have seen this mega, 38,000 word article in that broke out in Business Week. So basically, editor the editor of the magazine asked Paul Ford who's a well known writer and programmer to tell him what code is. And to be honest, I didn't finish it because it covered too much stuff that I read about all the time. And I thought, oh, that's pretty cool. And it also didn't work on my iPad.

[ Laughter ]

But the great points, right away—this is near the top and this is exactly kind of what—I mean, I don't think that I could have said it any better, no matter how amazing the stuff that we see computers do today, whatever they can do, you can do with a pen and paper. The only difference why you don't do that is because by the time you've written one stroke, a computer can do it a billion times. So whatever you can do to give it to the computer, you should do. But that doesn't mean that just because computers seem—have seemed to get so advanced, or the frameworks seemed to have gotten so high that we just kind of throw up the, "The machines have taken over." There's a lot of room for us. Just as there is in chess, I know that machines in pure force can beat humans but what's gone on from there is humans against each other using computers is still a wide field. They still beat supercomputers, hands down. So that's kind of the minds that we want to bring to this. So if you're into programming because you think it's a neat thing, or there seems to be a tech bubble going and you want to jump on that, great. But it's still an incredible, intellectual pursuit and if you're in journalism, there's a lot of great, just practical opportunities. So it's we wanted to—just talk, discuss it more in the room.


Do you mind if I dive in?


Yeah, go ahead.


So there's sort of a difference, right, between this essential programming:  Taking tasks that you can do with a pane paper and automating them, and making them do them at a grander scale than you or your colleagues could ever. and then there's the presentation of this article that this quote comes from which is beautiful and things moves around and it's very elaborate and elegant and we want to unpack the what programming looks like to you, and one way we thought of doing that is if y'all could share, sort of, programming fails. The times when it doesn't happen and so, as much as you feel comfortable, let us know, either a time—an idea that you had for a program, like, oh, I could write code to do this, and you haven't done this. Or when you started down the path and had to punt out of it early because you just either, it was above your head, or you didn't have time on the deadline that you were working on there.

So let's get at what, like, what real talk—what programming looks like for this room. And I'll try to follow it in the notes.


And then we know that not all of you are—I mean, we're expecting not all of you are professional programmers. So don't—it's not the—the standard here, but we just kind of want to hear what you think programming is, what's blocked you, or what you aspire to do, what may—what you see as kind of barriers to you as you're trying to pursue it professionally. So anyone wanna... open up the floor?


I have an example.


Sure.


So I work with data a lot. And I actually use Excel for many things and people keep telling me, "Hey, why are you using Excel? Because it's hard for you to document everything." But I'm trying to move to doing things in Python but it's so much easier for me to clean things, sort things, building things in Excel and there's this shame in doing that.


That's good that you brought that up. But no, no. You're not a negative story. I mean, you're able to get the stuff that you need done and yes, that's hard to know when you jump into the next level, whatever that is. But if Excel works, it works. Anyone else?


It's not really a programming fail but when I first got my job as, like, a web designer I kind of did the con your way into it and then Google your ass off.


That's what we all do!

 [ Laughter ]


So...


That's a reality.


So they gave me access to some app server where I needed to save something and I logged in using files that I looked for the first time through Filezilla and I accidentally hit the header where it says like "file name" and so it reverse sorted everything. And I couldn't—it looked like I deleted everything, and I was just like crapping in my pants. I didn't know what was going on. And I really thought that I deleted everything. But that was it.


A great representation of a common problem that we have no matter how good you are at a certain software. It seems there's newer and newer software. It seems like things are becoming obsolete, like when Gmail put in symbols instead of text for send and stuff. Luckily, there was an option to turn it back but I didn't know what to do when they put little emoticons in there. But anyway, problems with the interface, that is a key thing.


Go for it. In the striped shirt and then...


So I have a --


Oh, you both have striped shirts.


It's okay. Go ahead.


I have a pretty funny fail from the first time I wrote code for part of my job. My background is reporter, as a journalist and I always wanted to do more programming and I was kind of learning it on the side, and at the time I was working for Digital First Media, which is a newspaper chain and they had sort of—I forgot what they called it, but anyone can work on for one day any project they wanted. So I worked with another editor on working a really dumb Twitterbot. The idea behind it was that it would make any—it would scrape headlines from other news organizations and it would make them into an Upworthy-style headline and it ended up producing some very morally abhorrent...

[ Laughter ]

Headlines that we couldn't share with other people. Or they would think we were monsters. So yeah.


So I used to work for a television like a very small ABC affiliate station as a web manager and the person who I inherited the job from was far more advanced as a programmer than I was and he built a system that would take the files from the MOV files from the shows that we would film and in Python, would convert them to MP4's and then from there put them onto a shared folder and then the system would break all the time. It would just, anything could break it and I would have to be responsible for fixing it, which was, I mean, he did the right thing. He took a very mundane task. He could have done that manually every time and really programmed it, so he didn't have to, but fixing it as somebody who also started off as a reporter and did not know that much about Python and, like, the process that it would take to convert video files in an automated manner, it was just very difficult and I had to call him a few times. He had already left the company but I had to be like, "Hey, Josh, what did you do to build this?" So that was a bit of a fail but eventually, I feel like I figured it out and I left and now I don't even remember.


It's never a fail if it's someone else's software that you have to learn. It's always the other person's fault. Yes?


Um, I think my fail was not planning ahead. I decided that it was going to—that it was a great idea to learn Angular while building an interactive website for a storytelling project and I was like, "Oh, it works great. It's fine." It was fine. It was hard but the problem with that, obviously, this website wanted to share stuff, as well and as much as possible with SEO-friendly stuff. So I realized Angular really is Javascript. So an Facebook, it would be almost impossible to share any story with just share the actual website. And that was, like, at the end of six months of, like, working on it and I was, like:  Oh, my God... that is... and it's super important for in terms of journalism and being on social media and it should have been a thought of what do they want. Okay, they probably want an ability to share. And Angular was probably not the best plan. It was a great plan for whatever interactive entity that was there, but the sharing was not working. But it was kind of challenging, or yet to pay for services and it was kind of a mess. So I think planning ahead was one of the fails.


Sure. You...?


So everyone's biggest problem with Angular was that they try to learn Angular in the middle of something else. It's like the Angular developer hack. My favorite programming fail that I've ever done. And it was really related to mundane programming. At the beginning of every week for a long time, it was sort of this routine database maintenance that we were doing where we were making a sanitized development database for our development staff and on a Monday morning at, like, 6:00 in the morning, I had just gotten up, okay, I'm going to find a way to strip this all out. We're going to schedule it, we don't have to worry about it anymore at me and I had working perfectly. It was going fine. I finally ran if, I looked at my local database, nothing had happened. Dropped my local database, nothing had happened and then realized about five minutes into it that I was still keyed to a production server and had dropped our production database about an hour before we hit peak traffic. So that was... there are some perils in mundane programming that are moderately terrifying if you're doing it on no sleep and without much caution. It was a good day. Real good day.


Along with that, I thought I was reading up on staging from scratch in the same way that I rmr.f'd the entire directory, including the databases over time. So I had 30 minutes until the Varnish cache expired in order to rebuild and re-report everything. I just stood up from my desk and stood up and said, "Oh, shit" and sat back down and realized that I had 30 minutes from that point.


You guys have seen Pixar clip where they were making toy story two. And this was right before it was going to be shown. And they scrapped the movie anyway and redid it. But if it happens to Pixar, it should be clue you that this is an all-too-common problem.


So I'm a designer and I work with developers all the time, right, trying part-time as a developer, too. I'm getting myself into some tricky situations. But I was working with a guy who would do things like you guys were talking about just about every Friday. And so, and his name was "Steve." And I was like, I got so pissed off at Steve every Friday that I had to call him something else and I ended up calling him "Teddy" because I was like, you can't get mad at a guy named Teddy. Anyway, small story. So he's known as Teddy.


On Monday I was showing a coworker how to deal invisible files off of thumb drives that she uses to plug into a video player and the video player plays the first file and dot files that proceed that file that she wanted to play. And so I opened up the terminal and I told her how to change the directory and rm.* and on Tuesday while I was at lunch she forgot about change directory and about dot star. Because you open up the terminal and you put in -rm.*. Luckily all her important files are on flash drives. But that was a fun day.


I mean, I've deleted entire websites, dropped databases. T'd off the Washington Post on election night trying to do cache invalidation. I've done it all. All of this has happened. It's fucking rad.


So I'm hearing, like, a couple of themes that are really related to this talk. Like, one, that a lot of programming and the time that you spend programming is spent not programming, right? It's like panicking or --

 [ Laughter ]

  —or panicking and then typing a few things into your shell and then panicking more. Also that it can be hard, it can be really hard to learn programming when the problem that you're solving or inheriting isn't your own. It's not one that you know intimately is something that I heard in a couple of stories. We're going to get at that soon, maybe now. Let me switch to the others. Back to the slides.


Aww, yeah! Anyone wanna watch RuPaul's Drag Race? A common saying that she has contestants that would freak them out. If you can't love yourself, who hell can you love? And I butchered that quote but there's a lot of fighting on that show, a lot of negativity and RuPaul tries to herd them all together. And it's a great quote, and I like to put it in terms of coding because what I think—not even just being at Stanford where—not every kid but it's very much into their heads to be "let's be the next Mark Zuckerberg." and they're saying, what ideas should I build for you? And it goes nowhere, of course. And those are people that are Stanford students and we're running up into this natural brick wall of trying to build something for someone else and I think the problem is much more acute for people who are not—who don't have the time to be a student and learn it in school when you have all the time to do just dumb things and make mistakes and pull all-nighters three nights in a row. And to what I've found even as an engineer, or what has taken me almost too long of a time to learn is, is that things too so much sooner when you think about it yourself, because what you need because at the very at least you have a user of one. There's some need that's being met. Chances are, you're not the only person who thinks like you.

What I can think of, like, an example for myself, when I went to ProPublica. They were like, we're going to do Ruby on Rails because the New York Times is doing it. That's the only reason I like New York, which is this ruby hold-out while everyone else is doing Python. And I was like, I have plenty of programming I had that background. But my problem was that I was trying to look for an apartment in New York. What I would do is write ruby scripts to look through Craigslist. But the problem is, I'm tired of opening up every page. I want to scan things. I know words that I want to look out for, or things that disqualify me. I just want something to pull down the RSS feed and then pull it into a spreadsheet where I can sort it, and that's where I built up on my Ruby skills and it was horrible code, I'm sure but I didn't have to please anyone. I knew at work, it made my life easier and that's kind of, those of I who have been in professional coding environments, you know that quick iteration is nice. It's very essential to becoming a strong programmer. 

So there's no fast iteration. You run your code. I mean, hey, this sucks, this doesn't do what I wanted it to do. So that's kind of, for me, one of the core things to think about and it's okay. I know a lot of you are in journalism 'cause you're patriots and you're fighting for the First Amendment and social justice and that's great but you can't do all that if you're struggling with deploying stuff and that's, those of I who are in production-level development, those of you who are trying to struggle with what you feel is a basic HTML and whatnot and you're getting frustrated. Obviously, doesn't help until you are able to kind of fixate on something that, that will move you along the chain. So so that's kind of one of the themes is just—a lot of people want to program 'cause they want to—they don't want to—they don't realize that programming is a pain in the ass. They want to do something exciting. But don't feel the pressure from that. Do things for yourself, and hopefully things will fall into place more for you.


So in addition to, like, owning the problem, let's unpack what's what are the good tasks for honing your mundane programming skills. It's not only your problem, but it's one that you can understand because you've done it in the slowest possible way, or in a way that you know how. Whether that's in a spreadsheet, or whether it's by hand on a piece of paper and pencil, you kind of know the steps that you need to replicate in the code, so you're kind of not both learning a programming language and how the standard library works and thinking through the steps of the problem.

Again, like, doing something that saves you time so you're not both at the end of maybe spending some frustrating time making a program, you still have that, you're like, "I still saved myself two hours even though it took me two hours to write this program." So having that reward for yourself is great.

And then finally, having an immediate, concrete goal, a simple task that you can not only validate the output for maybe a slice of it with the manual method, but just, sort of, a problem that you can fit within the time that you have to code it rather than thinking about what the most amazing, bells-and-whistles-aspirational project that you can envision. So here's a great addition to the Craigslist scraping example. Here's an example of a programming problem that really speaks to those points and to also somebody owning their problem. I'm surprised that the Jail hasn't, like, made that a service.


So actually, one thing, Reddit is a great resource. They have a /r/learnedprogramming subreddit. And they also have a very busy Python. although not all of you are Pythonistas, but there are a lot of great thirds like this. But this is an excellent one because actually one of the first things that I learned as a programmer in a newsroom, I still had to check the jail logs and it was a real pain that the ass. You had to go to the website and you would click each name and you had to click into who was in jail, you had to click the name, and what their bail was set at. So that was one of my PHP scripts, so pull stuff up like name, and bail, like oh, there's someone in here with a million dollar bail, and other stuff like that. But the thing is I did that just because I was tired of clicking, like, 20 links a night. And so I 20—I mean, 'cause night cops—nights can be quiet. So just do that. And I were, like, a real reporter. If I had—if I was, like, a real data journalist at the time, I would have done something more than just who's—who has the most bail. I mean, a lot of times it's like, who's the fattest prisoner? Or the fattest person, or the tallest person, or the shortest person, or the person with the most tattoos because they have stuff like tattoos. And... but that was the extent of my intrepidness. But at the very least, we didn't break any huge stories, but at least I knew who had done something bad that night and so I totally deleted this. And this is a problem that not only is it kind of something to be gained but it's also kind of personal. Like, people were kind of waiting. I think people who aren't actively seeking out programming, they're thinking, "Oh, somebody's going to make an app for what I want." This is not something that people—this is not a big scaling problem, right? This is something that this guy and his wife needs to figure out. But it's a very basic human problem. Like, I wanna know when something happens in this specific area. Really personal to me, and I need it to happen on my personal schedule. So who can do that for me, and there's not any wide-scale solution for it.


So let's starts at about—let's start talking about going down a path of identifying problems like that and starting to hack on them. So... one of the aspects of picking a problem that you understand is that you know what the expected output is, and you can, without doing something as rigorous as unit testing your code, you can have an idea of whether it's working or not. And that's very crucial for picking a problem where you're able to learn from your programming and learn from your mistakes in a small amount of time. So in this session we're using, sort of, like a—we're talking about programming, right?

We think of programming as any set of technologies that you can use to get your work done faster than you could do it manually. And one really great example of that is shell commands. Command line utilities that come on your computer. I see a lot of—I think I see all Macs here. It's an Unix operating system. You have, like, a world of these little utilities that you can run and an environment that you can configure to make your life a little bit easier whether it's making your prompt, this delightful creature, or changing the background color of your terminal, or a bunch of other things. And these are small pieces, right, but they tie together. You can do some really useful work.

And there are tools that you have. You don't have to install anything. You don't have to—there's likely in all those configuration files, something to begin with that you can sort of slightly modify to better suit your needs.

And as I said earlier, what you learned by using a command line utility or editing script, you can kind of remix together into something that looks a lot more like capital "P" programming. And so you start small with little chunks, and move onto bigger things.


So that little script that he showed will—not something that I put, but it's not even my script. Like, someone has made a script, or a little suite of things called "Gifify" and it makes a gif—or jif, whatever you call it. So for me, I write a lot of online material and it's such a pain in the ass to take a movie, and do whatever I used to do to convert it to a gif copy the filepath to my text file. So this is something that I quickly wrote, I wanted to download and I wanted a certain quality level. It presets all this stuff because it's very easy to get the impression that if you're a programmer you have to remember all these archaic things and sometimes you do because you're just doing it so much. I mean, it's just natural, right? But I have to say, I don't know about the rest of you, but hate the feeling of oh, I'm spending all this time learning about this stupid little program. And I mean, this is a great program, but like, I, as some of you know who've worked with command line argument, it's like, if you use these flags for rm, you're going to get something very different. This is just—someone wrote this for him or herself, has shared it, and I was like, I really like this. So when I write Unix tutorials, I find that I don't like doing webcasts, or web videos because it's such a pain in the ass. Just ten second clips and I just throw it up like this. And this is something that I did for only even very recently and it just helps me, even if you don't feel like you're learning something, it helps you, just like looking multiplication speed tests, or speed tables just help you get familiar with numbers. This stuff used to scary the hell out of me, even at ProPublica. He wasn't pro guy. But he would help me with sysadmin stuff. He would copy stuff and paste it in Notepad and all this stuff. I had no idea like oh, this is too much beyond me, the Ruby programmer but now I'm like God, I wish I typed it. What I find when I try to learn any language is I try to take any problem where I know what it should look like, what the answer should be, sometimes I'll type it out exactly. Sometimes I'll do something to change up the variable names just so that I know that, I know that it's no really an epiphany and sometimes learning isn't like that. But if you can make it like kind of low energy, you'll be surprised, like, how quickly you'll build up that familiarity with the code.


So I think that's, like, really, really important is part of what makes scripting and programming useful is that it's very easy to make small changes and to experiment with what your process, in a way that might be much more difficult if you're doing a manual process and doing those experiments. But on the subject of making short, gif-based movies, let's look at some examples of mundane programming tasks and their implementations. This is Dan's, and he can talk about it.


I did this this morning. So you'll know how to download a file in your browser. So when we talk about programming, I don't say, give up your fancy browser. When I do something like this, I don't pull it out on the terminal. It makes everyone's life easier. I'm downloading the SRCCON logo or whatever.


But you could do it other ways, right?


And so here, and so this is how I tell my students. I'm like okay, you all know how to download a file. So let's try something a little bit different and this is tough because you're like, "Why the hell would I want to do that?" What's this curl shit? Especially if you're a slow typier, this is really bad. But but especially in school, it's like, shut up you have to learn it. But here, this is the hard part because this is something that you should get in your head because when you start programming for anything. I mean, every time I try to program for a task, it takes much longer than I would want to have done it. Which makes it something that you don't want to do on your job because you're going to piss everyone off, and you're going to piss yourself off. But okay here instead of downloading a file and curling it. I'm going to click it. With OS X, which is great, not that we're saying it's the best system but I've just learned to type "open" and it will just pick the default application to open that file type. And I don't even move my mouse for that.


In addition to saving mouse movements. Does anybody have another reason why you would use curl to download one or multiple image files instead of just right clicking in your browser?


Faster?


It's faster?


It's automatable?


I really want to --


Tell me about your image scraper.


So I want to write this article, the flags ranked. 'Cause there's, like, the confederate flag—fuck them. So I want to write but it's going to be a random sort so I'm just going to Wikipedia and downloading all the flags. So everyone gets trolled when I write this.


And there's other reasons why you might not want to script and automate downloading images as well.


Okay. So you know this video. So okay the problem with any link, or especially with link shorteners while it gives you a nice, rememberable thing but it can literally point to anything, right? So whether it's just a friendly link, or you're getting phishing links. There's many reasons why you don't want to click through it. A browser is many things. It doesn't just download files. A runs a bunch of code when it runs a page. Maybe you don't want that to happen. Maybe you're at work and you're like, I don't know where the site's going to take me. So the thing about did you recall is it's the same web probable but what it's doing is downloading at that web address. I think the example that I have in the code is I want to see where it redirects if you type in curl cap, hyphen I, you'll learn that. For me, when I was learning curl, it was totally foreign to me, even as a programmer, I was like, that's not so bad. All this stuff that you see in your web inspector. And one of the things that I do in my classes, or my day journalism classes was that the government releases this massive list of gov domains. You do this you see which sites are up, which are down, which have been hacked. Well, you could do that with your browser. You would be really obsessive, but here, when you can express it as a command then you have much more flexibility to do the kind of weird, not even weird, but just easy, mundane things that are not just very exciting but they are exciting when you can have someone else, in this case, the machine do it for you. But this is obviously just one example but imagine it was in a loop.


So another nice thing about mundane tasks is it's a really good opportunity to try different tools. So for example, because you know what the output is supposed to be, you have some familiarity, perhaps with solving the same problem, and it's at a scale, we're doing something different. Rather than what all of y'all were talking about learning Angular to execute a bigger project, you can try something slightly smaller for a smaller project. Had so for this incidence instead of using wget to do a curl, using the command line, you can learn how its design and its intentions are different. And whether it does that task better or worse, and whether it's something useful to have in your toolkit for other problems that you have in the future. So these small, mundane tasks are really good low-risk opportunities to try one or two things different with your technology or coding practice.

So a second example. This is mine. In Chicago coming up there's a big set of Grateful Dead concerts. Not of particular interest to me, but I'm stoked. But we have to analyze setlist data, we have to dedupe song titles. So we got this list of all song titles known by Gracenote. And what actually needed to happen was we needed to export this into a csv and transform it just a little bit to use another tool to reconcile the rows in the set list database with those canonical titles using source refine. And we've all done this. You can click in the cell, edit what you need to, do "save as" in Excel and you've solved your problem. So in many cases, like the tools you know are great. But there are also, kind of compelling reasons to do something different.

And one of the reasons is that your data can just get really out of hand if you just start doing it in the spreadsheet and I lose sort of the history of the et cetera that you're making. And it also makes them really difficult to replicate, or to go back and replicate them. So if you want to document how you transformed that data to natural language, you can see it gets really, really kludgy really, really fast, or if you're trying to explain to a colleague how to replicate that work. When you read through this, there's a lot of things that end up being ambiguous or just confusing.

And also, you know, we're pretty error prone and so it's really easy to make small errors that could throw out your entire analysis and I personally find those a little bit—are a little bit easier to see when you have it written out, or even when you have to write out what you're planning on doing, the code that does it, and running it versus just running it and seeing the results in real time. So one of the big advantages of programming or scripting or even just doing things through a series of command line utilities is that you really explicitly see what's happening and someone can run those same commands on the same input data and get the same results.

And also, as that problem scales, it's easy to rerun those commands again and again and again to save yourself a ton of time instead of just a little bit. So what that looks like for my task instead of editing that Excel file, renaming the first row, clicking to add a column and using the dragdown to fill in to create sort of a surrogate primary key is, I can do it in a command line and paste that in my readme and my colleague knows how to go from that source file to the one that we're using in OpenRefine by just running this command.

So we use an utility in csvkit to convert it to csc, we use Tail to strip out the first title row because we don't care about it. We replace it with a single cell that just says, "Title." It's like the column heading in a normal csv file, and finally we we use another utility that's part of csv kit to include the line numbers as a column and then we output the whole thing to a csv file. So really easy to do that in Excel. A little bit harder to do programmatically. And also some of the skills are transferable. The little bit of regular expressions syntax that I had to learn for that "said" command is maybe something that I can use for a similar problem in the future. We have about 15 minutes. Do you want to dive, get into this?


I mean, just very briefly, just don't think that oh, everything is Excel. I mean, the reason we deal with Excel so often is because the government uses it, right? And if you're in America, that is what you will run into. So the obvious question, so Excel, or at least Google spreadsheets, modern spreadsheets are an amazing thing and you cannot—don't take them for granted. If you know them, you know, there's quite a stunning ignorance of spreadsheets, even among the investigative journalism world.

But the reason why we use them, or why you'll run into them is 'cause other people use them and that's kind of the core problem of any programming thing. You're trying to interface with other people. And the links here I have. I have a few examples. One is California's Department of Education has a lot of data, one of them being a decade's worth of vaccination rates in their kindergartens. And another is AP, ACT, and SAT scores for different schools, so that's 45 different files. There was something else in the repo, how to analyze California's academic performance in 80 steps and I got really bored of that. But the thing is, you hear that and you're like holy shit. First of all that's the reality. It's part of the bureaucracy. Part of it is things change, like, the SATs change. The Excel files. There's random notes in them. They're no spreadsheets that you can just convert into a csv but you have to do things like as Geoff said, strip out some lines. You can do that for a few files but if you do it 45 times, I think you're just going to quit life in general.

You're definitely, unless you're a very passionate reporter about that topic, you're not going to do it. And so that, widescale analysis is only reserved to the people who have the time and the support staff to help them. But what about—I mean, there's plenty of team who would take a look at that and if you're a programmer, that's one thing even if you're not, like, super into it, this is the kind of—so this is veering off of like, "Oh, how can it help you right away, like, find you an apartment or a job?" But here, for me, extremely lazy as I am, these are things that I have to look at because I'm a reporter. But I don't really want to. And I don't want to spend too much of my life on it but I can at least incrementally go at it. So I'll write a script to just go get the links because it's a pain in the ass. I'll go and download them. One of the strategies is keep your stuff in order. You'll be surprised how much that matters in professional journalism but just make sure that you're downloading the files in the right place. And you'll never forget where everything is. That's one of the nice things about a script. And when things run in Excel, I would just leave them in Excel and go in there but now I'm like wait, there are a lot of libraries. A lot of comfortable with Excel. So you have to take a breather and say, what if there was an easier way of opening this file that didn't involve opening Excel, doing the random clicking and dragging. One example that I saw Reinhart-Rogoff was the big economics stuff that Tommy touted. And Harvard researchers—it's not like some kids in high school. But Harvard economists just didn't drag the formula far enough. So I think some Princeton guy looked at it, like a grad student finally called him out on it. But I mean, it's not because they're stupid but that's human error and that's not something that—and they have all the time to work on that stuff. They screwed it up. I don't have much passion about a lot of data things. So I don't want to take that. So some of it is just recognizing human fallibility. And it's a pain in the ass but it's better than recognizing the alternative. But that was another solution or another scenario in there. But we've got what, like, ten minutes?


I want to say one thing about this. I think a lot of times when you're looking at a massive set of data and you imagine, like, you imagine the software workflow to sort of go from this trove on the website to the analysis that you need. And that can be really daunting and that's not maybe going to happen. But you can break this problem into at least some chunks that you can automate and use it as an opportunity to hone your programming schools skills. So if you look at the program, Offline as an example of this. Maybe you don't want to worry about learning a program to do the downloading, you just write a script to get a nicely you outputted list of links that you can just click on and download manually. So I encourage you all, as you're thinking through your problems, break it down into little chunks. Maybe you can't code your way out of the whole solution; but you can find something in it that is a coding problem that is at your ability, or at your time level that's really useful to you and an opportunity to learn cool stuff.

This is another example. I want to skip through this and get to... some brainstorming. So now we've seen some examples of some, like, mundane programming tasks and ways that they've been solved with scripting code, and we've heard some war stories around big projects that were difficult because they were trying to learn a new programming language, or inheriting a codebase from somebody else. Now, let's talk about some examples of mundane programming in your work, or, sort of, if you haven't written a lot of code, or you haven't done these yet, just sort of opportunities that you see to do these tasks.


That's true of the—who can come up with the most mundane thing. I can come up with one thing.


I'll send somebody something really, really boring if you have the most mundane.


This won't be the most mundane, but one of the things that I've done, at all the places that I've worked, Javascript thing. They can paste the spreadsheet into tabulated crap and it will post into an HTML table that can post it to whatever shitty CMS they're using. People love that. To them it's like a miracle. So that's the level of mundanity that I've been working with.


I've been trying to learn node.js recently. And there's this lovely Avril Lavine jacket that I've been looking at. And it's summer, and I don't need it immediately. So I wrote a node.js thing that will look at the L.L.Bean site and look for a price drop. But I've learned both node and Heroku. Both trying to save myself $25. I don't know if it will ever go down in price but we'll find out.


So part of must change is every morning I have to scan a variety of news wires and we have three that we use that are content partners and some of them have their own wires and some of them we have to actually check their website and it's pretty tedious. I have, like, five tabs open at all times and I have to read, you know, 50 stories to figure out, you know, what we want to use. And so, instead I could probably automate that or create some sort of automatic reader that would sort out, like, if it contains terms that we're definitely not going to use, I develop a news website for kids, it can probably start without with anything that mentions "great" or anything that mentions "not-safe-for-school" sorts of things.


That's mundane but it's kind of a core—I mean, really one of the core things of programming and journalism is just filtering information. So anything that involves filtering, you're kind of on track. I was just going to say, learn regular expressions. That's one thing that I wish our stupid computer science teachers would have made us done but they were like, oh, that's boring. That literally would have saved me years of my life because it's just a way of thinking in patterns. It is, and it's part of every fundamental programming thing but it sounds really boring, you know, "regular expressions" but think of it as find and replace on steroids but it helps with a lot of the mundane crap that you come across. Anyone else?


Scheduling system gets inputted into a third-party and then pulled down through JSON, reimported into our database, so that we can index it and build PDFs out of it. And that's how we build our scheduling system. And we do that for contractual reasons. But that is the thing that I built the tool that they could manage it with and I'm the only person who still uses that tool just by having no knowledge of housekeeping.


Secure job, right? You in the back?


So I teach. And I'm curious how much of this mundane programming is actually experiencing the suffering...


The agony.


of manually doing the mundane task because I'm actually thinking of using scraping websites as a way of teaching programming because there's so much procedural stuff that you need to do and step by step stuff that you need to go through. But I'm wondering if making them manually go into a police blotter and copy and paste information into Excel for a week as a way to drive that. They would just crave the ability to automate this.


As long as you make them hand-write it first and then retype it.


I mean, one of the other issues that we kind of touch on is people kind of have lost what it's like to do things on their own. They've forgotten what Paul Ford said, you can do this on your own. It's not that you should start doing that. But that's how you start. That's an algorithm. An algorithm is a set of steps and that web-escaping, I hate teaching that because some people have this weird conception of it, and I've done so much of it that I've maybe taken for granted but it's no different than you logging onto the website, you looking at a piece of text, copying it, highlighting it, pasting it, except a program is doing it for you. If people say, can you help me get that gets Mark Zuckerberg's direct message? I'm like what the hell, you could not do that without going to jail. Someone heard of Politowhoops. First of all I was inspired by something that came along like Andrew weiner who happened to solve the dick pic before he deleted it. But at which time shut down on Politowoops—I'm surprised that nobody's made that for celebrities and once I did that, that would really piss them off. So there's no reason to—and so there's some scripts. And there's some scripts. I've been using them to do some research on social media fakery, but yeah, I've written, first I made it really complicated and I was like screw it. I'm going to type in, "Get tweets." And it just goes and gets all the tweets for this person, and gets their friend network. And their followers. And I'm too lazy to analyze it yet. But I'm trying to analyze some of the more advanced fakery that's being done. And I would always put it off and I'm just like, all I need to do is get it before it gets deleted so I have something to work with. And I use it sometimes myself, too. When I unfollow a bunch of people at once, like whatever, people who aren't following me back or some petty shit like. I don't want to give them the dignity of hitting that button. I just want a little bad script. So it all ties into my research as well.

[ Laughter ]


So we have time for one more. Does anybody else have a super mundane programming task, real or imagined?


I have one because it's just going to be mundane even if I figure it out. I just put up on Tuesday as a quick blog post, I, because of all the stuff going on with the confederate flag, I scraped the Wikipedia page that says, "List of federal monuments." And put it into a map. And I said if you know a federal monument, here's a Google form to fill out. And I got 800 responses but I have to go through and verify everything. The ones that were that easiest to verify were the ones that people gave me a street address which something three to 400 people did. And I would like to be able to send those to Google maps API and ask them, is this a real address? And just start with those.


I have a script in the repo, one of the things that we can encourage you to do is APIs are made for humans to use. So to be intimidated. Maps API is just one that I teach a lot because it just works, so instead of you doing that by hand for 400 things, you should definitely look that up. You'll be happy you did.


But it's still going to be mundane even if I did.


But on that note there is a repo of examples of mundane tasks and the code that makes them less mundane. So if you have tasks that you think of, or code snippets that you want to share with people, you can forward that repo and send pull requests or paste the idea into an issue or something and share it with the world.

But I think we're at the hour, so thank you for spending this mundane time with us.


Thanks, folks.

[ Applause ]

Did anybody write a mundane script while sitting here? 

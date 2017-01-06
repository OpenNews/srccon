---
layout: 2015_layout
title: Session Transcripts
subtitle: A live transcription team captured the SRCCON sessions that were most conducive to a written record—about half the sessions, in all.
section: docs
sub-section: interior
background: books
byline: Nate Bolt
bylineurl: https://www.flickr.com/photos/boltron/3212284622/in/photolist-5TRNiC-4VkeqM-4VpqGm-4VkcGz-4Vpr1S-4Vken4-fmXRof-2YtFPR-fmHB44-dFxkXG-7yv4t7-4VnnAn-5A3XSn-4Vnnmv-4VnnqK-9uup4n-4Vnnv6-3ViP2v-4VnngF-4VkgVa-4VkeuZ-4Vkg5R-4VpmbC-4VpnDu-4Vk9rK-4VpqRL-4VpsPb-4VpuU3-4Vkf5D-4Vkdj6-4Vk8uc-b1TXEz-4VkhcX-mF5DPa-fmHXAB-r8mgB3-s5i4Mz-7i3R7t-og8qB5-fmXSCf-7i7Ky9-92YNnD-fmHDut-5C51hV-rMM8b3-k639ok-8FDPAB-apFhiP-rL2vRV-4VptiN
permalink: /docs/transcripts/modernizingprojects/index.html
---

# Bringing Modern Development Processes to Monolithic Projects

### Session Facilitator(s): Andrew Nacin, Adam Schweigert

### Day & Time: Friday, 12:30-1:30pm

### Room: Minnesota


The session will start in 20 minutes.


The session will start in five minutes.


Are we okay to start? Is it about time?


Yeah.


Okay, cool.


Someone want to shut that door?


Awesome. All right. Thanks, everyone. So I'm Adam. Andrew. We're here to, like, lead a conversation about monolithic tech projects. I'll kind of do a quick introduction of who I am. I work at INN, which is a network of about a hundred non-profit news outlets around the US. I have... I've been there for two and a half years now. We do a lot of platform and I guess CMS work. So when I joined, a lot of the problem I inherited was lots of sites and lots of different platforms, like CMSes, just a lot of them very, very small, often not having tech resources at all. At the organization. So we've been in that time working on a WordPress-powered platform for them. So that's kind of my main monolithic project at the moment, is sort of trying to solve, at that scale, the CMS problem, and also stabilize the entire network. I think I'm just going to throw it to Andrew, to kind of talk a little bit about his...


Sure. So my name is Andrew Nacin.


Nacin! Nacin!


Strange man. So... Let's see here. I am—many of you probably know me as one of the lead developers for WordPress. I ran WordPress for about five years. Still do. It is, however, no longer my—or not currently my full-time job. And I'm currently an engineer at the US Digital Service at the White House, which is this kind of really cool group that's designed to bring modern digital services and help transform the federal government as much as possible. So what's actually really interesting about this is that, when it comes to monolithic projects, it's not just what I experienced with government but also what I did previously, where in many cases WordPress is used in newsrooms to replace pieces of a giant, monolithic thing. Very often it's a random blog that gets launched, which is kind of interesting. It uses this light tool that can very easily bootstrap the project. 

At the same time, WordPress is a 13-year-old monolith. It has been around for a very long time. It is an old code base. There is a lot that happens there. There's a lot of really cool stuff that happens there, but ultimately it is a very old, basically legacy piece of software, and what has been many cases if not for WordPress and Drupal and many others a legacy stack, that... That ends up still having a really great User Experience. 

So when I was asked to join US Digital Service, I realized—actually, I already have a lot of this training. To help apply some of the lessons that I had learned and kind of worked with for about five years, of how can we take this big, monolithic piece of software or whatever it might be, and turn it into a great experience, or at least not prevent it from, in many cases, failing, or whatever it might be. So the US Digital Service was born out of this failure of healthcare.gov. And I am indeed allowed to say that it was a failure for the technology side of things. Of course, it works now, which is... The goal. It is a functioning website. But at the time, you probably heard all the stories, where it cost a few hundred million dollars and on day one just didn't work. And it took until the end of the open enrollment cycle for them to finally hit not only the goals that they scaled back but beat the original goal and even beyond that. That is really good, and what ended up happening is that out of that failure, it was a perfect catalyst for new investment interest in people working in government to help transform these projects. 

So this group called 18F, which does—you probably heard of them—they do some really great stuff throughout government. Then there's us, and we're one big happy US Digital Service family, and we just work on different kinds of projects. So I think today what I would love to kind of talk about is, like, not only how we can prevent monolithic projects, but also then how can we solve them, and I would love to hear a little bit from some of you, whoever has a good example, of a monolithic thing that they have stumbled into, and how, ideally, like the best path forward. I'm assuming that some of you struggle with this. Just taking a wild guess. And I want to start by kind of explaining a little bit the project that I currently work on, with US Digital Service. 

So it started, like, seven years ago, or so, and they hired this very well known tech company on this giant multi-... Hundreds of millions of dollars in this contract, ultimately, and it ended up being this commercial off the shelf software, or rather like a string of commercial off the shelf software, kind of strung together, and I don't know if you've ever heard the term systems integrator. Oh, yes. So they integrate all these pieces and put it together and they tried shipping it, and it didn't really work. It worked, but not close to expectations. It was only one piece of a very large pie that they had ended up handling, and there were a lot of issues with it. Ultimately to the point where the agency decided to scrap it entirely and start over. 

So now we have LS2 instead of LS1, and it doesn't really show how much the shift is, and in reality, what ended up happening is that they did a lot of things really well in this rewrite. They borrowed all the stuff from the old code base that was actually useful, they switched to a primarily Open Source stack, rather than stuff that was just off the shelf, bought in many cases for tens or hundreds of millions of dollars, and they switched to a lot of modern processes. So when we showed up about a year ago, they were like—all trying, they were moving in the right direction, but they still needed a lot of help. And this is actually, I think, fairly common to a lot of these projects, where some of them are truly crashing and burning and they're never going to work with the people and the resources and the companies that are on them, but in other cases they're actually trying to do the right thing, but they're simply missing deadlines or not really shipping the software the way it should be done. 

So we went in and we worked on probably five major areas. One, we moved them out of a government data center and into a public cloud, so now they're in AWS, which is pretty cool. Things like monitoring and analytics and data, which sounds really important, but a lot of times, how is healthcare.gov? I don't know. And they went and checked the computer and refreshed the page to see if it was up. Of course, sticking to deadlines and regulatory releases—this was a massive project with this waterfall thing, over five years, there were schedule things and everything else, and it finally came together, so to speak, and it just failed to live up to expectations, so switching to this more Agile model, a release every week, which is pretty unknown even in some newsrooms, forget government. Trying to conduct full end to end user research, and then overall reimagining the experience. So if you haven't heard of the system, which is totally fine, it is ELLIS, named after Ellis Island, the electronic immigration system, very catchy. 

So I work primarily on modernizing technology on the immigration system. And this is in some cases very painful. Because if you are an immigrant, you have to renew your green card every few years. It comes up for renewal. Costs $400 and six months to wait. If you lose it, $400 and six months to wait. That can be painful if you're trying to apply for a job, you might have to travel to an office to get biometrics done. It makes the DMV look pretty amazing. You shouldn't complain about renewing your license until you've gone through this process. 

So how can we fix this from an end to end basis and just make it better? So this is... It's been a really cool experience to kind of sit in and work on—basically we're like a team of ten advisors, essentially, bolted onto more than 200 people on this project. Just trying to help them out and move them further in the right direction, which is where they were already headed. And finally, I kind of want to talk a little bit about the internet journalism big bang. I don't know. I just came up with this term five minutes ago. But 20 years ago, tell me if this sounds familiar to you—20 years ago, there was this organization, and the internet came around, and they were like—we should have one of those things. So what ended up happening is—they said you guys, you run the computers. Make us a website. So you have this IT organization building you a website. 

Jump forward maybe about ten years, and suddenly they're realizing actually the website is the primary way that we interact with a lot of the people who work with us now. And again, I could be talking about readers at a newspaper, I could be talking about constituents working with government agencies, and it's still kind of stuck in this old process. So a lot of newsrooms say—I'm going to do my own thing. I'm going to spin up a WordPress blog. I'm going to work outside the box to try to do this. And what ended up happening is interestingly enough the IT in a lot of news organizations has floated away from business and now it straddles in many cases both editorial and business. Which is not exactly common in, like, news. Just because you always have that news/opinion split, the general editorial/business operations split, but a lot of great people hired in newsrooms, passionate about newsrooms, everybody here, basically, plus many thousands, they were able to bring modern processes and modern software delivery to news organizations that ended up flowing into the larger things, like the entire CMS or whatever else it might be. Now, I was essentially describing what happened in news, but this is also very similar to what happened in government. So a lot of what we're trying to do—and this is the last I'm even going to talk about government in this session, except for some random horror stories—this is the good story. I only spent a billion dollars! So just kind of like... It's just interesting. See, if I lose my train of thought, I get to look at the prompter.


There's a feedback loop happening.


You're going to stop talking about government.


Yeah. But, like, it's really interesting how trying to invest modern services into these projects can actually help. I posted here—this might frame discussions. It might not. We did a really cool thing called the US Digital Services playbook at  http://playbook.cio.gov. It's got 13 plays. My favorite is the last one, defaulting to open, which depends on how much of the stack you're able to build in the open. And then there's number 7, bring in experienced teams. Which might not be a possibility in many cases. It might not be a play you can execute on. So how can you fix that? So that said, I would love to hear about crazy projects that you've worked on. This can be a little bit of group therapy. But we would then like to kind of bring it back and maybe help try and talk through some of these. And if no one volunteers, I'm volunteering Yuri.


Oh, man, that's just a sad story.


Who has a monolithic project? Let's go. Yeah. Go.


Okay. I work at the Texas Tribune, and we're only five years old, but we have a 9,000-file Django project that is a result of building and building and building without any content strategy, long story short. So a lot of what we've been trying to do is make it serve our users better because it's not something the reporters want to use necessarily to compose, it didn't make publishing news letters or managing our events easy, so I would say... Right now we're wrestling with it, but I would say in the last year, we have managed to go to some of these things, in terms of continuous deployment, and better tech processes, because it's exactly as you were describing. Just... There wasn't a process. There wasn't a—we need to do this correctly. It was a little bit of build and build and build and build.


That's way too happy. Does anyone have...


Sorry. I was going to say—the one lesson I would just share is—I had to say no a lot. In the last two years, to finally... We just... I have to brag about this. In the last couple of weeks, we deleted 15,000 lines of code, and they needed to be deleted, but a lot of it was a payoff for a year of saying no. A year of being like no, can't build. No, no, no. Sorry it's not a sob story. It's a success story.


Work in progress.


We're sort of through the woods, I think, now, but it's like a three year Django project where—frustratingly, we told them up front—like, there's two problems. There's a technology problem and a getting the data problem. We told them up front that getting the data is going to take at least two years and they didn't believe us, so concurrently, we were also trying to build the software that ran it, and our biggest problem was the assumption about how it was going to get used was completely different from how it ended up being. So we spent half of our time building an admin interface for regular people that was never going to get used because they didn't end up using that part of it. The technology side would have taken half the side if we had not changed our assumptions about what the project was going to be early on. But we're through the woods. We've gotten the release out, and it's mostly in a position—it's probably going to stay. The takeaways that we had is—I don't know if we learned anything, honestly, but we were supposed to—the lesson we were supposed to learn was kill your babies sooner than we do. But also, I think it is... Yeah. The other mistake we made is we announced very early on what we were going to do with the project, and then we basically, to keep ourselves honest—and then we realized that the demand for what we wanted to do with the project was not what people actually wanted to do with the project and we had to go back on these things that we had announced publicly. I thought we were keeping ourselves honest, but we were locking it down in the end.


So what are some ways that that could have been avoided?


Well, one thing is—this is sort of not in my control, but you've got to believe your people when they tell you these are the reasons this is going to take this amount of time, and you've got to lay those out really forcefully. We did say no to a lot, but you're probably going to have to say no ten times.


Saying no and killing your babies and admitting when it's not working is really hard. Because you want to keep developing sometimes.


It sounds like a lot of this too is one giant waterfall project. A thing was built that either wasn't needed, or maybe was needed at one time, or could have been built in a smaller manner to see how people would have used it. I prefer agile with a small a because I'm not beholden to any particular methodology, just something that works and makes sense. And so in that case, maybe it wouldn't have been built at all, but if it was something that was iteratively shipped, it wouldn't be for the user, whatever it might be.


And with monolithic projects, building small is a good idea. Shipping all the time and improving things and not being afraid if something is not working, to just kill it. And also, plan for doing larger refactoring of major features and things. Because that's where actually we're at now. We've built a lot of prototype stuff and kind of built fairly fast, added features, as users ask for them, or just kind of needed them, and now we're back at a point where we want to think more about framework and architecture and kind of step back and build more of that stuff. So I think there's—it's always better to sort of—you built fast, learn a lot, and then kind of dial it back and then just start over again. And kind of that kind of process works well for us. It has worked well. Who else has one? Yuri?


So the reason why Yuri doesn't want to speak up is because—you've all heard of the amazing chorus at Vox, but in reality, it is also like this monolith. And there are things they're doing that I would love for Yuri to share that is helping to work through this, but it's obviously not a problem, because everyone sings the praises of it. It's clearly a good piece of software. I mean, like WordPress, it is—maybe it's a monolith, but people like it, and they use it, and they're able to do really great things with it. So this is one of those, like, non-horror stories, but it's still an interesting—it's like going to AA. Like... I'll admit. We have a monolith.


I mean, I spent 15 years in journalism, working with monolithic horrible CMSes that people spent millions and millions of dollars on, that you had to, like, do the code inside of it, and, like, the file uploading and run the servers from the same CMS that you write your stories in. Those were all nightmares. The great thing about it is it's a monolith in that it covers everything. So we have integration with YouTube, we have integration with all social networks, we have integration with ad serving so you know what ads are going to be served with your story, you know everything scheduled, video plays, analytics, all the social stuff is integrated while you're writing your story. So it's a lot of things. And it's the integration of all those things that really makes it that big, because in the end, a CMS is really just a fucking big box that you type shit in. Which is not what I believe CMSes should be. But that's what they are. It's a big fucking box. But we just build shit all the time. The chorus today is not what it will be tomorrow, and it's a reflection of what our staff needs now. And just keep constantly building and iterating on that. Testing in the open—we test everything in the open. We just build it and test it and shit, if it works, it works great, if not, we'll iterate. We always push forward. On the first day, I got actually—deployed an entire website on my first day. That was fun.


In WordPress?


No, WordPress was... We were using WordPress... My API plug-in for the WordPress to serve it because I didn't have time to actually build out an API service. But I had come from the Post, worked on WordPress, we had built that around the other system, because we had a monolithic system, and we just started building small stuff and finding a way to connect them in the middle.


You're referring to Méthode?


Can you talk a little bit more about that? I think in a lot of our organizations, perhaps not the digital (inaudible), but it's a monolithic culture we're fighting against and not as much a particular monolithic system, though indeed that's part of the landscape. But at Thunderdome, it was trying to lobby IT to give us servers, which was a huge pain in the ass and took our data team months. It was having to use Newscred at our CMS because we didn't have an Agile enough product team to deliver verticals we needed on business deadlines. And that's the reality for a lot of metro newspapers.


We solved that.


How?


We solved it in small group.


It seems like the best strategy is the fringe innovation move, where you get them out of small business onto the sides.


There's a huge problem with that, though.


Small teams outside of the main organization is a way to work around it.


That's what a lot of people do, because you end up getting so frustrated. That's what we ended up doing. Bought our own servers, started a group called beta and started building shit and people were like—holy crap, it's cool you can actually do this. Why don't you join this huge organization and now you can't actually build anything because you have to go to all these fucking meetings?


No bitterness there.


But the problem is, when you take the people out of the day-to-day, they lose the ability to understand and meet and match what is actually happening. And so I think that... I mean, it's all just fucking communication. You've got to have people that you trust, that are around you. You've got to have groups that are building you up, and you've got to be working with these people on a daily basis. We're all required to write stories on a regular basis, so that we know the CMS we're building is actually easy to use, and whenever we need a tool, we actually have to use that tool. And so it's—we have to use our own products, and we're forced to do that. But I think that pulling people out is a really naturally easy reaction, but I think that every time I've seen that, you end up not matching where the newsroom is going, and that's why the shitty CMS was there in the first place, because some crappy vendor in another fucking country will go and build the CMS without ever talking to newsrooms or finding out what they need and you put in 50 change requests and by the time those change requests get done in two years, you're already all the way over here. So it's constant iteration.


I worked with Yuri on one of those monolithic CMSes, and I'm still there. But yeah, I've also been a part of a group that was supposed to be the splinter group that was then going to come back and inform the other group, and sometimes you can wind up with... And certainly this never happens at the Post... But it happens in other places. Thank God that's just a text transcript.

(laughter)


That... That... Um... Uh... It really does come down to the communication. Because you can get a healthy dose of not creative here syndrome and all that works for nothing. So as Yuri was saying, it's a matter of trust. It's a matter of—whoever you've got working on that new solution—at the Post, one of the things we're working on is a new CMS we're building ourselves, in a much more Agile manner than the initial CMS we're using now was built. It's built in-house with our own needs in the center, and I hope it will be successful. But one of the main things we have going for it is that the people working on it understand the needs of the business and are working to meet those needs. It's not like looking on a shelf and going eh, this is close enough.


You can have a fringe group that is still part of the group. We develop news apps because our CMS is so terrible we can't build good stories in it. We need good people who can build stories in an Agile manner. They did start to make different CMSes as they went, did a better job, and it pricked up the ears of people in our monolithic organization and moved us closer to where we needed to be. So if you do it right, you can have a little bit of—oh, this is experimental, but the communication was still there. It wasn't like they were doing something crazy and the reporters were part of it as well, which is really important.


So I think the three different ways we can kind of pursue this discussion—one is how to build things for users, which I think we probably all have down well enough. One is the last thing that you were saying—is... Like, how do you have an experimental thing that you can then bring back into the fold, without causing a major problem. The third one that I actually find really interesting too is—how do you actually shift culture? Because a lot of this can bring culture along with it, but how do you then push through it? We have some interesting ways to do this, and every one of our engagements with different agencies is different. Like, I'm wearing jeans and an untucked Gingham shirt, sleeves rolled up, I go to an office every day with this, and sometimes I'm wandering around the executive office building like this. And what's funny... This was before I was there, but everyone was in a suit. Within two months, the dress code started changing, and now the only people who are still wearing suits are the people who really like to dress up in a suit. They look snazzy. That's their thing. But otherwise we successfully changed a bit of the way it works. This is a really weird engagement in the sense that unlike most projects you might see in government, there are multiple contractors, all involved in the same project, every single person, whether us, the federal employees, the contractors, they're all on the exact same floor in the same building. That's very rare. I also came from a culture of remote work, so it's been very odd to suddenly switch to this very much not remote.


Put on clothes?


Put on, like, pants. But how do you then push culture forward? And sometimes it means that if we sit through the same meeting two weeks in a row and it is terrible, we try and secretly get... We talk to the people... We don't need to have this, do we? And try to get it canceled. Because we know it's not useful. There are little things that you can do there, that you can... Not undermine, but how can you help push things forward? So I wonder... Is that something we can talk about? How do you actually deal with fixing culture?


So one of the... I have a little phrase in my mind, when I think about changing culture. The bridge game. And I think it's (inaudible). Anybody ever read him? Great books. He's got a blog. A column. But he talked about that changing culture started not—it was an indirect thing. It was—he started a bridge game with people in his group, and outside his group. And he would just invite sort of a rotating cast of characters over lunch on Thursdays and Fridays and they would play this bridge game. And that time became a time of fostering trust and communication with people and a not-work thing, but at work. And that's where the shit actually happened. That's where the deals got made. That's where the shift occurred. And so that's why I always think of—in whatever org I'm in, what's my bridge game? Where am I going to establish that kind of trust relationship?


And even within work, our marketing person calls it socializing. She just stops by everybody's office. If you have a small office, that's easier. But just stop in. Talk a little bit. And mention the new thing you want to try at some point, but don't start with that. Don't make it the center of the conversation. That's definitely been something that's happened in our organization as we've brought in people that have a better sense of digital. To just kind of make that social thing happen.


Especially when you're working across different departments and divisions and things like that. One thing we try and do is prop up and empower the people that we know can get things done. And there are different ways to do this. Like in government versus out. In our case we just try and always go to them and they are like—I would love to solve this problem. Let's try and fix this. In other cases, if a supervisor receives a really nice note about an employee, that can be a trigger for a raise in government. And things like that. So there's all sorts of different tricks, but a lot of times... Obviously people want to be doing the right thing. So how can we help them? And especially if you're not in your CIO organization, at your company, or wherever it is, and you need something from them, how do you get the servers? How do you actually do that? Who do you ask at the bridge game to... Can I please have this... No one needs to know. Just give me a spot on the server.


Identifying who writes the checks in the org is always important. And I can't... I'm Peter, by the way. I work now for a company—a little tiny startup, but I worked for Minnesota Public Radio for several years across the river here. You described initially our whole CMS. Peeloff things, WordPress, da-da-da. I can't understate how important it was to have the key advocates at the C level who got it, and were willing to sort of write the checks, say in meetings to their peers how important this is, provide sort of political cover when you want to do something that's sort of outside the mainstream. In our case, specifically, at NPR, I worked initially on a project called the Public Insight Network, and that's what brought me into the company. Didn't have a background in journalism at all. And what was nice about that is that even though it was a legacy project that we were sort of writing version 2.0 of the software, we were allowed to start from scratch and bring in a lot of cultural and best practice stuff that the company didn't have. And that sort of infected the rest of the company in a good way, I hope, to not be afraid to take on some other big monolithic projects that they had. Bridge games and having your eye open...


(inaudible) people who are not familiar with the product or the tool. So if I'm an old school reporter and I've never used Tumblr or WordPress before, it can be really scary. And helping to introduce people to these tools in a non-threatening way can be really important. Not just—I'm a cool kid with a new tool, you've got to use this, be part of the cool kids club—it's not how it works. I used to work at a news organization where I had to show people how to use things like WordPress, and it was totally a one on one thing. Hey, how is it going? You want to see something cool that I'm doing? Slow, steady, small introductions along the way. Because otherwise, they will reject you, if you don't earn their trust or show them that in a personal way.


You've got to bring them in from the beginning. If you just drop the tool on them, but they're part of the process and they're helping you make informed decisions, it changes the entire dynamic of—they feel ownership of this and become evangelists for it. You can do that with almost everyone. Bringing them in, showing them the design and the build process. They feel ownership. They get excited when that thing launches and they get that email that goes out with thanks to so and so, it's really powerful. You make them part of this. We do that with everything. We bring people in throughout the whole project. Reporters, designers, editors—the whole thing.


You've got to do the C level, the ground level work, sending out emails, saying hey supervisor, this person is doing an awesome job. It's a multi-prong approach.


Bribery helps. Because... Well, right. No, the good kind. Because there are very simple things that people in a lot of newsrooms and elsewhere need that would take you pretty much no time to do, but it would make a big impact on them, and suddenly they are your best buddy. That would certainly work with me. There's tons of stuff I need in my newsroom that's simple to build but I can't get anybody to do it for me. If somebody would do it for me, I would go to the mat for them for their next project because they've proven we can do something together that can really make an impact. So I think that's a really easy entree, because everybody wants stuff that people can do. So that's a way to get a day or two, building something kind of lame, that will help somebody toward a goal that's really simple—can help get you the buy-in for something that's much more interesting.


Anyone who hasn't said anything yet—any struggles or solutions?


I have a very real world struggle I'm dealing with right now. It's like the tension between... Distributed team and co-located, with the rest of the company. And there's just a lot of cultural clash that arises from that naturally. And to be honest, I don't know how to avoid it, sort of thing. And so I feel like I'm in this struggle to prove the distributed model, as an effective model. Like, something that the executive team should actually champion, and not on its way to being pushed out... Sort of thing. And, you know, two things top of mind, always, is—one, just the effectiveness of our team. Like, you make a request. You follow up on whatever it is. We actually get it done really quick. Like, it doesn't require three weeks of delays in asking where is that at. It's, like, done in 20 minutes sort of thing. And the second thing, which is... A little bit difficult, because text loses a lot of resolution... But just making every interaction a positive one. And really, like, constructive and helpful, and like, happy. Like, I made a request, and it was just like... Taken care of for me. And people followed up and that sort of thing. So... But I don't know what the ultimate answer is, to solving the distributed versus co-located version.


In our case, we would like to get co-located working first.

(laughter)


And then start to think about distributed. Anyone else work in a remote or distributed environment? A lot of people. How do you generally solve this? I saw some hands over here.


I think it's about kind of the bridge game ideas. We have to try and create opportunities to interact with each other outside of project meetings and that sort of stuff. So spend a lot of time in front of a webcam, just kind of... You have to be deliberate about creating those opportunities. It can be tough.


We talked about this a little bit in a session yesterday about distributed work. And when it's distributed, it can be hard to make sure that everyone is marching on the same path. So being in front of a webcam or just that face-to-face interaction is really important. I manage a team of 18 people that's distributed, and I do a video one on one video call with every member of my team every two weeks. And I can't skip those. Because otherwise... I wouldn't have the opportunity to make sure that everyone is walking the same path and checking in.


I worked in a distributed team where there were actually two offices. There was the Midwest office and there was the West Coast office. And the impression was that the West Coast office got to do all the fun projects. The Midwest office was out baling hay all the time. So one of the things we did all the time was in many ways trying to facilitate cultural change—at a larger scale, 10% time, where people could devote time to their own projects. And that actually allowed people from both offices to work together on things of their own interest. In small time frames, small teams that were motivated by a personal itch they wanted to scratch. That ended up being the bridge game for those two teams. That those people who participated in that actually ended up fostering a lot better sort of sympathy between the two groups.


Anyone else have a really good horror story? I kind of now want to hear some horror stories. No? No one? Yeah.


I've been reluctant to talk about this, because I feel a bit naive. I've never worked in a newsroom or government.


Neither have I. On the first one, neither have I.


But I know the startup scene pretty well, and I was always the last job... The last startup I was at, it wasn't too big. It was about 30 people. And I always found it remarkable how often... I guess it goes back to something Yuri was saying earlier. There was a kind of... Ostensibly, everybody was in on the decisions. But then there would be... You know, they would often come back with the real decision. Which was, like, nothing to do with what happened in the room. And there's no quicker way to lose any goodwill that you've built that that room, than to do that. So avoid that.


Yeah, some of this is like—are decisions really made in meetings, and something of that nature. I would love to point to play number six, which is assign one leader and hold that person accountable. Very often—it could be the senior executive on the project. It could be the CTO or whoever it winds up being, but more often than not, it's the product owner. Even if they don't have the ultimate authority, they're delegated to really take ownership and they're held accountable, both—not only people above them, but also ideally people below them. So, like, if something is going wrong or going off the rails, there is, like, a single person who is ultimately accountable for—why did this decision randomly change? Especially if you're not doing things in a particularly iterative manner, one decision at one point could just completely derail months' worth of work or effort or whatever it might be. I mean, I don't know. We were talking about this yesterday, in another session, a little bit, about how if you have this major digital project that you're trying to ship at a newsroom, whether it's like a snowfall or something like that, how do you actually have someone in charge? Because often the person who is truly accountable is the editor on the project. But in reality, if you want someone who is invested in the project, who understands digital, who understands that level of product, you realistically need some kind of a product manager. Not even necessarily a project manager, who's ultimately accountable for the success of that large chunk, even if, again, they're not the main person on that project. I don't know how often this happens in newsrooms. Project manager... How many newsrooms have... You do, and a few others do, but in many cases it's a role that someone else has to wear a hat for, which is also fine, frankly, but a lot of times it requires someone to step up and take over and push that forward.


We call them champions. So it's the person that really wants this done. That could be the developer, it could be the designer, and we all could be champions of different projects. And we do sort of 10% time but more like 95% time, so we're mostly championing our own projects. You might have three or four champions on a project, and it's great. It changes all the stuff that you work on.


Decisions will always be made outside of meetings. Ultimately.


And I mean... Even that terminology can be helpful too. I mean, you can assign a product owner. You can't assign a champion.


I had... My main job is to essentially process data, so that at the end, take federal datasets, do stuff to them, make them easy to use for journalists, and I came into my job with... We have an IT guy who was building this elaborate framework for processing data. All by himself. He was sort of set down this path by my boss. And for two years, he built this thing without talking to anybody.


Oh, no!


We know how this story ends.


So I spent two years trying to figure out how it works. Because there's no documentation. And he has a difficulty in communicating. And his main... He's one of those... I think it's sort of an old IT way of thinking, is like... This is how it works. Figure it out. Here it is. So I've had to kind of come to this point where I'm like... I can't use this. So I'm going to have to start doing what he did, essentially, from scratch, in a way that I can use it, and maybe help other people in the future use it. But I also have to make that call to my boss to be like... Look, this guy did two years of work that I'm essentially throwing out. So it's been, like, really difficult, because I keep going back—oh, I'll try harder. To figure out how it works. To make it work for me. Oh, I can't. I can't do it. Just do my own thing. But there's just no concept of collaboration or... I'm the user. You know, and he's the person who built it, and we should maybe, like, work on making it better. But it's... I don't know.


I think one and two on the playlist. Just tell your boss that.


So this is actually really interesting. Projects will always need to be thrown out. No matter how perfect everything is, they will always need to be thrown out. You need to do that before it's too late, for both time and money. And which one is more important is in the eye of the beholder. Which one... Like, at what point are they intolerable—is very different. The federal government spends 80-something-billion dollars a year in IT. That is larger than the New York Times by quite a bit. So how does... At this point, in many cases, it's a time thing. And so this could be really interesting. Like, in your case, that was two years. Of someone else's time spent. And now you're spending two years doing that, and then the person after you, hopefully they like yours better than they like the person beforehand. So that can be really tough too, and a lot of this is sometimes like... I don't know. In our case, we try to make sure there's no—no one ever has the bus factor, of—if you get hit by a bus tomorrow. Which is kind of sad. If you win the lottery tomorrow, is a better way to say it.


Put a positive spin on it!


What happens to the thing that you were working on?


Well, you love your job so much that you would just stay, even if you had all that money.


I don't work in government for the money at all.


I think what sort of gets at like... It's always really scary to talk cost/benefit, at least for me, it has been, to talk cost/benefit, because you always worry if people who don't understand what you do actually understood how much time it takes to do this stuff, you wouldn't get to do what you want to do. Stuff takes a long time. It's pretty expensive. The amount of money we spent on things I don't really want my bosses to know about, but we can't do that. We can't kill projects if we haven't had that conversation earlier, to say—here's how long the really good things took us and how long that took us. And you got seven good points out of that for whatever it cost. This... You're going to get no good points for, and it's going to cost more.


If you get an iterative model, you're constantly throwing stuff out all the time. If you're documenting, the bus factor shouldn't be a worry. Anybody can pick it up anywhere. We document process, we check everything, we document days and weeks where we sit and check everything, and every new employee has to fill out the new employee documentation. Everything is written and you can find it somewhat easily. Depends. It's a project we're working on right now. But yeah. Documentation. Everything. Document everything. It's amazing.


How do you justify the time for that? Because usually... It's not something that hits the bottom line, right? Documentation or internal tool building.


You could save two years of her time.


If you have breaking news and you can't do something, because the documentation doesn't exist, and the person has left or been hit by a bus... That's a really good argument right there.


Lottery.


Lottery.


You're going to be paying eventually. You don't want to pay ahead.


That was a turning point for us. We had enough moments. No one knows how to do this. No one wrote anything.


Any time anyone asks a question in Slack, we're like—it's in the Binder. Search for it.


A lot of things I've heard in government where there's thousands of people on this project but there's one guy who knows exactly how this things works and that's it. And one day he no longer works there and you're like... Uh-oh... What's wrong? And we get called into these a lot. Because we don't know what this thing is. We have no... Like, this office had 19 people and now it has 2, and they weren't the people who worked on this and we don't know how to produce a report or generate this data or whatever it is. But going back a little bit to this point about... With decisions, because this kind of came up--how do you make sure that the right people are in the room who are knowledgeable enough to be able to actually help inform decisions? And so if you often have decisions being made at the senior level, how often is there an engineer in that conversation?


Not often enough.


Not often enough. And we don't really address this so much in the playbook, because the playbook is way more about shipping the particular thing itself. And actually, it applies so well to non-government projects. It's great. Except for maybe some of the procurement stuff. But even then, it actually does apply pretty well, because in a lot of cases you're procuring stuff from contractors and vendors and things like that. How do you make sure that engineers are represented in a meeting?


And also if you're having engineering meetings and there's no one there from editorial, that's a problem.


In that case, it's kind of like the cross... The stakeholder, like the... You have an editor, versus that. But if there's a meeting being made at the board level or anywhere up above that level, where you have—the only person who's even close to technical in that meeting is the CTO, who may or may not be technical, may not have any idea who you even are, your project—how do you make sure it's being represented adequately? In our case, we're actually—we're really good about making sure that we can get included in things, just because—it's kind of like the mandate from literally the top of—they must be included in these things. To the point where until 12:28, I was on a phone call. I was on a conference call, and I was the only engineer on the call. The reason I was on that call was because I was an engineer. Specifically to try and contribute to that conversation. Do you guys have these problems? Do you all have these problems?


We had it a little bit, but it's part of the culture shift, I would say. It's part of getting everybody to think we should have that. So you don't—sometimes we just start inviting ourselves to meetings. Things like that. Nicely. But what we want is a sense, though, like you're saying, of community, and of—you know what? We want tech here now. Because we know we're going to have to build it or whatever. So—but I think I would build that into culture shift.


Yeah, it's also being super open too. That helps a lot too. Document process and culture and all that stuff. Treat it like a product. That you continuously improve. And you're just communicating both ways, up and down, all across the organization.


And in news organizations, it's important to understand, from a technical background, how the newsroom is used to working too. A lot of these are the exact same conversations that have been happening for decades, about when do we include design? When do we include a top editor? When do we include all of these people who are going to need to understand the same material in different ways but still at a fundamental level to be able to contribute so that everybody is pulling toward the same endpoint on a project.


Do you have a checklist of everybody who needs to be there? If you're making decisions, you need all those people there. There's a checklist of who to go and find and grab.


How did you arrive at a place where everybody can agree that there's a checklist?


Trei. Anybody here who knows Trei... Just a southern tech dude.


But what I'm hearing then—it was a charismatic person who had the power to make decisions.


Yeah. And when we started Vox, that was part of the hiring process. We told every single person—every reporter, every data person, every programmer, every designer, we said you are a designer, you are a developer, and you are a reporter. And we are all journalists. And when we set that expectation, then it doesn't—you don't have to go and tell people that later on. You set that expectation from day one. It's part of your goals and it's part of how you do everything.


And it's baked into the DNA of your org.


I sit next to the managing editor and the executive editors, so we just communicate all the time.


So we have a little under ten minutes. Has anyone who would love to say something not had the chance yet? Anything? Any good ideas? Any struggles? Any horror stories?


One thing—I just wanted to build on Yuri's champions. I've got some friends who work for Google, and probably you guys do too. And one of the things that's been fascinating, talking to them, is—they're never assigned to anything. You know? They have to volunteer for every project they're involved in, with very rare exceptions. And it's a big enough company that there's always someone to do that. But it also means that everybody has buy-in. Everybody is committed to that being a successful project, and everyone owns some piece of it, and ultimately, whoever is the decision maker owns the whole thing. And that is something that almost never happens in a newsroom.


Yeah. It happens in federal government now. At the very least, for our group, where pretty much everyone is coming from Google, Twitter, Facebook, the New York Times, in some cases, Jacob Harris recently joined, which is cool. We all are there because we want to be there, and what ends up happening is that we're all able to join the different projects that we want to work on. Right now I'm working on—how can we modernize the immigration system? Where I was in Missouri, Kansas, and Nebraska, studying the entire process. Which is—I never mentioned. Almost entirely paper. I'm guessing it's tens of millions of dollars a year in postage and shipping costs alone, that could hypothetically be solved with technology and be sped up and made more efficient with technology. But yeah. Not to, like, do the whole hiring pitch in front of all of you, but if you're interested, you should talk to me. Otherwise, you should go back to your own organizations and make cool stuff happen.


One of the things I think I heard a lot of people say is that you can't get engineers to do shit for you. That would be a nice thing, if people have advice... I'll build whatever you want. But if people have advice of how to get your organization... Because I think that's a huge problem. And I see that over and over again. That's a huge complaint from reporters. I want to do this great shit. And I can't get anybody to help me.


I think, like, in newsrooms I've been in, one of the obstacles we have faced is that—if reporters or editors are coming in with the traditional news mentality and they're coming to me like I'm the graphics desk, and I say that pejoratively, because they shouldn't treat the graphics desk that way either—but I'm a journalist. I want to be involved in your process. And a lot of reporters do come to you or editors come to you and say—here's this thing I want. They have no idea how it's going to be built but they made a lot of assumptions they haven't thought about, and I don't have the opportunity to be involved in that process.


They treat you like a support desk.


So I tell people—what I want you to come with me is—I want to do something about this. That should be the basis of the conversation. Let's figure out the rest together.


Come with a problem, not a solution.


Exactly. Problem, not a solution.


It's good to encourage people who want to be forward thinking to come with a full package. Sometimes it's going to be great. Sometimes you might want to pivot. But how even before they have the idea can you get involved? Those conversations yesterday about shipping digital projects. Sneak into the editorial meeting. To be able to feel like—early on, that sounds cool, we can do cool things with that, and then trying to engage. Yeah. But a lot of this is like—in many cases, I think this is a lot of the smaller bite-sized projects. Not like the massive, big projects.


Also, people are usually really unacustomed to people asking to be in their meetings. Sometimes that by itself begins sort of a transformative process. I want to be included in this. You weren't assigned to it. I know. I'm just really interested in it and I think I can help.


In some places, where it's a meeting-heavy culture, some organizations might be fine with people randomly joining meetings. Other times they're not. We show up to whatever meetings that we see on the calendar sometimes. That sounds interesting. Let's go into it. But one of my favorite stories is like—early on, when they did a very early assessment about a year ago, at this agency, where they knew that some guy from Google was going to be there, and they didn't know who he was, and it's like... Is it the guy in the suit? No, he wouldn't be wearing a suit. But the suit is too big for him. Yeah, it's probably him.

(laughter)


I just heard that story recently. Yeah. I don't know. It's kind of interesting. If you can get—if you can wiggle your way into meetings or wiggle your way into an email thread or a distribution list or whatever it might be, that can go a long way to just being able to have helpful input at different stages, and it can also provide a lot more visibility as well. So if you are someone who's ultimately accountable for everything, and there's a lot of things happening that you just can't see, that's obviously like a major flag as to this whole thing is in danger of collapsing.


Also Slack. Who's a sponsor.


And even if they answer and the first request is no, chances are, you'll be remembered as the person who expressed interest in case something pivots or goes in a different direction or just next time. Oh, right, who was that guy? Let's get him in here.


So we have a completely open—you can join any room in Slack, and we have an ideas room, so people can drop their ideas in there, and every single one of those ideas gets put in Trello, so every single one of those gets evaluated. Sometimes it's like—we don't have time. There's no champions for this. Or it's going to be—you want me to build Facebook and I can't fucking build Facebook. So you're going to need to cut down on those features or something. But a lot of times we'll just talk to them for five minutes, even, and get some more ideas. I'm working on a project now that somebody pitched last year and I didn't have time last year, but now we're bringing it back up, because it's still on the board.


There's only a few people who haven't said anything. Does anyone have anything else to add?


Okay. I have a slightly different challenge. I'm a User Experience designer at a data analysis company. I'm the first designer they've hired, so it's a culture gap. And I'm trying to learn as much as I can about what everyone else is doing. And what all their processes are and what their goals and work flow are, so I can recommend things that I can contribute that will be on their terms. And I'm wondering if that's a strategy that anyone else—not just being at the table in a meeting, but actually understanding the other person's vantage point, as well as your own.


Empathy. That's great. Yeah. It's one of the reasons that—there's a movement I think to embed coders in the newsroom. Cheek by jowl with people. Yeah. I think it's a really good strategy.


I wish I had particular advice for this, but we do this all the time. Like, we're not just a bunch of engineers. We have five or six people who specialize in UX, specifically. We also have procurement people, which is really helpful as well. So we can drop into an agency and not only evaluate their code but also look at their contracts. But also from a design perspective, we try and use UX researchers as early as possible in the process because they're able to inform so much that we do. I think the key thing that we generally try to do is that when we are pitching it to people, of like—we would love to get involved in this, from a UX perspective—we try not to use big, scary words. Like... We try not to say... We want to see if we need to redo this. Like, that is ago we don't say. We would love if we could have a better understanding of all of this, because we would love to see if there's anything we can do to help. Sometimes it just requires a different delivery where someone could be like... Oh, sure. Versus we're kind of concerned about X to the point where...


So when you go into the immigration processing, you don't start with the concern about the paper.


Well, they already have a concern about the paper, so that makes it a lot easier. But yeah, absolutely not. A lot of time it's just like—we would love to understand how the visa process should work most efficiently. Or even then—how could we embed a researcher in with the state department to understand how all of this works? And then they will produce, like, a cool feel-good report at the end that you may or may not like. But the point is... It can go a really long way into understanding that, but again, I think the only advice that I have for this, in part because I just don't do it myself, is... Trying to pick the right words that don't make it sound like you're trying to go in and evaluate or assess, as much as just understand. And empathize.


I think a lot of it is... I guess pain points are not just for users. Right? They're for—everyone's got pain points. So it's identifying those and being as open and I think helpful as you can. I mean, there's possibly—like, the positive language instead of negative language makes a really big difference there. And just kind of identifying potential opportunities to help. It's a big thing.


Anyone else have anything?


Anyone else? We're just about...


Final thoughts? I think it's lunchtime.


Lunch? All right.


Thank you, everyone, for coming.

(applause)

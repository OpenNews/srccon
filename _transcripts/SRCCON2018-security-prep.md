---
---

# Session Transcript:<br>Preparing for security vulnerabilities if you're an open source maintainer *or* user

### Session facilitator(s): Ted Han, Mike Tigas

### Day & Time: Friday, 10-11:15am

### Room: Thomas Swain

TED: Thank you all for coming out for a morning session. Can you actually hear without a mic?

MIKE: Whatever, cool. I'll let you go first.

TED: So I see Andrew's figured out where the etherpad thing is. If anybody wants to jump in here, we'll be taking some notes and a lots, like, a small enough group here that we can just have a conversation about all this stuff. My motivation for this stuff is some stuff that had happened over the past year where I was like, "Oh, yeah, I've been talking to security people about maintaining DocumentCloud and open source software for a little while, but I don't think I've had any sensitive conversations at any conference that I was at about about what it means to own and maintain a piece of software and what that's going to require of me." Like, a lot of software-developer-dom is sort of like, yeah, anybody can contribute, you should go start a thing. Go put your thing up on GitHub, do a demo and get users and it's like okay, that's great, that's fine. That's a place to start, but that's not the place that you should stop. And let's see, how do I put this? 2017, in addition of being generally awful, which was for me, in DocumentCloud, saying, should you be posting documents, which is weird for somebody working with people posting documents. So I feel like over the past couple years, we've become way more complicated about how complicated our jobs are, and, for me, it feels like being a developer on the Internet is fractally more complicated in an it was ten years ago, and part of that is presumably, our responsibilities have grown, and, actually, the Internet is a way more complicated place than we thought. And a lot of the conversations that Mike and I have had are about these sorts of things and we want to make sure to have that conversation with a bunch of other people to find out what sorts of things people have been encountering and collectively, what we want to do about our responsibilities and the things that we should be keeping an eye out for, and how to keep an eye out for each other, too.

MIKE: And I feel like, for me, a lot of this is, like, I've maintained a bunch of open source software — "maintain" I use very lightly because I'm one of those people that put stuff out there and I think this is a good sort of community to, how do we, as a community handle security issues and stuff like that. We're in journalism and in tech, and our users and our readers have some trust in us, and we have responsibility to keeping them safe or at least not use our tools to do malicious things to our users and readers.

TED: So we, again, have planned this sort of casually, And we wanted to make sure that we got input from everybody else. And so we're breaking this into three sessions. First is storytime, where we can first talk about how exactly complicated things are, and the things that we've collectively encountered, and, two, kind of getting together, and talking about — thinking a little bit more deeply about what our risks our software faces and the people who use our software and talk about what we collectively want to do in the third section. So —

MIKE: And I just want to jump in this isn't a "how to be secure session." This is more of a process and communication session. We're thinking sort of the meta-view of how do we keep modern just ourselves safe.

TED: Yeah, and part of this, too, is once we go through the stories, you'll hear — Mike and I will relay a few things and we'll love to hear things that have you guys encountered. What are the things that you are going to wish you have already done when something bad happens. And having gone through that this year and, actually, I will launch into this story about NPR. Thank you, Ben. There you are. Okay.

AUDIENCE: We've got a transcriber, I should probably just copy and paste later.

TED: I was planning on jotting down and copying from this, but in-flow is always good. Excuse me. So this year... yeah, we'll do the poll in a second. So how many of you use Pym.js. Or depend on Pym.js. So Pym.js is a piece of software that actually came out of an OpenNews code convening, and it is a little piece of software. It's named after Hank Pym, the eponymous AMP man, depending on where in Marvel Comic books you are, and Hank Pym was able to grow and shrink at will, and the is idea behind Pym is if you're building an interactive and you are injecting a web page using an iframe, how do you know the window size changes for the parent tell, how do you tell the interactive that needs to resize or adjust, so the way that it did that was by using a piece of browser technology that allowed you to send messages back and forth from the parent page into the tiny iframe, and you should consequentlily send messages to the backup, and that way, you got do a whole bunch of stuff. The problem was that you could send arbitrary URLs through that and if you don't — if you aren't careful about sending arbitrary URLs from one web page to another web page, some bad things can happen.

Most browsers allow you to send URLs that are actually just a piece of JavaScript code, so you can just type JavaScript, colon, and whatever JavaScript you want to do that, and if someone were to do that into the URL bar... Mike, do you want to do that...? And if you do that... Mike didn't think we were going to have a live-demo portion of this. There you go. You can see a portion of that. So for Pym's usage, W*URPLS really have that because a news organization would include Pym on the web page and it would control the master web page and also the child interactive. So this is deployed pretty widely. There are websites that serve, you know, millions of readers a row, tens of millions of readers that use Pym. And then, last year, the maintainers of Pym, which was NPR, got a notification from a user about a security exposure.

The problem about being able to send these JavaScript URLs is that actually the communication between the child page and the parent page wasn't the only way to send those messages, so the problem was that anybody on the Internet could go to, say, the Washington Post's website, and if they had a comment field on it, put that Washington Post page inside of an iframe, and link somebody to it, and get complete arbitrary JavaScript access. So that means that you could steal somebody's cookies, which is essentially their idea, or inject things into the page.

So that's really... so that was sort of a shock and a big problem. And the change was pretty small in terms of just don't let people insert those JavaScript URLs. But the problem was that nobody had noticed this over two years. And, thankfully, the people who did notice it were other developers. And so this is sort of the watching-out-for-each-other part of this, and got touch with the Pym developers to say, hey, there's this security vulnerability. We wanted to make sure that you guys knew about it.

Okay, at this point, what do you do, right? And a lot of what we're going to talk about is getting deeper into this but the journey they went on was, eventually, having to figure out who their users were, how to get in contact with them, how to get them to upgrade before publicly announcing this thing had gone out there, because, again, you had major websites using this piece of software, and if you were just to kick the door open, and announce it to the entire Internet there is a span of time there where malicious actors could take advantage of this prior to everybody — all of Pym's users being able to upgrade.

So that was the thing that sort of spurred this. They actually went through a long journey getting a CV — which is the common vulnerability event.

MIKE: I always forget the last word.

TED: Basically there's a notification framework.

AUDIENCE: Common vulnerabilities and exposures.

TED: So you get a CVE, and you disclose that to the world and we can talk about the way that that works. And so I helped them through that and their team was amazing about staying on top of all of that work. But that's certainly, like, only one example I'm going to hand off to Mike. Mike also — how would you — Mike has maintained one of the larger Tor browsers on iOS. Called... called Unbrowser while he's not doing history job.

MIKE: So it's funny because we're who here is familiar with Tor? It's the secret browser be I wrote Onion Browser for iOS, while maintaining a full-time job in a newsroom. And it's been interesting because a lot of people use this, and it's easier when you have an app in an app store because it's more of a controlled environment and you know who your users are. iOS 11 came out, and iOS 11 allows RTC, which allows raw WebSockets stuff on your browser, so enabling things like video streaming and video chat, and things like that. I discovered that if you had Tor turned on, it wouldn't use Tor, it would just bypass those settings. And moreover, if you had a VPN turned on your phone, it would bypass that, too. I think it's iOS 11.0 to 11.2 I think had this issue and, like, nobody was talking about it.

So the problem that I had with Onion Browser is that I can push an update to the App Store, but it's on the users to have autoupdates turned on or something like that and because I don't collect any information on my users, I don't really have a way of notification them unless I push something to the app or push something to the default page. That's what I ended up doing to my users saying, here's this issue, and you can avoid it by disabling JavaScript if you're really paranoid. And that's been an interesting road to go down. I got a security audit of Onion Browser a few years ago by a group called Cure 53. And I was funded through a grant and, like, there are these organizations that will fund all this of open-source code and open-source projects and, like, find issues in your work before, you know, you put it out there and put users at risk.

And that's — this is one of those things that I, like, learned along the way that I, like, resources like this in the universe of open source that I can fall back on.

TED: Yeah, so as you can see, we've got several other things on this list, but we also want to know have you heard of security things that impacted your life or that you guys would like to explain further? I might explain the PGP. That's mine. But it depends on whether people want to talk about this, right?

The — or should we just jump in? We should actually include those with the session. At this point, questions from anybody? So let's do the grouping thing here first. So all of you, I'm going to assume are end users of software but there are a couple — and the way that I think about this stuff is what are our responsibilities to whom? So as somebody who runs DocumentCloud. I'm an end user of software. I've got my iPhone, I've got my Mac right here. But in addition to that, I run a platform, and journalists depend on me, and depend on me to keep them safe. So in order to that, I use a lot of other people's software to build the things that I use, and, lastly, I also maintain a bunch of other open-source repositories that other people rely on, and contribute to, and that's sort of how I sort of think about the way that this step works. How many people in here are application developers? And how many people are actually — have repos out there that other people use and depend on? Cool, we actually, have one, two, three, four, five, six, seven. What we want to do is kind of get people to start thinking about, what are sort of the communication channels that you guys use and I don't know if you guys want to, like, actually move and break into groups, like, end users, application developers, and — oh, yeah, we built, like, three rows here, and open-source maintainers, and answer a few of these questions for a little while, and sort of discuss, like, what software are you guys using and how do you actually keep track of changes that are coming out in software and what you do when problems arise that you have to respond to immediately.

MIKE: Yeah, I feel like we've broken it up to three pieces here. People who use software... your end users, your readers. People who maintain web pages or websites that people use. And at the sort of lower level, it's, like, people who maintain, like, software libraries or software that, like, other software developers use because that's, like, sort of a — that becomes a metaproblem if there's an issue with an upstream thing. So, like, part of the conversation we want to have here is threat modeling. I do a lot of security training and —

TED: Let's back up a step, how many people here have heard the term threat modeling? Should we explain that first?

MIKE: For me, it's like the who, what, when, where, why, how except for the security risks. It breaks it down into weirder ways, I mean... I don't know. It's basically just like how can you approach the subject of security in each circumstance because there's a one-size-fits-all thing. So it's funny. I teach a lot of threat modeling, and I figured out that's I can use as a software developer, not just as a person using a computer who wants to communicate with his friends.

TED: So, for example, in the case of Pym, right, they had a challenge, we don't actually know who uses our software. It's open source, you can download it on npm, and use it. So part of the challenge was figuring out who used it, and it was only through a community member, Eric Reina was like The Coral Project, and the commenting system they depend on depends on Pym.js, but we didn't know that offhand. And so, having to after the fact figuring out who uses your software is a lot harder to keep track in process, right? And how can you know what the risks are. For some of the software that I maintain, it's not that big of a deal if there's an issue — if there's a security flaw or something like that. But if ultimately your — the effective software is, like, millions of people, you want to treat that with a bit more haste. So we wanted to get more people sort of thinking about sort of what are the risks and start out by getting a list of things that people actually depend on.

MIKE: So I feel like people should get into groups if there's one or two of you at the table. Say hi and get to know each other, and let's... I don't know.

TED: So it's half-past now. So, like, in 20 minutes we'll come back and then we can talk about things and keep rolling.

MIKE: So we have a bunch of, like, questions here that we sort of wrote in as a lead-in to how to threat model this. But basically we want people to have a conversation about here's the software that I make, here's the software that I use, brainstorm some of the things that you should be afraid of. How many people use your thing, stuff like that. And so, yeah, let's just have conversations about the stuff that we're building.

AUDIENCE: Can you reiterate the groupings?

TED: How about the end users over there, the application developers there. And the open-source maintainers there. Thank you for letting us rearrange you.

MIKE: It's a morning session. Gotta get the blood flowing.

TED: And if you have any questions of a this, feel free to just, like, add a bullet point, or add something underneath one of the questions and just tab it in and I think that's it.

[ Group Work ]

MIKE: There were some really great conversations that I was overhearing in all the groups. Lots of talk about, like, pain points that each user group has, possible solutions and stuff like that. I hate to put y'all on the spot but if one person from each group even just like a one-sentence little thing that will tell us what a couple takeaways from your discussion... you guys wanna go first?

TED: Do you want to hand off the mic?

MILES:  Um, so a couple of things on our end. We were sort of lead FOSS maintainers. One of the things was figuring out how to leverage tools to sort of enforce best practices. So be that via using GitHub Alerts, or additional pull request alerts to check for security publicities, or pre-commit hooks to make sure that when people are committing code, it gets all these checks applied to it that you could do with, like, other GitHub tools. But wouldn't necessarily cover everything. And then another highlight that was a big take away was making sure that your users feel that the software is still, you know, being taken care of so even if it still works after, you know, three years, making sure to, you know, do a periodic update or a version bump to make sure that users know that it's not sort of a deprecated project; that people are still putting eyes on it. We're still looking for, you know, new security vulnerabilities and updates, and we might make a small, you know, feature or a styling change here and there, but making sure that it looks alive.

AUDIENCE: Anything else?

MIKE: Anybody? Don't all jump at the microphone at once. We can come back to you.

AUDIENCE: So from an end user's perspective, we talked a lot about the organizational aspect of that information. A password manager might be a really good way to see what applications are being used in an organization, and everyone should them.

MIKE: All right. Developers.

ALEC:  It seemed like the general discussion was the state of things is not good.

[ Laughter ]

MIKE: Welcome to SRCCON!

ALEC:  Yeah, we talked about GitHub notifications, npm all this, and other package managers, how they might notify us if there's issues with software. It seemed like not a lot of us had good methods of keeping contact with users or with updates.

AUDIENCE: Nor did we particularly want to.

ALEC:  We talked about autoupdating and how that could break stuff. So we weren't sure of what a good system was.

TED: Yeah, the autoupdating stuff, I think, is sort of the augmented — okay — those are two separate topics. So I, like, I mentioned CVEs. Has anybody here filed for a CVE? I'm mostly looking over — Blaine, have you ever had to?

BLAINE:  Uh... no. I've dealt with them, though.

TED: And how many people have received a GitHub notification saying, hey, one of your things is out of date, you need to update that. So the thing that I learned through the Pym.js thing is getting a CVE is really hard, and unless you've got a reporting channel. So, for example, if you find a bug in Python, right, their community is already set up to get a CVE number, disclose it, push it, and GitHub just picks up with it, and rolls with it. If, unfortunately, like in PYm.js's case, they were just a random open-source random library so — let me explain the CVE system. So there's a corporation called the Minor Corporation, and they decided they were going to list a big index of security vulnerabilities, and everyone said, "Okay. We're on board." And what ended up happening is, okay, we can't figure out how to maintain this lists, so it's broken up to separate subgroups that issue CVEs for particular groups. So Google, I think, has a disclosure itself, and the Python community and the Ruby community has these things. There's one or two general lists. And one of them is run by a single developer who works for Red Hat, and there's a Google Form, where you fill in the details of your vulnerability, and he eventually gets back to you. And I feel bad for this guy because he set this up as a bluff for setting this stuff up, and has been saddled with this for three years. So this has been a three years of process of him getting back to people because GitHub, in turn, won't issue one of those notifications, unless you have a CVE number. So this is what I mean we've got to be able to look out for each other on this and figure out who some of these other changes of communications were because the way the Pym thing shook out, is there was an initial consultation with people who had worked on Pym, and people who worked in the community and said, okay, how bad is the security vulnerability. And yeah, they were talking about, yeah, this is pretty bad, we need to tell maintainers right now that this is actually serious and that they need to upgrade.

We're not going to disclose exactly what the vulnerability is, and then said, okay, we know we can go deep in contact with a couple of users. But we need to go broad, too, and what's the best mechanism of doing that?

And GitHub was the way that we talked about going through, but then it ended up being a month-long rigamarole. And, you know, there's a tradeoff there, right? The priorities there were just like how do you reduce harm in the most effective way, and figure out sort of what that triage list is and so, like, I think they did — again, the vulnerability had been in the software for two years, and nobody had noticed it so far as anybody knows. So this is where the problem is. It's like how do you keep track. So a lot of this is bookkeeping. And if you're booing post hoc book keeping, it's harder then doing it inline.

MIKE: So jumping off of that, I've heard a lot of conversations about tools that people can use, processes that maybe not all of, like — there was things that I was learning as I was overhearing stuff. You know, like, processes that we can use. We want to basically figure out what kind of resources, as a community, should we be pulling together here?

TED: This checklist is awesome. Thank you, everybody, too. We'll try and figure out how to type this up and put it together later. Are there particular things — we wanted to come out of here with kind of a checklist or a blog post and, like, out of the discussions that we've had, are there any things that you guys would want to do differently or resources that you wished you had out of this given the discussion?

MIKE: Also, there were a lot of, like, pain points that I heard. Like, if there are a lot of specific pain points that you would like to make the group prioritize in this conversation, I think that would be great.

AUDIENCE: It would be great to have a list of the users as people who would find security all this.

MIKE: Sure. Throw a placeholder up in there.

ALEC:  I just remembered something earlier that's kind of relevant. CVEs, I've read a few, and they seem hard to read. And from first, it looks like they're hard to read in the first place. If there was like a TL; DR version of it with, or explain it to me, I'm not a software developer. So I think stylistically it can be better.

MIKE: All of information security has a problem of making it human readable.

AUDIENCE: Kind of around that, kind of something that came up in our conversation is it's easy to freak out like, "Oh, man, I need to be on top of it!" Even if the software that you maintain is low. So I think it would be good to have in the same vein of making it understandable and easy for people to do, breaking it down, here are different software. Maybe if one of the things that you're doing is a backend core library, it's a small thing, versus an open-source tool that maybe a lot of people use. So giving people clear paths I guess of modeling their own software, I think, would be useful.

AUDIENCE: Just in terms of human-readable CVEs, the recent trend partly in branding vulnerabilities has been really helpful for me as an engineer to understand what do I need to know, and the general outline of why is this dangerous and what should I do about it?

TED: And, yeah, that's been an interesting trend and I know there's complaints in the security community that it ends up being branding rather than research and the challenges around that. So I'm wondering if there are design resources that can be thrown at this. Saying, you know, Spectre and Meltdown also did an effective job. But that's a really good example of, "Oh, this thing is really bad, and nobody can do anything!"

MIKE: Every computer ever!

TED: You're not going to buy another computer without this problem for four years. So it ended up being browser vendors and people making operating systems had to make some changes, but, by and large, as an end user, upgrade your software and that's, like, the most you could do in that particular case, right?

AUDIENCE: Well, and also with those I think they branded it well for folks like us, but they did a terrible job for the techies, because it's like, everything is broken and it's all slow down.

MIKE: It's like we're going to slow down your computer by 20% — sorry.

AUDIENCE: There needs to be more external branding to non-techies, as well.

TED: And, you know, part of this stuff is, you know, giving into security nihilism is a bullshit thing to do, right?

[ Laughter ]

Computers have problems but it doesn't mean that we can't do things. We can take steps to make ourselves more security. Maybe not 100% secure — I mean, we should talk about — listen to this — when it comes to governments, for example, and physical security — locks, keys, guards. Nobody says a system is 100% secure. It's we can guarantee nobody can get into this room in 15 minutes and we're going to post a guard that comes by every ten minutes and then we're kind of straying into the design part. But a lot of the stuff is, "How do we do a better job?" And what are the things that are at risk, how do we protect people? How do we protect ourselves and the people who depend on us? And so, like, yeah, this is part of crafting those messages. Heartbleed was a really good example. This is a bad thing, you need to do this right now. Or this bad thing is going to happen. And Spectre and Meltdown was like this is a bad thing, and...

AUDIENCE: You're all fucked.

AUDIENCE: I think something else on the branding side of things that we were talking about last night is there's a lot of victim blaming in security culture. So I think especially as technologists, I mean, I spend a lot of I many time telling people, use a password manager and that still comes down a little bit to victim blaming. How do you convince — how do you take that and encourage web developers to design their websiteses that makes it less likely for their credentials to get breached.

TED: That came up in the end user group and it's like how often do you update software? And they say, I don't, because when I do, the drivers break on my laptop, right? On my monitor.

MIKE: Like, none of this is perfect. Human beings are imperfect, and human beings made all of this stuff so naturally there's going to be issues.

TED: But part of it is, what are our responsibilities to each other, and how do we do a better job? That's the important part?

MIKE: And I think the important part of the conversation here is the resources that we can keep in our back pocket but stuff is going to go wrong. But it's like when the stuff goes wrong, how do we communicate it, how do we get the users to be on board without shutting them down? And that is a very important conversation. I love SRCCON because it's the right amount of people who care about user experience, too.

TED: So we have ten minutes.

BLAINE:  Sorry, the victim-blaming thing, I think we can learn a lot from the harm-reduction communities, and how we approach is systemic reductions elsewhere. So with harm reduction we say, I don't know, like, STD transmission, we don't say, like, be abstinent, but it wouldn't work because people aren't abstinent, and so instead we've come up with simple solutions and simple messaging that fix most of the problems and is an easy active step that people can take. So I think as technologists, think really critically about ways that we can communicate those sorts of messages so that people can have really simple things that they can do effectively. But that's definitely that we should be working on.

TED: Yeah, and, you know, one of the things that came up over here in the group is how frequently do you check in in on the software that you use, and that you depend on? And, like, for me, also, and I've had this conversation with Mike also, how frequently do you come back to the apps that have written and are still running up on the Internet? Like, do you check in on them? How would you know if something was going wrong? And I guess the example that I had of that up here was... the LA Times who, unfortunately, at some point — this thing had been running for a long time, left their S3 bucket open, and somebody very politely uploaded a cryptominer and left a note. So they were just doing cryptomining, which, to be honest, with the ads that the LA Times runs, I wouldn't have been able to tell the difference.

But this is why this was a good target. And we were talking about how, you know, some were saying actually make a list of people who use your software and check in with some frequency. And we can talk about longer, shorter, or what's more optimal, but having that built in to your timing and say, hey, we should be doing this, or the extent to which you're using password managers, a functional list of the software that you use, and stuff like that.

AUDIENCE: I have a quick question and I'm wondering if anybody knows the answer. But the LA Times — most software made me think... do tools like Proxy Badger, and Ghostary, do they keep track of malicious JavaScript?

MIKE: I think most of them do. I recommend uBlock.

TED: That's what I'm using here.

MIKE: I tell journalists, if you're morally against blocking ads... can you click on the icon up there, below the power thing.

TED: Do you want to come up and use my computer?

MIKE: Security usability is, like, the worst? You can just — and this thing updates itself time to time and it's not perfect. Something's eventually probably going to get through. But, yeah, these tools do provide some of that.

AUDIENCE: Also we've discovered that uBlock and all of their lists are open sourced, and they're on GitHub and you can contribute to it. We've discovered this because there's this wonderful GitHub issue about how to block the Washington Post — a blocker blocker. So it's all up there. You can check it out see what they consider to be bad scripts.

KELLEY:  So this might be a whole nother can of worms but you mentioned that security tooling and UI is just awful. And I think this is something that backend — my background is all in backend engineering and security, people don't understand — like people just don't believe in UX. They're like, I'm a hacker, I can do things from the command line. There's almost this ethos of, "I'm better if I make this ugly." And I'm just, how do we convince people that building good UX is important. And the reason is like OnePassword have been successful is because they've thought about that, and how do we do that?

TED: I think for — there's a section of the security community that really does care about UX but that's the —

BLAINE: Unpopular password: OnePassword is a piece of garbage. And all password managers are garbage but I think, like, I totally agree. I think one of the things that I really struggled with is that is that designers don't give a toss about security, thinking about how to design systems, and I would be really interested how do we get designers to care about fixing some of these things because, often, the security surface is a really boring interaction-design problem. It's, like — like, in terms of, like, being a designer. Oh, I don't want to work on that problem. It's not sexy. And I hear that a lot.

TED: So I think the people who are a really good example of a holistic approach of this are, like, the Chrome team, right? They employ UX researchers whose job it is to focus on UX, and they publish papers, like, on this little badge here that says "secure" with a little green lock, what is the most important way to do this, what is the most effective way. So there is a small core of people who are thinking about this in that sort of holistic way. They do really great research. But, right now, they're definitely more the exception than the rule. But I think, ultimately, if you care about the end result of how to reduce harm and do work effectively, you have to do this in a holistic way, and have designers and engineers. The problem is getting people from one camp and the other camp to be like, hey, we need to talk about the end result. And this is where I come from, again, I was mentioning the problem working with journalists is you can have any conceivable threat model. And that's a huge problem because if you get people stuck in the triaging process then you can end up in really weird places that are not applicable and have these really pointless arguments with people, or you miss things. The point at which somebody switches off and goes, like, yeah, the State Department won't give me a Blackberry so I'm just going to set up an email server in my house. So that's one of the consequences of somebody switching off and not bothering with this, which is kind of the huge problem with security design. So I don't know. Yeah, we should keep working on that.

So I think we're going to keep writing a blog post on this in our free time. If other folks are interested, I'm happy to work on things. And, yeah, any final questions before our time's up?

MIKE: I think, like, you know, trying to put some more resources that I heard about in there. Everybody is welcome to throw more stuff in. You can just jump to the bottom and throw up some links in. Yeah, I mean, honestly, this conversation is how do we get people to care about this? And I love that this is how our conversation ended and so I'm hoping to start this journey as a community I feel like.

TED: And one of the questions that I've had is do we need to set up a mailing list for journalists and security and stuff? I don't want to run a mailing list. We've got Slack and...

AUDIENCE: I mean, are there communities that we can join? Like, what communities are already there?

TED: How many of you are in the News Nerdery channel?

AUDIENCE: News Nerdery?

TED: If you email newsnerdery.org, it emails me. So you can get at me there. And Twitter is another way that people keep track a bunch of these things. Things get posted to the NICAR list periodically. What other mailing lists do you guys keep tabs on? Yeah, so that's part of it. How do we do a better job of informing each other and keeping tabs on this stuff. Cool. So yeah, we'll endeavor to do that, and if anybody wants to, like, leave — yeah. So I forgot to put my — oh, yeah. My DMs are open if anybody's interested in sort of following along with this further, feel free to DM me, there's an email address and the like. I'm happy with an mail list, or a Slack, or start up a thread or a list that we can keep talking. Thank you all very much. This has been awesome. I really appreciate you coming out!

[ Applause ] 
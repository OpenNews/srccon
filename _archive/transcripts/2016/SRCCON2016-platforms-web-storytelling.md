Get you a CMS that can do both: Platforms, the web, and storytelling imperatives
Session facilitator(s): David Yee
Day & Time: Friday, 4-5pm
Room: Boardroom

DAVID: This is momentous. It's the last session of SRCCON. I'm overwhelmed by a lot of the things that I've sat in on the last couple of days, and I'm sure you have, as well. It's been an interesting opportunity to the think about in this talk, on what I've seen, in the course of the last 24 hours, I've probably had my colleague help me figure out how does this fit in line with what we've heard this week. So I'm just going to frame the conversation first. I'm going to ask you a little bit, who you are. And I'm going to set expectations about this talk because this is a really, really big topic that I called in my notes, get you a CMS that can do both. Which I think is a great title. And...



[ Laughter ]



Yeah, I hope you y'all do, too. That's why I'm here. The topic, primarily being that we all probably, or many of us have worked on CMSes or have built them, or used them, that suit the in our websites, while we live in a reality that's increasingly pivoting towards publishing anywhere, everywhere, depending on the stories that you're producing and the journalism that you're producing. So let me came from things a little bit first with my magic little keynote device.

So first of all, actually first let me actually start. Let's skip slides. I want to find out who we are so I know who we've been talking to. And I've done this a number of times. So I'm going to get there. If you're an engineer, please raise your hand. Yup, CMS talk. Okay.

If you are a designer, please raise your hand. Ah, very nice. If you are a product person who is not an engineer or a designer, or is also an engineer, or a designer, please raise your hand. Now, if you are a reporter, raise your hand of any kind. If you consider yourself a data reporter, please raise your hand. If you are an editor, please raise your hand. Who in this room did I not ask about their discipline? Okay. Nice. Whose? Oh, sorry. I forgot—this happened last year, too. Why did you come to my talk a second time? You're like, that asshole. Sorry don't transcribe that. That's awful. I'm going to give credit. I'm going to make Stan write about hems because he's done yeoman's work in putting this all together. So let's be polite to me. So what am I talking about? This is a very heavily product room. I've been talking about this a little bit. It would be nice to have a lot of newsroom folks here. So I want to try, as we talk about this, to be empathic about the needs of the people who work in newsrooms, and try, especially if you're an engineer, to think about what you are, in some ways, subjecting your colleagues in the newsroom to as you devise these principles. Welcome to everybody else. I hope you are in the right room.

All right. So we are talking—we're going to talk a little bit—so I'm going to—I'm going to sort of telegraph to where we're going here. We're going to talk about remixing. So the exercise that we're about to employ is about remixing stories, and putting stories in different contexts. So it used to be that we were just newspapers, and you had one channel, and it was great. And you could just publish to that, and you write 500 words, and it would end up in a paper that's some street urchin would be screaming at you to buy. But it's been a long time since that. And the web has been a boon to us all. All of us have benefited from the web. We're all here because of it in some way. We're entering into a new age, and one of the ways that I think it's interesting to think about this because I don't want to make this into a referendum on platform publishers, and Facebook, and Google AMP, and stuff like that, but there is a reality that we're dealing with, which I refer to, and frustratingly advertisers refer to as "share of attention." And meaning, literally, that we all have a certain amount of attention we pay to things in a given day, and, it is, whether or not you think this is a cynical outlook, it's—you have to think about where you fit into that share of attention. And so we'll speak to kind of your imperatives and your responsibilities to make that feel less cynical.

Namely, and I think this is true of most of us, although somebody brought it to my attention that this is probably not all of us, as journalists, our responsibility is to speak true, right, and to get it in front of people in a way—in the lowest friction way possible, and to do that responsibly.

And that was easy when it it was the web because you said okay, well, I'm doing my best job, I'm putting this on the web, I want to make sure my SEO is good. My RSS feeds are good. But we don't live in that world anymore. And now, there are these walled gardens that we have to play in if we want to get in front of our audiences.

Scott and Dan, yesterday, are either of you here? Okay. Scott and Dan! Gave a talk yesterday that is kind of similar to this one, which is about how you would take a story and think about how it would be shown on Facebook AMP, or Google articles. Now, here's a question for you, who knows about Google AMP, or Facebook instant articles? Thank you. You're very connected in the world. Who has not? There's no shame. Thank you. And thank you. This is important. So Google AMP, which is accelerated mobile pages, or accelerated mobile products?



PARTICIPANT: Products now.



DAVID: Well, okay there you go. And Facebook Instant Articles are essentially a play to get stories to load instantly on your mobile device when you either search for them on Google on your phone, or you visit them on the Facebook mobile app. And this is something we talked a little bit yesterday, well, what does it look like when it goes to Facebook Instant Articles normally? Do you have to strip out all of your ad strips, and strip ought all of your imperatives and that's hard to design for. Before these problems are not fundamentally dissimilar to RSS feeds. It's syndication. We've done this before. It's frustratingly harder and the formats are not always aligned as simply as RSS was. But it's a syndication problem. So what I want to talk about are these other platforms. And I'm going to sort of set some expectations here. How do we publish to these other platforms and how do we create CMSes and how do we solve CMS problems and human system problems to allow us to publish to any other platforms that are not syndication platforms, that are fundamentally different formats? Whether or not they provide APIs? We're going to talk about this in the context, first, as soon as I stop talking, of what's stopping us. So what's the difficulty that we have as an industry, and as systems to doing this work, and then we're going to talk a little bit about inventions and questions about these inventions.

We are not going—so I'm going to be completely honest with you. The other night I was totally freaking out because I was like, how am I going to arrive at solutions for this stuff. And I think—and I've talked a little bit about this last year, my goal—I think our goal in this is to come up more with questions, and to be able to take this back to our newsrooms and to our product organizations and think well, here are the problems that we have to solve. And I didn't realize the scale of the problems, so let's see if we can establish the scale of the problems as an outcome of these talks. Just as a reminder, that I've put this slide that your purpose is to speak the truth. Let's talk about the players. So I just came up with this as a rough list. We can talk about—I'm sure you'll look at this, and say, well, you're forgetting such and such platform. And it just wouldn't fit in my single-column table. Things—most places that your stories can end up that are not a desktop web experience, or if you're lucky, a responsive mobile web experience, RSS feeds, Facebook Instant Articles, and Google AMP which I just talked about, news letters, tweets, Facebook posts, Facebook video, YouTube video, they're very different. They're formed very differently and they're structured very differently when you're doing them right. Snapchat, podcasts, and I've left this one on here even though I went to—I went to a talk earlier about why robots are not content platforms but I left the robots thing in here, story, Stacy.

So this is just an example of some of the things that we have to think about, imagine humans and automated systems to try and address all these different needs. And, just as sort of we revisit what I was talking about before, some of them are syndicating experiences, Facebook, AMP, RSS, and news letters to an extent, and some of them are completely different semantic structures that would require remixing. So what I want to think about, what we're going to talk about next is, how to think about your story as having an atom, having, sort of, a central conceit, and how that story would have many faces. And I want to leave this in here. This was a big part of my—of, kind of, how I impressioned this in the beginning when I had a lot more to say about this before but I'm just going to leave this in here for now. I want to assume that it includes the web. When we're talking about, you know, like in—put a story on Snapchat, or I could put a video on Facebook, right, or I need to make sure that my story looks good on Facebook Instant Articles. But I want to insist that we include the web in this and that we keep that as a priority because that's—it's an experience that we can rely on that gives us the maximum of flexibility that we can do, in some cases, our best work with. And that is evergreen. It's not something that's going to disappear. It's something that we have a lot of control over. So as we talk about this, include the web in your conversations.

So, because of the shape of this room, I am probably not going to do small group conversations. There's a lot of people here. So just to revisit something that you might have heard at other talks, I would like to hear from as many people as possible. So consider your questions. If you have spoken already, don't call on me immediately, don't think I'm going to ignore you, I'll come back to you. But I want to hear from as many people as possible. And as much as I want to hear from engineers talking, I want to hear from other people, as well because this involves all of us. So I want to start with story ingredients. In an effort to think about how you would get a story from the web to Instagram, for example, grove a lot of flexibility. This is the simplest possible explanation, right? If I have 500 words on the Republican National Convention, and it's got a photo of Trump on the stage? What's going to go on there? It's probably going to be a photo, a small caption. How do we make that not repeatable. How do we restructure the story as atomic components?

So let's call out some examples of ingredients. Some obvious examples of ingredients of stories and I'm going to write them on the board. What goes into a story that you include on the web that you would remix into some other platform?



PARTICIPANT: Words.



PARTICIPANT: Headline.


DAVID: In the beginning, there was the word. Thank you. Mandy Brown. The world's foremost proponent of words.



PARTICIPANT: Headlines?



DAVID: Headlines. We could talk about structural components as well as semantic structures.



PARTICIPANT: Pictures.



DAVID: Pictures, thank you.



PARTICIPANT: Descriptions of pictures.



DAVID: Captions.



PARTICIPANT: Amplified, a byline or an author.



DAVID: Okay. Authorship.



PARTICIPANT: Date.



DAVID: Date.



PARTICIPANT: Version.



DAVID: Versions.



PARTICIPANT: Third party embeds.



DAVID: We're getting really meta. Thirty party embeds.



PARTICIPANT: Some sort of tracking mechanism?



PARTICIPANT: Topics, tags, categories?







DAVID: Thank you. Video? Moving images.



PARTICIPANT: Audio.



DAVID: Audio. Thank you.



PARTICIPANT: Comments.



DAVID: Ooh! Oh-ho-ho.



PARTICIPANT: Related content?



DAVID: Related content?



PARTICIPANT: Metadata?



DAVID: What kind of metadata?



PARTICIPANT: That's just a big category.



PARTICIPANT: And you've got topics and descriptions.



DAVID: Yeah, no, that's... me-ta-data.



PARTICIPANT: Do you want everything?



DAVID: What I'm trying to do is sort of arrive at? There was one thing that no one mentioned. And it's interactives, and this is kind of what we talked about yesterday in the Commons. Who was in Scott's and Dan's talk yesterday? Okay. We talked a little bit about interactives. There are obvious constraints there, right? So these are all, sort of, ingredients and structures of the story. So this is how—these are the tools that we use, today, to write our stories.

It's—what I want to think about, and just I don't even know if something that we can talk about right now. I mean, we're going to talk about this in a second. So assuming that you've got a hub and-spoke-model. You have a heart of a story, a concept. In many cases, in almost all cases, that starts with words, that expresses itself in these different places. `

So the question is: What is the spirit of the story? It could be as small as a tweet like what if your system—what if you didn't assume that everything was going to end up as a full-fledged story? It was just going to be a tweet. That's the spirit of your story. That's the heart of your story. So I want to think of this as we embark into the next—second next couple of sections. And this is going to be, sort of, more of a discussion now. I want to talk about what's broken. So if we're going to talk about how we're gonna publish to all these different spaces, assuming that we don't want to repeat our work. Assuming that we don't want to hire a million extra people... we don't have the money to hire a million extra people, what systems the place today are breaking down, whether that's in our CMS, or in our newsrooms, what about the systems today are insufficient to the task of publishing to, in some cases, five or six different places from the heart of the same story. From that spirit of that same story. And what's rigid or repetitive? So let's leap off from that. What's broken today?



PARTICIPANT: Required fields.



DAVID: Required fields. Wow.



[ Laughter ]



The star...



PARTICIPANT: Internal modularity of content types. So if you're taking something, and putting it to Facebook, for example, in Instant Articles, the content block in most CMSes is just a block but if we understand it as a series of modules, it would be easier to turn it into whatever Facebook modules needs, or whatever AMP needs.



DAVID: So the fact that it's a monolithic body field.



PARTICIPANT: Yes.



DAVID: Does everyone agree the idea of having a single, cohesive body to the article is a bit of a barrier to what we want to achieve?



PARTICIPANT: I would actually disagree with that, just to borrow from the example that you have, in WordPress, like, shortcodes but the problem is valid, it's just that people are copy and pasting markup rather than structuring parsable data within the content field.



DAVID: Got it. So lack of structure to the story.



PARTICIPANT: I think a related notion with that, though, is that friction between the value in having structured data, and the needs of the editorial experience.



DAVID: So they're fundamentally—they can be fundamentally at odds.



PARTICIPANT: They can be.



DAVID: Complexity is a bad thing, sometimes. Yes?



PARTICIPANT: The fact that both the creation experience and the preview experience are desktop focused when so many of these things are mobile.



DAVID: Yes. Desktop preview. Is it fair to say that the—that a web-centric preview experience itself is problematic? Is that something that...



PARTICIPANT: Not if you have other CMS options.



PARTICIPANT: That can be both a CMS default problem, but also, like, a cultural problem. Right, everyone's still thinking desktop's as the atomic ideal of the thing.



DAVID: Yes



PARTICIPANT: Is you start pushing out, you write by the least common denominator by all the shared platforms because you can't guarantee it's going to be there unless you're really limiting yourself.



DAVID: Yes, to that.



PARTICIPANT: Not engineering. Design for impact. So things that look really impactful on the web, or things that look really impactful on Facebook or Twitter when you're trying to push them out to other things they lose that kind of context.



DAVID: Or the context itself may be part of the actual message.



PARTICIPANT: Collaboration. Lack of. At least with ours.



DAVID: As a practice—or...? That's actually, this is a big thing. So let's talk a little bit more about what's failing our collaborative practices.



PARTICIPANT: Well, a one person can be in our post at a time and it's just not practical. And what locks it up, who has it open, who went home, and left it locked.







PARTICIPANT: I would say complexity of adding new features because you have to support so many platforms and different things at this point.



DAVID: Adding features. Yes?



PARTICIPANT: It's really hard to have broader context. Like, not just related to content but related social context.



DAVID: Unpack that.



PARTICIPANT: Um, say, we have an article on the demographic makeup of people at the RNC. No one has made a good way of, within that article, or as related content to that article, looking at how the demographic makeup at RNC 2012, in 2008, and how that shifts looking at the broader context of the history of that event.



DAVID: So historic context means that our stories need an explanation. Yes?



PARTICIPANT: We also tend, I don't think we've figured out how to write to different need states. We assume that one article that's written once and published everywhere is the best for all the platforms instead of thinking that you have a user on mobile who only has three minutes to get caught up on the DNC is different than the user who has 30 minutes to really dive into, really go in-depth and try to figure out how to do that in one place.



DAVID: Platforms need programming prerogatives. Every platform is slightly different.



PARTICIPANT: How do you accommodate the newsroom's desire to make your project look special?



DAVID: All right...



[ Laughter ]



Let's do, because we have a lot of designers in the room. I think this is very interesting, right? Your feature template.



PARTICIPANT: They let you throw the designer under the bus.



DAVID: I know! Some of my best friends are designers!



[ Laughter ]



You should see my party flyer designs from 1996. I do want to unpack that, though, a little bit.



PARTICIPANT: So I'm that guy who's always asking for something special and there are a lot of people like me. But how do you plan for the fact that, you know, we want to be able to, sort of, brand projects on their own? And make that scalable, which I understand hasn't.



DAVID: So I'm going to respond to that with a question. Are these decisions mutually exclusive? Do we have to decide between—and I don't know the answer—actually, I don't have an answer for this. I don't have a clearance for this. Do we have to decide between a structure, a system that permits for flexibility and remix, and distribution, and a high-touch expression of that, you know, that lives in maybe, a desktop experience or something like that. Where do we stand on that?



PARTICIPANT: Is he saying it only lives on the desktop experience? I'm not sure if he's saying that.







DAVID: Is that what you're thinking, or is there a high-touch version, for example, of a Snapchat experience?



PARTICIPANT: I mean, if it would be great to have a system that would accommodate reoptimization of multiple platforms if we so desire.



PARTICIPANT: So, like, branding persists across all the channels?



DAVID: You had a question in the back.



PARTICIPANT: Well, I'm really curious about the idea that kind of relates to this of what we invest in, and how long we're expecting our investment to return anything in terms of, you know, let's say I'm a newspaper, I'm going to buy a printing press or I'm going to invest that linotype machine, and it's a knowable investment with no return but if you're investing in CMS, essentially you can do anything, right, because we can all dream of those things we can do, but what you're applying always is a set of limitations and tradeoffs. And, oftentimes, in newsrooms, it's up to the developer who can do what they can don't, and they leave, and somebody with a different set of skills comes in, then they're going to want to change. So what are we investing in, and how long does it last?



DAVID: Very good question. Let's take that and leap off of that. So, thank you for thinking of my experience as an engineer in terms of building this fantastic new CMS that fixes all of these things. But I also want to talk about—and this is more important. I put the CMS part first,ic, because we're all interested in the CMS pat because this is how I titled this talk, that's my bad. What's broken about the people situation? `what's broken about the newsroom itself, right?



PARTICIPANT: Oh, boy.



DAVID: What does my newsroom look like? What are the titles of people in my newsroom, right? How different are those titles from the people who were essentially putting newspapers and having them—having small children yell at you to buy them? Like, what's broken or not broken? What is a limitation of the current people systems that we have in place, whether it's newsrooms, or newsrooms and product going together, that preclude us doing that work there?



PARTICIPANT: Different scales of time. So, for example, newsrooms tend to work on a daily or weekly cycle.



PARTICIPANT: Hourly.



PARTICIPANT: Hourly cycle. Minute cycle if we're tweeting, and products and development tend to work on months, yearlong sort of experiences.



DAVID: Right. So fundamentally, that's a fundamental problem in general even with what we're doing here today. Mandy?



PARTICIPANT: I was going to say, the skill set, what makes someone really good at writing articles or feature essays is not the same thing that helps, makes you really good at creating snaps, or Instagrams.



DAVID: Reporting is not Snapchatting. Yes?



PARTICIPANT: Patterns of behavior or workflows are inflexible and resistant to change.



DAVID: Who's inflexible? Why are we inflexible?



PARTICIPANT: I think a big piece of it is those different skill sets. It sounds like, to me, like those three things, what the question is, it's not that there should be multiple people, in general, on the same story, but one person covering one skill set in your story all at once, right? So your Snapchat person, your Facebook person, your Twitter person can be accessing it and writing the tweet, Facebook, or whatever version along with the editor who's doing the copyediting and clean-up.



PARTICIPANT: There's also a lack of tools supporting it, right? So we have, like, decades of text editor experience. Like, everyone has multiple text editors at their fingerprints but we don't have a lot—we've had Snapchat for, like, two minutes. We don't have a lot of tools to help us be good at that.



DAVID: Yes?



PARTICIPANT: Even the concept of a draft implies that there is a state of being published. And maybe the thing that you're creating goes directly out into the world. So what does a Twitter editor look like? Does it need versioning? If it's a thing that you've just published, the draft doesn't exist until it's been published. So what does that mean for the test editor for that draft?



DAVID: In the end draft, what does it mean to decide that you want to do it six different ways?



TED: Lack of context or sophistication by the audience about how stuff is produced. So people have misconceptions or context collapse around if something does have flaws or a problem, people just end up like, "Journalism sucks!" And to the extent that transparency is produced, it's not a thing, especially when we're looking at common issues that gives you context for what happened, right?



DAVID: Right. Is there a jack of all trades master problem in play here?



TED: Well, yeah. It takes more of the context collapse problem, right? And whether people have an understanding of what an article or a snap, or any of these things are. And the extent to which, like, a CMS, or a system is responsible for tracking any of that, or making that transparent, or whether it's just the end product the thing that you're delivering.



DAVID: Right. Yes?



PARTICIPANT: The flip side of that is simply the fact that we need to publish to all of these different platforms, and, yet, and require different people to do it. It's now three or five, or ten different newsrooms in one. And we haven't maybe quite realized that we need ten times the resources of ten years ago?



DAVID: That's the big one, right? Like, if you look at newsrooms—just to use as an example of where I work at at Vox. You have engagement, or you may call them social media editors, or whatever. You have people who are responsible for this vast swath of stuff, that I'm sure, whose title was not that. Their title was reporter. Is it even realistic to assume, or what can we do—and this is probably a good segue into unless somebody has a really pressing example of this that broke. And there's a lot of things that broke, and this is their cathartic, so thank you. What can we do to mitigate this problem that we have to staff up to do a million different things?

Hopefully, we're going to—this is a lot of stuff. I'm going to going to make us walk through it. This is a lot of questions that we can ask here, that we can talk about.

Primarily, it's—I want to, sort of, think about—so all these things that we've talked about here, that's a lot of stuff. I'd like to think about strategies, radical strategies, in some cases to rethink how our human systems and our technical systems create stories. So coming back to the core architecture of these stories, like, how would you think about a content management system, how would you think about a newsroom that was able to do all this stuff without being a million people large, and just completely collapsing under its own weight? Joe?



PARTICIPANT: So I don't know if this is where you're going but you were talking about the spirit of the story and a lot of times we're talking about, in terms of different forms. Someone up here was talking about, you have to write differently for things, hast the common denominator? Well, what is the atom of content that we're managing? Maybe, we don't understand that, too, right now.



DAVID: I mean, that, you've successfully uncovered my biggest worry/concern/question. And Mandy, and I, just to telegraph, Mandy and I have talked a lot about this, we thought a lot about how this would work. And you know, I think it comes down to this: What is the central conceit of a story. Like, how can we structure this so that we could address that?



PARTICIPANT: Well, to me, one of the big problems is that, it's actually the spirit of the story changes story-to-story. And that a lot of our systems are currently built with an expectation of, "You will start here, and you will do this, and then you will do this." Rather than the conception of, "You can start anywhere and then move from there."



DAVID: So non-linear—I'm going to say non-linear reporting and that sounds very cool, but that's obviously not right. That's not what we're talking about. It's not linear.



PARTICIPANT: I think there's, I think there's also a certain problem in the fact that the term "story" means different things to, like, reporters and editors versus CMS. To a reporter a story is something that happens, or an event that needs to be reported on, that's not going to change tomorrow and it will be a new post in the CMS. So the idea of, like, the story as a unit doesn't really work on both sides.



DAVID: Yes, words—words—words are horrible. And story is a great example, and we've definitely read into this. Everybody in here is, like, okay. So atom so this atom. So let's talk about this concept as an atom. Let's get out of the story realm. Let's get out of the story mode and let's get into starting to talk about atoms. How do we leap off from that in a way—so let's start with the angle of how do we reduce repetitive effort? So the example of a newsroom that has—of a CMS that supports ten different platforms, ten different types of atoms, or expressions of atoms, doesn't necessarily require ten separate people. And a classic example of this is if I'm going to create a CMS that allows me to publish to both YouTube and Facebook, do I have to upload two videos, right? Let's give us license to think that these things are possible—that it's possible to create a CMS that allows us to not duplicate effort. What are the ways in which we can reduce the duplication effort and the need to staff up for one person one end platform to make this happen



PARTICIPANT: I would start with intelligent defaults if you have a summary, it would probably work over a number of platforms right off the bat but if you want to then go in and tweak and change that, then by all means, you have the ability to do that. Like, I don't have a separate RSS summary. I don't have a separate summary for the homepage—actually I do—but if I don't do any extra level effort, that stuff will carry over to the homepage, that would carry over to the the let's say, Facebook section, or the SEOs and I can intervene as necessary.



DAVID: So smarter defaults?



PARTICIPANT: There's probably a term for it.



PARTICIPANT: So one of the interesting things that you said was some of these challenges represent the conflict between the creation and the optimization of distribution. And if you have that point on the board like what about a CMS system and a asset management system, and the problem is that most of them are created for creation but we're using them for STK-BGS because if you're optimizing for headlines, that's a distribution thing. And likely, we would make those more aligned with each other, or recognize that they are different things and split them out but right now, we have a weird mish-mash in the middle.



DAVID: Let me ask a question, how much in the newsroom, the reporters and editors, how much should you be thinking about that this would be in ten different platforms. How much would you let that get in the way of distribution.



PARTICIPANT: If—you're thinking where this is going to live with varying degrees of success.Tory newsrooms, where the headlines of their news stories are totally different teams so...



DAVID: So... `so you've got somebody else who can worry about that. I'm just going to worry about my atom and I'm going to let somebody else figure out how to allow it to gratefully degrade, or—gracefully TKPWRA*E deCabaretted, and turn that into a high touch experience into any platform. It's optimized for that platform.



PARTICIPANT: So you need transparency for that platform, if you're one person, you need to be able to see what's going on on Twitter, to see what's going on on Twitter, and Snapchat, and so on and so forth. So visibility, so if you're going to understand things that are you don't understand in that context, and be able to produce context for these platforms, you have to see what's going on on all of them and not have 40 different applications open across three different devices in order to just prop what's going on with your stuff?



DAVID: Like, is it actually being expressed in these contexts?



PARTICIPANT: And what—and, you know, what does a Snapchat look like and what if it's going out next to other things? You know, most of our reporters probably have, even though they're writing the headlines, they don't have a sense of what that looks like when it dispose up on the home page. But you may not have the same visibility with the end number of platforms, necessarily. Which headaches it harder for you to take care of them, or do them well because you can't see it.



DAVID: A preview question.



PARTICIPANT: It's the preview but it's also the context of what's going on. A tweet doesn't live all by itself. It's in the context of other things that are being said and responded to.



PARTICIPANT: So we shouldn't schedule a story around breaking news.



PARTICIPANT: Yeah, and I think—um... I think to be idealistic/utopic, you know, I think we can build tools from the, sort of, journalist tech side of things. We can build those tools to bring those contexts in. But what if we could apply political pressure on, you know, the various platforms and say, like, hey, if you're going to consume my content, why can't we be the place where that social activity happens? I don't know what that looks like but, sort of, rather than fragmenting the conversations across all of these places, actually start to be aggregating points for those conversations.



DAVID: Yeah, and I appreciate you being utopic about it, and just as a reminder to everyone, we should be utopic.



PARTICIPANT: I think maybe there should be a way for us to quickly highlight, sort of, the nucleus of the atom, be very, very main point of the story. And, from there, extract it, and figure out a way to do something with it, whatever that means.



DAVID: So maybe you don't start with the nucleus. Maybe you arrive at the nucleus after you've done your work.



PARTICIPANT: Making it easier to get help from other people in your organization. If you don't know the best way for Snapchat, or best way to close a tweet, maybe getting some kind of advice.



PARTICIPANT: Also, analytics, they could give you feedback on how well you're doing.



DAVID: Right. There's a... we can't all be experts in everything. Joe?



PARTICIPANT: So this might be going out on a limb that might break under me. But I'm feeling like the atom metaphor is problematic because, like, we all don't know about water and atoms, right? Because seriously, I think Mr. You're talking about modules instead of a monolithic body content blog and I think that maybe we need to think in terms of more like different expressions of stories, and maybe, you know, some other metaphor of structure and layers is more valuable so that, I don't know, something that allows for the fact that you're going to recompose elements of a thing that is an expression as an article, or a Snapchat, those—the things within that might be more like atoms. I mean, not to belabor the metaphor but I think that it's something to be very careful about because we, otherwise, we get back into this situation where we have a monolithic body get try to serve multiple purposes and run into the lowest common denominator problem. And as we go, we should try to figure that out.



DAVID: Stay modular.



PARTICIPANT: To add onto that, it sounds almost the best metaphor is like a Photoshop file. You have a set of layers, and each layer might be added or subtracted in a particular context. But they're all in there, but you might not see them if a particular context which is what I was going to say, if you're going to share this story, different pieces to different platforms, then you're going to need different URLs as you share different things but, they need to be centrally managed for your center story. So there needs to be some sort of unique IDing system for collections of components within a story.



DAVID: Right. So... okay. Cool.



[ Laughter ]



Right. Cool, dude. That's awesome! Right? Right. So I just want to highlight that, right, it's like maybe what you're doing is, you have this sort of scratchpad of modular content. You have all these ingredients and you, sort of, compose them together and what we've been calling a story, perhaps erroneously, is actually a repository of related, semantic-related content in that sense. Did you have a question?



PARTICIPANT: I was going to say, one thing that's really great about the monolithic body is you can copy paste from the Google doc into it. And so how do he create admin experiences that are comfortable for composition. And modular systems are great and I think everyone from, like, the front end side love that, but a lot of those tools, people don't actually want to use, like, the really complicated quiz tool that takes you 20 minutes to do the thing when you would rather write and do a Google doc and paste it out. I think metadata formats in body, like RGML, and shortcode formats, that's an interesting way of maintaining a comfortable composition experience without having—there's a lot on both sides.



PARTICIPANT: I was saying, well, what would be a good tool for that is decomposing tools. So you have a monolithic text field. You paste in your Google doc and everywhere there's a line break there's a button that says, break into a different atom here, and then you separate out that story into pieces.



PARTICIPANT: But prose is not like npm modules. And so I feel like if the hard thing is the research, purely hypothetical, but if the hard thing is the research, make it easy to get access to the research, or make it easy to get access to the things that have been said before, and make it easy to compose, and get rid of all of the faff. The number of times that I've seen production managers who have spreadsheets, who need to be—you know, who need to check with every single person who's doing one partner a story to get a story together. And it's just this massive coordination problem. Like, remove all the faff, and make it easy just to do the writing because that may be the...



DAVID:... the thing that you're doing. I'm going to stop for a second and I'm going to call out the reporters in the room. Raise your hand. What do y'all think about this?



[ Laughter ]



What we just got to, what we just got to, how does this make you feel? Does this make you feel excited? Does this make you feel stressed out? How many of you have called an engineer and said, I've had a problem copying and pasting from word and it looks bad in the CMS. Okay? How does—we've gone a long way here. Where are we at with respect to people who are in the newsroom?



PARTICIPANT: So I think that there does need to be, sort of, this separation between the writing and drafting process, and then, I like the idea of decomposing it sort of after the fact, or tagging it, or structuring it kind of after the fact, or kind of creating a project almost after the fact, where all these other elements can kind of come together. I think the writing and the drafting and in the thinking of what that narrative is, and how everything works, kind of needs to sit outside of this, in a way and then as it is sort of the matter of storing, and parsing, and being able to take those components apart. And so what we've been talking about in building this, we're kind of thinking through how to build this, we want to take a lot of structured content out of stories such as notable quotes. We want to kind of be able to capture who the main characters are, the secondary characters, and all that. And I think that all needs to happen not by the reporter, necessarily but we're talking about the idea of librarians as being this whole sort of new group of people who might be serve—it might be just the natural evolution of the copyeditor role where they're sitting and saying, how do we parse this and structure this? And there might be automation that helps make that easier but that might be an actual librarian that's helping you figure out how all these parts get named and categoryized so that they were elsewhere, and also in your archives. `

I mean, there's so many considerations that I don't think that you can put all that on the reporter and the editor.



DAVID: That's interesting. I hadn't even thought about that.



PARTICIPANT: It's like a producer role almost.



DAVID: It's like discerning entities and discerning structures inside reporting that doesn't infringe on the skills of the people who are doing, let's face it, the hard work, the really, really, really hard work. Yes?



PARTICIPANT: I think one of the things that's really sort of constraining progress in a way with some of this stuff is pressures that are sort of—constricting pressures that are in place by software that is—has nothing to do with the CMS. Like, to use your example of publishing a video to Facebook and to YouTube, if you want to do slightly different edits, maybe it's just the title cards, or something like that, well, now you have you need to be hooked into the rendering process. You need to be hooked into Final Cut, and are we rendering the CMS platform like a video editing software?



DAVID: That's a good question. When you're talking about a CMS that can do both. We definitely we want to end up in a situation with one monolithic system that does everything. I think it's interesting to think of decouple those and think of them in the same way.



PARTICIPANT: Well, not just video editing management. I just mean, they want to use Avid, they want to use Final Cut. They're better tools for that and they want to be able to use that. So I think the ability to hook into those systems that automate things is pretty limited.



DAVID: Be constrained in what the role of the software is. You had your hand up.



PARTICIPANT: Speaking, speaking from a former manager, I like the idea of the atom forcing my reporters down to three words that are the magic that's... you know... but the reality—I've kind of realized, a lot of times we'll be publishing things standalone, things that we learned along the way that aren't the main point. And maybe, we just published them as stuff that's interesting, independent of the atom

So I think something closer to something modular makes sense, you know, it doesn't necessarily have to hook back to the atom.



DAVID: Right, but we don't start with the root. Maybe not everything is tied back to this one, central conceit. What are we—sorry.



PARTICIPANT: Putting both of your comments together... if we separate out the creation process from the, kind of, management, and we build a really good creation process that includes research management, then, suddenly, all our reporters have all their research together in the same place, and they can collaborate, historically, with their own work and their newsroom's work, and like, all of the research that the rest of the newsroom has done in the past suddenly becomes one central library to do more research.



DAVID: Right so we're going to get...



PARTICIPANT: Bibliographic tools.



DAVID: What were you saying?



PARTICIPANT: Bibliographic tools. Getting underneath the final draft, right? We're not just storing the finished piece. I'm so proud of that piece, we're getting underneath that piece a little bit. Yes?



PARTICIPANT: One comment from an editor's perspective. This is going to take a really long time. One of the biggest challenges that we have with our CMS, like a major thing has happened in the world, fuck, I can't publish this because I don't have an image. And CNBC is like two minutes, we have an image. And the most important thing is to get the news in front of the people who need the news, right? And all of these things only happen when you have the luxury of time. And this isn't usually something that you have in the process.



DAVID: We're going to dive into that in one second. What if your audience is—what if your audience for that and this gets at the breaking news stuff that Alison talked about what if that audience is not on your owned and operated website? What if the best place for that audience is —



PARTICIPANT: Yeah, because the team that I was running, that's how we thought about things, if this is a news event, then we tweet it, but it has to go to the homepage, and we figured out how could we deconstruct the individual elements so that it can go out into the places that it could go out. When the reality is your social audience and your homepage isn't the same and we can't underserve one in that particular context.



DAVID: Ooh, so that—so I feel the same way. But I wonder if I'm wrong. Can we—is it okay to serve—because, historically, obviously, we have underserved—and again, I'm not an apologist for social media of these other platforms. We've served these platforms because those platforms have not allowed us to publish in any reasonable way, and to be honest, still don't to be honest. Like this CMS we're inventing here is not possible. Some day it might be possible. It's not possible today. What if—is it okay to think about serving an audience that is not your web audience as the initial touch, or possibly, the forever touch, right?



PARTICIPANT: Yeah, I mean, we would send a notification before we had a story. Which was not ideal. But we would do it. I think it's like, we don't think of underserving as much of the temporality but what is the experience we're giving to them. So thinking of the lowest common denominator of the experience, we have to think about where is this going to make the biggest impact and sometimes when it's breaking news or anonymouses, the biggest news or Twitter notifications, or homepage flush but if it's a major piece, or investigative report that you've had six months TKWORBG it to work on, the exact thing is definitely affected by what is the audience that the needs to get in front of most aggressively. And I don't think we have one answer to that, very much.



DAVID: Yeah, because we are all audience here in some sense but we haven't really think about—we've talked a little bit about the audience experience but literally only one thing but in the seven minutes that we have remaining, what are some of the other things that we aren't talking about with respect to this? `



PARTICIPANT: To that point, I think it's also—I mean, news is a large portion of, I think, what a lot of the people here work on, but, a content management system is also about more types of stories than just news, as well, and I think that's important to remember that, that that can lead into different paths.



DAVID: Is there anybody in here whose system is not related to news? Content management system is not related to news? Yes,. Could you talk about—would it be okay, if you talked a little bit how this is related to your work?



PARTICIPANT: I work for a public radio station that focuses on music and arts programming.



DAVID: And how—well, you're here, so I'm going to assume that it's of interest to you. How is this thought process that we've been engaging in relate or not relate to your work?



PARTICIPANT: Well, I think, you know, you have to—we have to consider publishing to other platforms, and, of course, we want to but with limited resources, you know, it's impossible. So I think we try to focus on what our strengths are. And so, you know, we can't publish to all these extra platforms because we just don't have the manpower for that. And so, I think it's important to focus on the things that you actually can do rather than on focusing on everything, and not doing anything well.



DAVID: Right. So there's a core assumption here that we have to remind ourselves, I'm thinking, that we shouldn't try to imagine this story with relevance to—that all stories are relevant to all places.



PARTICIPANT: Most places that publish news publish a lot of other things that aren't news. Like, a ton of Vox Media's content is not news. There's been...



PARTICIPANT: Vox Media has a lot of animals.



PARTICIPANT: Excluding watermelons, that's not those. But it's produced by the same people on the same platform in the same hour as people that run news.



PARTICIPANT: I run something that's essentially a document CMS, right? Which is sometimes news but...



DAVID: And it is often used in the service of news.



PARTICIPANT: I'm just going to add, there's nothing there about how to make money doing all of that.



DAVID: We have five minutes to solve the revenue problem!



[ Laughter ]



That's true. That is true. And I'm going to put this—wait, we have to put this down.



PARTICIPANT: Also, you never said the word, "Print."



DAVID: Right, we did not say the word print. That's okay. We did not do that. Sedit first.



PARTICIPANT: There's also the question, what exactly does our editorial problem strategies look like and is that part of the problem of why we're having this problem? Are we continually working in outdated modes? Like our social audience, our reading audience, et cetera, et cetera, yes, sometimes they're distinct but they're not that distinct and they expect different things in what we give them credit for. So sometimes if in point is to get out this information and get them to the stronger websites for the longer read, then do that but how can we actually consider the communities that we're pushing into, or are we kind of running into them ahead with the assumption of what they want.



DAVID: That—so this is an example, right? In the context of trying to come up with this talk, the realization—we came at the realization that this is not a technical problem, right? This is a people—this is fundamentally a people problem, right? It's like how do reporters need to change the word? We don't even have a strategy—like if I gave you a CMS, the open source CMSes that ports different platforms. I don't know how I'm supposed to, I don't have a Snapchat strategy. How do you put people in positions to solve these problems that had to the technical tools to solve them? Yes?



PARTICIPANT: Sort of related to that and tying back to the money piece is someone said before about how do you justify the investment in a tool? How do you measure success against, in terms of business objectives, against investing in a tool, or set of tools? How do you show that you're helping the business by devoting all this time and energy into this tool that's supposed to do all these amazing things.



DAVID: Not just in building the tool, but using the tool, like, what's the return on investment on publishing on these platforms.



PARTICIPANT: And how do you do that on platforms that are emergent that your company doesn't know how to leverage in the first place.



PARTICIPANT: And also, it would be the case that you're reinvesting in those tools and you're going to have to do the cut that you did before, or they're always going to be using the latest versions, so even if you're using instant articles, or AMP, you have to use the latest versions in those things because they've proven their value and you want to keep up-to-date on those things.



DAVID: Maintenance costs times n. It's hard enough. We're in a really encouraging place here.



PARTICIPANT: Our CMS has a very young feature that allows reporters to track qualitative outcomes from stories. And so thinking about how you build out a system that, like, oh, your story was mentioned on the floor of congress. This is really important for fundraising. How do you build systems that allow people to understand impact after something's published, and after, like, the bulk of the traffic comes in? Because those qualitative events, especially for big news stories have much more impact than patrons, potentially.



DAVID: Analysis—trying to come up with a centralized pool of analysis, that, among other things reflects impact.



PARTICIPANT: So where does the CMS sit within that broader organizational challenge?



DAVID: You first then... no,. My finger is really fat. Sorry. You first.



PARTICIPANT: So to that point I'm thinking, is that analytics and analysis a third stage after publishing, is that a third moment or is it part of the...?



DAVID: Research... publishing analysis. I'm sorry, my handwriting is bad and it's, like, a minute from being done. Amy?



PARTICIPANT: So to your point about this being a people problem. I think that it is fundamentally a business problem and you have to figure out your revenue model and what it is you're trying to do because we're trying to do everything to everybody and have one solution. And I don't think that that's possible. So, like, this is working the wrong direction. It has to work from what are the business pools. Is it reach? Are we doing advertising? Is it eyeballs, is that through third party revenue, or is that direct revenue? Are we just not going to worry about this? Are we going to look at other methods or other wins and then you build to those models. But I think until we settle on a model, or various models, you can't build a tool like this that, ultimately, serves the good of the organization. I mean, that's just...



DAVID: Right, the question is: Do we bet the farm based on what we—how infected with existential dread are we that we want to bet the farm on all this? That's a good point. We have to ask ourselves if even this is a worthwhile effort to engage in. That's a really good point and question to ask. It is... okay. It's 5:00. We've solverred this! We'll solve this. We have a lot of engineers in the room. This is the spec. We're going to do this. I'm really sorry. I am really sorry that, you know, what we are leaving here are is really—and I've been telling people this over the course of this week, like the last two SRCCONs for me, I felt like I've been ticking boxes off, okay, well, that question's answered, that question's answered. And I came into this talk really overwhelmed because this SRCCON has been about adding questions and concerns and, like, trying to solve problems, and walking out into branches that might actually break underneath me. Like, this is really hard stuff. So there is an etherpad. I don't know if anyone took notes on the etherpad. But —



PARTICIPANT: There's transcripts.



DAVID: There's transcripts, thank you, Stan. You see, there's transcripts, thank you, Stan. But thank you, thank you all. Especially so late in the conference for being so thoughtful and helping to, sort of, think through these issues. I hope this has been useful to you. I'll go back to my Twitter account in case y'all want to talk about this any further. And, again, thanks to—thanks to everybody for showing up, and thank you to Mandy Brown for talking me off the ledge of this talk. But thank you, and congratulations. Great SRCCON!



[ Applause ]


---
layout: 2015_layout
title: Session Transcripts
subtitle: A live transcription team captured the SRCCON sessions that were most conducive to a written record—about half the sessions, in all.
section: docs
sub-section: interior
background: books
byline: Nate Bolt
bylineurl: https://www.flickr.com/photos/boltron/3212284622/in/photolist-5TRNiC-4VkeqM-4VpqGm-4VkcGz-4Vpr1S-4Vken4-fmXRof-2YtFPR-fmHB44-dFxkXG-7yv4t7-4VnnAn-5A3XSn-4Vnnmv-4VnnqK-9uup4n-4Vnnv6-3ViP2v-4VnngF-4VkgVa-4VkeuZ-4Vkg5R-4VpmbC-4VpnDu-4Vk9rK-4VpqRL-4VpsPb-4VpuU3-4Vkf5D-4Vkdj6-4Vk8uc-b1TXEz-4VkhcX-mF5DPa-fmHXAB-r8mgB3-s5i4Mz-7i3R7t-og8qB5-fmXSCf-7i7Ky9-92YNnD-fmHDut-5C51hV-rMM8b3-k639ok-8FDPAB-apFhiP-rL2vRV-4VptiN
permalink: /docs/transcripts/webaccessibility/index.html
---

# Taking Web Accessibility Beyond Assumptions

### Session Facilitator(s): Ryan Murphy

### Day & Time: Thursday, 3-4pm

### Room: Thomas Swain


Hello, everyone, thank you for coming to our little chat today. My name is Ryan Murphy, I'm a developer at the Texas Tribune, and I originally pitched this because it's something that—accessibility—that is increasingly become kind of a bigger focus for me personally. I will point out that I am very new to this myself, and so it's important, you know, as all of the SRCCON kind of discussions that we're having, that this is a conversation. And, you know, I think that the goal for this is to kind of just encourage more mindfulness in what we're doing, and, you know, be sure that, you know we have something that we can kind of take away from our conversation to take back to our newsrooms and to the work that we're doing.

So you know, for me, I've—this past weekend, I actually spent—went home for father's day, which is also my dad's birthday and so I got the one-two there of a father just asking for things, and it wasn't like "it's my birthday," but it's like, oh, you know, tomorrow is father's day. But it wasn't the kickoff for this, but looking at as my father gets older, kind of watching his interactions with devices and things that he's using. One of the things that I noticed is kind of he is a new iPhone user, and just kind of noticing how he had ramped up the zoom like everything was super big on it, and it was kind of an eye-opening kind of moment, because I had always thought of my dad is he had glasses, but it had never registered as kind of a thing, and I never realized. I asked, "What is it like using your phone like that?" 

But it was surprising the number of, like, when people sent him links, he had to walk away because they weren't really made for him to interact with them in that way, and things that were proportionally zoomed, or not proportionally zoomed that led to a page or a kind of experience that was entirely different than what those of you who are creating those kind of experiences expected someone to interact with. 

And you know, I imagine, you know, a lot of us have—probably kind of know of people or, you know, have family members that are kind of in their own varying ways in these kind of worlds, you know, of trying to kind of work with, or kind of trying to find a way to make a lot of the things that they interact with work for them.

So this kind of set, you know, as we're doing for all of these ground rules, we do want this to be a safe space. Accessibility is—by no means are we going to end this conversation with we've got it all figured out. It's tough, and you know, we often end up in situations where we're having the kind of, you know, remind ourselves that these are the things that we need to consider, all of the different elements of understanding how people consume the work that we're producing. And definitely as we're going through this conversation, please, any professional and personal experiences that you would like to bring up, please bring them forward, you know, learning more—the more we learn about kind of what we experienced and kind of singular instances are kind of informing in helping other people think about things in a different way.

So before we kind of pivot into that sort of stuff, I did want to kind of at least do a kind of general overview of kind of the different kind of categories of accessibility. I will stress, by no means are these the only ones, or, you know, none can go beyond having to fit in these four categories. Again, just kind of setting the tone here, and we definitely can branch out from there as we go. 

So another kind of side part of this was that, you know, I think a common, and you see it, I think a lot on the web itself, but at least I know in our organization, it is a challenge when we're trying to kind of be more mindful of accessibility, is that oftentimes it becomes a "oh, well, did you check that for color blindness?" or, "oh, is this screenreader friendly?" Which a lot of times we say that without even fully understanding what that means, but it's kind of like oh, we finished the project and did we label some things, and it's probably good to go. 

And I would think one of the things we would kind of bring out with this as well is broadening that understanding of different kind of capacities and abilities and spectrum of abilities that would go into talking about accessibility. So with visual there's the ones that we think of, the nonsighted users, color blindness, but this also includes people who have low vision or obstructed vision like cataracts. Near- and farsightedness, so their own versions of visual, those of us that wear glasses or contacts, those fall in those categories, as well. Things like depth perception, which, you know, can often come up in a lot of our fascination with kind of adding parallax loading and depth of experiences, these are things that people who struggle with depth perception can sometimes have challenges with.

Auditory. There's, you know, deafness, being tone deaf, being just kind of generally hard of hearing. There's all kind of conditional situations, where I think that it's kind of an interesting element where people being in situations where they just can't listen to something. Where they don't have headphones, you know, there are these elements to it that play a role that aren't necessarily disability-based, but still are factors of being mindful when you're designing an experience that you want people to have in various situations. 

Motor. So these are—these are some examples here of cerebral palsy, Parkinson's disease, these are situations that would make our typical expectation of how someone would interact with a site or with our experience that may not be as straightforward as we're assuming, so this includes that, you know, some individuals may be navigating solely with keyboard because that's the easiest way to navigate, or they special kind of just like keyboard devices that are meant for kind of assisting in these situations. And then there's cognitive. I mean this includes things such as autism, dyslexia, people who have survived strokes and are kind of getting back into kind of the swing of things. These are some of the kind of approaches that, you know, things to keep in mind in terms of when you're labeling things left and right, and when you are—you know, have text that's very kind of tightly woven, that sometimes there's the comprehensive level that has to be kind of accounted for. 

So those of you that hopefully you got to see with the schedule listing where hopefully I was prompting people to kind of bring their, if they had some, kind of accessibility guidelines for their organizations, and kind of use those to springboard kind of talk about how we are approaching those sort of things. So, you know, kind of start with that very first one. You know, how do we—how your organization defines accessibility.

I can speak to an organization that doesn't dozen a great job of defining that, where we're just sort of catching up with being behind and doing the not necessarily doing more important things, but not doing a good job with accessibility.

What do you think has played a role in that being a challenge?

Sort of, underpowered and still depending on things that were built when there wasn't adequate developer positions to do a good job, and depending on things that are old and accessibility wasn't necessarily a benchmark five years the way it is today.

Yeah.

I think one thing that I've struggled with in the organizations I've been in has been, you want, you know, especially depending on who—you know, the higher-ups you have in your—sorry in your news organization, they want to see basically do all these amazing things. They want maps, they want interactive things, they want hover states and you are pressured both on deadline and from your management staff to do some really great visual work but then in that kind of process of trying to do the new cool thing, accessibility, like you said, often it's left out. You know, we installed a color blind chrome strength extension, run that real quick and we're like OK, you know, I've never in my time actually gone out and tested that, like went to an actual like people who have possible impairments and try to say, hey, like, look at my work and tell me, do you understand what you're looking at? You know, none of that has been done. And that's I think the hard thing. Especially in a lot of newsrooms we have deadlines and other things that we're trying to keep up with that this is just such a bottom thing for us which is unfortunate because our job is to educate people and help them learn about the world around them and if we just assume a whole population doesn't have to, that's really problematic.

Although there was—I work at a museum, not a news organization, there was a story we got where a mother brought her Down syndrome to a museum and he gravitated towards an iPad and it made his visit possible, so we don't do much with screen accessibility, but we're not leaving it all on the floor.

Is anyone from an organization that has kind of more formal kind of guideline for this? That has it within their workflow when projects come up?

Not anymore, but I worked at the U.S. Department of energy. But it was so funny about it, was that like we had accessibility guidelines but really it was what we've already discussed. You know, you run it include the color blindness checker, you you put some priority rules in your HTML tags and you say we're accessible and there's no verification that people could actually interact with this thing you were creating who had a variety of disabilities, so you know, there was a stringent requirement, but it was in name only, and that was pretty disappointing.

Does anyone work at an organization that has a screen reader that they can test their stuff with?

So I used to work for --

For the stenographer, can people be introducing themselves and—continue, sort of...

Tchad Blair, I'm from DC working for the American Chemical Society. I used to work for the EPA as a contractor, so we had a lot of checkpoints that we would go through but we really didn't have anybody that tested. We did have a screen reader, we put it through, it worked, but you know, that was it. We never really got much feedback on whether stuff was working or not.

I work at an organization where we have interns and I have to teach young people, you know, basically HTML, right? And often they ask me what the ALT attribute is and what's interesting to me is the fact that it's optional, right? Without it it works, with it works, so I catch them sometimes not putting it, I catch myself not putting it. I try to make sure they actually put it, but I think what's interesting to me is accessibility do you care about it is a complete option, especially when it comes down to the code itself. You know?

That's very true. I think it's interesting, you said it was the US --

You said Department of Energy.

EPA.

And are the kind of—are the departments different in that situation? Like there are some in those situations is an ALT tag optional?

Well, in my experience, so working for the EPA, it was a requirement. But the metrics for determining that requirement weren't really that stringent. It was like oh, is it accessible? Yeah, yeah, but you know, it was a few years ago, but still.

Yeah, there's an accessibility officer who kind of gave it the code a once over and made sure you had all tags and that was kind of it.
   >>

So we kind of drifted into all three of the questions at the same time, but you know, I think that to kind of pitch it to the next one to some degree like what, you know, you know, what do you feel—and this is an open-ended question to everybody kind of feel like your organization is doing well in these regards, is I've been hoping it's not "Not much" but --

>>My current organization, that the first step is having a plan to put it in place. So that's where we're at now. Beyond that, I don't know.

One thing I've tried to do is just try to educate myself. Like things like REL roles, I put them in but I didn't know what it was or why it mattered or who used it so I actually tried to learn a little bit and I think that's an easy first step a lot of people could do is just educator self to see what these roles do, and an interactive project that I recently finished, I just had discovered a tab indexes, so being able to navigate part parts of the interactive with the tab key, right? And that actually really changed what I thought about layout. If someone was browsing this completely from the keyboard instead of using a mouse and clicking, what kind of adjustments would you make and that really blew my mind. By reading some literature and actually just playing around it really changed how I kind of wanted to approach my next projects. So that's something I've tried to personally do, but the organization that I'm in, both the one I was at and now the one I'm at now, there's no standard for doing that you know, again, kind of the standard does give to me is do cool stuff and how you achieve that is on you, but accessibility has been kind of secondary. Well, it's absolutely secondary.
   >>

I have a different sort of question that goes along with all of this, and that's at your organizations, you know, how easy is it really to kind of manage up with this stuff, to be able to go to management and say this is more than a check box that we do at the very end? You know, how did we include this more as a fundamental part of the workload from you 0 know conceptualization through design, through all of that? Are your organizations good at doing that for other things, just not this, or sort of kind of everything?
   >>

I think one approach to this is the fact that accessibility the guidelines it's almost due diligence. A lot of these things are going through dotting your Is and crossing your Ts, so I think you can start to have an implementation where you just establish those things as part of the requirements. It's really just to deal with this you do this, this, this and that, a lot of times things get forgotten or skipped because it was just, you know, you just don't do them. But --

I guess what I'm wondering is how to make it also more of a management priority so that if there are other developers, people who get hired after you, that it stays you know, sort of a legacy part of the organization.

Yeah, go ahead.

Management why should they care and so the why should they care part is if depending on the industry you are in, there are legal requirements, you know, that require closed captioning, European standards are if any of your is something subject to the European Union, anything that involves you can get sued if you don't do this tends to make management listen. And then from the basis of how to make this as easy as possible, it's also when people here accessibility, they think this is going to be expensive, this is going to be hard and so you need to establish what is the baseline that we can start doing, who's going to be responsible for that and how you build that into different kinds of workloads, and we started in our organization the accessibility by—[inaudible] that was like a very easy thing for us, to tell people hey, this is why we're doing it, and now we have people asking us, like hey, we want to do the same and how do we make it accessible? Like they no longer feel it's going to be too hard. Because we've made it lots of different levels, we make all tags a natural part of the image. And so if you are in a position where you're a developer, think about how you structure your tools to incorporate accessibility rather than something that has to be added on after.

I have something along with that, I work for a video organization, and we had never thought about doing video descriptive services until a funder's daughter was blind. And when we went to the web developers, we pay them as a fair contractor and so in their budget they included a line item for a specific area of the content management system that would be responsible for all this and aggregating it and all these kinds of things, so going forward after that project they always had that in the budget so it's always there. So everyone we work with in our organization we say do you want this because we've done it before.

Yeah. Could the three of you identify yourselves, sorry? I I'm doing a poor job of reminding.

My name is Stacy, BuzzFeed news.

Sanders, I'm an independents journalist.

And yeah, I think that that is kind of is you're all kind of touching on there's certainly kind of a threshold of, you know, you're kind of speaking to the video transcriptions like there's almost these triggers that kind of come across that suddenly make that a thing that's kind of kept in mind for kind of future projects. I think to your point, at least again we're at the Tribune we're trying to really catch up on this, as well, and one of the things that we've been trying and I cannot take credit for this, this is definitely a lot of things that we've been trying. I've picked up from an article, it was in a list apart by Ann Gibson, that kind of working these scenarios into when your projects would lend themselves to kind of having user stories or personas, they kind of work those kind of things in there, so we're doing it on a very basic level but kind of trying to keep those things as variables that play a role in those user stories, so it's not just this person wants to do this, it's this person wants to do this, and they, you know, they have trouble with bright scripts or something that, you know, things that kind of intertwine that mindfulness through that process to kind of try to make it be less of a as you were kind of making a point of an oh, by the way, did we do this? And so far it's OK, but it's been kind of our swing at trying to kind of keep that going.

I have a question for everyone is like how do you see accessibility faring in a world where, you know, journalism is working more and more towards interactive. A lot of it is challenging I mean if you're color blind and you have to see a data visualization, I mean turning that into something that even a screen reader could read, where do you see it going moving forward? Especially since I don't think interactives are going to stop any time soon.

Along those things a thing that I struggle with—David Yanofsky—is, you know, how before you even get to the interactives, how do you get to the things that are just inherently visual? How do you—how do you write a sentence in han article that is maybe in something of a BuzzFeed style where I can't believe this has happened and you put a GIF and you have to put the ALT tag of animation I can't believe this happened face. I mean it's—is this me—as someone who doesn't have these impairments I find it very hard at times to understand how to best describe the things for people --

But I think that's an issue with diversity in the world we live in. Like we don't have, you know, like my job, even where we're very diverse like you know, in terms of like gender identity and like racially interestingly enough, we don't have anyone who's like either deaf or blind or might have some sort of impairments that could help us in that they could probably do a lot of the jobs that we do, right? So then that comes from, I think that question comes back around to like a core problem of how do we integrate, you know, people who may have some of the impairments and users, right?

I think—Justin. One thing that changed me is this is a safe place. I used to play online games, old school I guess but I actually found out I made a lot of friends through that and a lot of blind people can play text-based games but you can't see World of Warcraft or anything like that. And I asked them like hey, can you check on my site and they'd say sure and I could ask them, is this helpful or this or this, and just getting some user feedback and I know we have users out there who have accessibility problems and so taking the time to find those users and establish a relationship and they could probably help signal to you like yeah, these ALT tags in this single context might be important. Or this is ha good way to craft those ALT tag. One thing I never thought about about using colors. This is a blue this, I don't know what the concept of blue is. They know it exists. And sometimes things we wouldn't even realize are—that are difficult so I think going to the user and finding some users that you could ask questions to and incorporate that feedback.

Greg from the Washington Post, and I piggyback right on that. I mean I think that user testing is something we don't do enough of in the newsrooms. I think maybe it comes from the fact that we, you know, make a lot of decisions all day about what's, where to place this or you know, where to highlight that and so we do a lot of shooting from the hip and I think when it comes to, you know, when it comes to UX, there's a lot that you can learn from you know, talking to users, different users, people who have different sets of eyes than yours who can see things threw different perspectives, so you know, in thinking about that, this is a really important—a really important thing to also include when you're thinking about that, not just people who can, you know, see things from different—at different perspectives in the world, but also from different perspectives of experiencing your content. How does that work and how can you create something that works for the widest swath of people possible that you're able to communicate. How do you communicate your story that the maximum number of people in your audience can experience it and experience it well?

And how do you build that into a system so that when you are working on tight deadlines that is still something that you do. It's as simple as you or one of your coworkers listening to the ALT tags after taking your glasses off. I would probably have a very different experience with a very different understanding especially knowing what I was supposed to get out of it, but it might just be running down the hall, grabbing somebody, saying sit down in front of this machine and take your glasses off and tell me how this works for you.

One of the things that's interesting about this conversation one is I'm old enough to have been in a newsroom that were trying to transition to this to online. They were having exactly the same conversation, I don't know how it's possible to tell the story in less than 750 words.

Like the New York Times for turning off the ability to see its home page internally. Like yes, these are things we should be doing, we should also be doing that for accessibility testing. That goes back to the fact that there aren't enough people in the newsrooms that care. so it's not even to the point that we've made this interactive, now what do we do for color blind people, it's now how are we specifying it and are we even aware that there are color palettes that you can use by default that are friendlier to people who are color blind.

And just you know to kind of point out, too, a lot of these conversations we're having are still very kind of visually focused and so there's even you know taking these things into account, there's, you know, we're kind of basing it on an interactive experience that uses color, but there's audio in that slideshow. If there's, you know, if there's a specific interaction that's expected to, you know, progress through this process, is that something also that we're being mindful about?

You know, that's funny, because I'm thinking about the design perspective. You know, when I build for a front end and I want to make sure it's accessible in all browsers and all devices I built for mobile first and I was thinking about that concept. And I think that could also be something, like you build for thinking whatever impairments, you build that first and then you work from there. You know, that's something that's one, entirely doable, because you'd have a skeleton for something that works for everybody and you can build up from there and have different versions or whatever, but again, it's not the same issue, but we did it for mobile, because mobiles now are everywhere, but you know, everyone still has a laptop, right, so you can—we also kind of think about it that way, as like a design thing, right?

So I was thinking that same thing, that of the mobile we do something different. My problem I'm having now is I know like with mobile I can maybe I can close my eyes but we're' not going to explain every interactive to someone who's blind so I don't know how to find out what's the best way. Like you have your user base. I want to see interviews of people explaining that, what do they need, how can we reenact it, what should we focus on? I need more context and I need to talk to people or find out more.

I have a hashtag, it's ALLY. People share a tons of resources on there. Make guidelines for sort of accessibility for dummies is the way I've seen some of these things phrased, just an introduction to the conversation. You're not going to solve every single case in every single story or every single interactive. But how could you serve your existing audience better.

Could you repeat the hashtag? Oh, #ally?

a-eleven-y. 

A11Y, yes. And I think this is kind of one of the things in journalism school that we concentrate on hard problems and easy problems and that's an easy.

Thank you.

And I think there is, you know, tock back to kind of the comment about building interactives, there's also ways to do this that sort of serve all your audiences, so I used to work at the Chicago Tribune and we redesigned our site, instead of having—we showed some graphs but one of the things that we added was sentences based on the data, so writing these little bits of sentence. Crime is up X amount since last month, and so that sort of an accessibility one and then somebody from our editorial board, a lady in her 70s came and said I would like to show my friends on church—there's another kind of different accessibility issue—but she said the damn thing won't print out properly. But it turned out that it was really easy to write a print style sheet especially because we've taken out some of the interactive elements and turn them to text, so once we did add a print style sheet we were able to add it to something. It didn't work in Internet Explorer still, because of the style sheet. So I don't know, there's ways to think about your interactives that aren't necessarily interactive that can broaden accessibility and serve your audience better generally.

Is there a way to think about it that's, you know, like a news organization that does an important story about a non-English-speaking community, they might do a publish in that language, is there a way to start with how do we make this experience the best for someone with any sort of disability, has anyone seen anything that has been made, especially in the news context, especially for someone with an impairment, and then from there taken it to people without impairments?

Next year in Jerusalem!

I think that's a great question. I think that, you know, we've kind of touched on a couple of elements on it. But, you know, I think that in some capacities there is a kind of a due diligence kind of part to it, that, you know, we know, in some newsrooms we need to test this on an Android phone because everyone has an iPhone in our office. And we never look at that. We know we should look if it works on an iPad. And you know, I think extension of that, you know, could be, you know, I think a lot of, our approaches are—and then again giving this kind of credit to Ann Gibson in her article, because she kind of mentioned this, as well, you know, approaching these things from a kind of input-output kind of approach, so kind of like what you were saying about the—you know, you happened to turn a tab around, you were essentially testing the keyboard friendliness of your site. And kind of thinking of these things in terms of, you know, what are the different ways that someone can interact with this? What are the different ways that someone can get feedback from this, and how can we serve all those needs?

I have a question. Does anyone know? Can you specify like, you know how like you can do browser snipping, so if someone goes to your site on IE8 you're like whoa, download Chrome, please? Is there a way that if you know someone is coming to the site on a screen reader, is there a way to do that? Because I'd love to say hey, I don't know how to design for accessibility, contact me.

I mean don't make them do work for you. 

I mean some way to know your audience. We shouldn't expect them to come to us, you're right, and do the hard stuff for us, but I'm curious about some way to say, hey, at least we're trying.

That's an interesting challenge. I know in my situation, I've had that conversation and like, well, are people, are people who are blind even looking at this? And like, well, we may not be making it for them, so probably not. Totally believable that they're not coming to it, because it's not suited there.

To Aaron's point, so it is possible to visually hide it, but still have the screen reader read it. I've seen that done.

Alan WSE. Yeah, I think it's a visibility property CSS thing you can do it with. I'm curious, is there numbers or Analytics as far as like does Google Analytics have screen reader? How many people are seeing my site through these impairments, how many potential people are going to come to my site with these impairments, and then can I make that tradeoff of how much to invest? You know because at some point we say we don't want to support this browser, IE (clears throat).

But we give some amount of effort to make sure they have the experience that may not be perfect, right, but will hopefully let them get some information from it, so I don't think it's like a binary thing, like a person that is blind can totally read this article. You know, it may be that somewhere along the spectrum and having numbers to be able to make those decisions would be awesome.

I think Analytics brings up an interesting point, too, because you can measure, you know, behavior and where they came from, but you can't measure their experience without their direct feedback in some way, so how do you do that without, you know, being intrusive and having them sort of do too much? How do you avoid asking them too much and where in the process do you try to do that to account for, you know, that future experience if you want to be clean and work for everybody?


Lauren Liberty from the New York times. I think we haven't done user testing with the blind community for a long time but the last time that we did it, we had a general site survey up on our site, and one of the questions was something along the lines is do you identify as a person who has visual impairment and then we asked for visual acuity and we did one-on-one interviews with them to talk about their experience, so.

Russ Gossett, NPR and we're testing a player, an audio player, and we grabbed a guy, a very general screener, didn't even ask that question, do you have any impairments. He came in, we gave 15 minutes to each participant. Certain amount of time, it was a very simple test, but he spent about 10 minutes trying to get his browser right, to the right level of zoom, to the right level of this, and we're like no, no, we're not testing that, we're testing that player and he's like no, but this is what I do at home. And it wasn't until the end of the interview that we asked do you have any impairments and he was yes, I actually do, I'm quite blind. That's why you know, he was wearing thick glasses, we couldn't really tell. But asking a bit more about who you're actually testing. But maybe this guy wouldn't identify himself as an accessibility reader.

Yeah, and I think that that is kind of what you brought up, I think it is an interesting, you know, you know, there's kind of different approaches there in terms of, you know, kind of as a question to kind of pose, like should there be a threshold of a visitor, in a you know, makes it so that that is something that needs to be accounted for, or is that, you know, or is that kind of, you know, running the risk of, you know, like do we want people in a position where they kind of are proving their, you know, access to your content?

Yeah, I wonder, too, though, I mean there's like my name is Tom Meele from MinnPost. There's this principle of universal designs. After the ADA they started putting more ramps in buildings and that helps people with wheelchairs but it also helps people with handcarts and bikes and --. Is there a sense that building sites with accessibility as kind of a base standard makes you design better?

Yes, basically.

Yeah, so like cleaner, and so I don't know. So that's part of the selling it to management, right? Are you just building better? Does it force you to not sort of take shortcuts, I guess, with design?

I mean we're talking about people, right? We're not talking about browsers or—these are people who, and if we're in journalism we're supposed to be serving people, however like highfalutin' you want to get. So when we're saying things like tough luck people with X that is a conscious or an unconscious decision that you're making so I think at a minimum level we have to think about either a random sampling of there are publicly available stats in general you are serving this community, this percentage of X community is going to be visually impaired or deaf and if you are deciding not to do anything about that you're deciding not to serve that part of the community and we can't sugar coat it. Either we're doing it or not.

One point is I think to find users that have some of these use ability issues. I was at a conference last week forage isle and one person said you will never prioritize your backlog the same once you meet your user in the eye. And once you talk with someone and experience them trying to use your website and navigate with a screen reader or something like that, that will change you and you'll say OK, you'll want to say OK, I know I can't solve every problem under the sun but I think it would mean a lot to users where they can tell that they can tell that they put thought into the usability to the site and it may not be a hundred percent but it makes a big difference. You'll get other benefits, as well, from it, and that's where I think you know, finding users, because they're definitely out there, they're not one in a billion or you know, they're like one in 2,000 and if you have, I'm sure most of us have websites that we all, I'm confident we all have users who have these issues, and so it's just keeping them you know, aware of their experience and accommodating for that.

I have a question sort of another accessibility category, do we consider really slow data connection as part of accessibility like on a phone because that's more than anything else we hear performance is part of that. Just wondering, add it to my list.

Facebook considers it that.

I no Facebook, they do it on old blackberry phones, web browsers?

I was at a conference a year and a half ago or something, and one Facebook was talking about. They made some conscious decisions to make the top of their page load more slowly so that people with slow browsers could see more sooner. If it's something that all has to live on one screen that's different anything for scrolling, they reprioritized even at a time they were trying to increase page load across all their products, to serve the first pixels faster even if it meant page load time went up.

Did they even, recently I read that they have an alternative page or something for if you're in certain connection area, like they load an entire different version of Facebook, which is lighter, basically and lighter to load for everyone to have access to it.

I think that came out of the same project.

There was a really interesting YouTube blog post where they made their site faster and they found their numbers skyrocketed from page load times because so many people could now get to the site from countries where internet access was almost nonexistent, but they lowered the barrier so so many people could get to the site and the page load time went from 2 seconds to 8 seconds people were getting to it from Kenya.

Is this a problem that specifically page load times for people with very slow connections, it's kind of under the assumption that all of these people speak English? Like when it's Facebook or it's YouTube, these are platforms that are designed for people that speak many languages, I think most people in this room work for English-language publications.

So you're essentially discriminating against anybody like one of those --

I'm not saying that, but I'm saying there's a certain—the primary user of many of our sites is not as disadvantaged as I think this conversation has just turned towards.

I was going to mention that. Sorry.

And which also brings up the point of like this does come a threshold where you need to decide where you don't support things. You don't support IE6, right? You don't support people who don't speak English, I mean—and I don't know where that line is.

Well, there's a difference between, you know, not supporting it, and accommodate it go in some way, you know. You know, if you're getting those first pixels will served faster but page load time is longer you're doing something that affects all of your users potentially in a positive way but you're happening to also by doing that accommodate these people who, you know, have dialup or just really slow data connections.

I think it's important, too, and kind of goes to the question that you brought up, Sarah, that you know, and we had brought up earlier about these are all people. And you know, like for example the kind of like internet speed, that's a metric that—that's a technical metric. That's not a metric that's, you know,—it's tied to the individual, but it's not tied to you know, a you know, up to the spectrum of their ability to access something. Or to understand or to see or hear something. So you know, I think that one, you know, pass we kind of with almost three minutes left here, kind of an encouragement to kind of think about as we take some of this stuff back to our newsrooms is really kind of thinking about, you know, again, kind of this statement of always kind of remember that these are people that, you know, are wanting to interact with what you're doing and what you're creating, and, you know, that, if we're—we're willing to kind of take that approach of, oh, we're going to slow handle the slow internet connection or we're going to handle the Android tablet, but you know, kind of also be mindful of you know, handling the, you know, the person that can only use their keyboard, and handling the person that can only consume a site with their computer speaking it to them. Because you know, I have no stats to cite, but I think that it would be interesting to kind of find out, that, you know, the of people that fall in some of those categories may be higher than these people who own Apple watches, for example, so that's a very easy one to pick, but so thank you, everyone. I think this was a good kind of conversation. So appreciate it.

[session ended] 

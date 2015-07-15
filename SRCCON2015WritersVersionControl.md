---
layout: 2015_layout
title: Session Transcripts
subtitle: A live transcription team captured the SRCCON sessions that were most conducive to a written record—about half the sessions, in all.
section: docs
sub-section: interior
background: books
byline: Nate Bolt
bylineurl: https://www.flickr.com/photos/boltron/3212284622/in/photolist-5TRNiC-4VkeqM-4VpqGm-4VkcGz-4Vpr1S-4Vken4-fmXRof-2YtFPR-fmHB44-dFxkXG-7yv4t7-4VnnAn-5A3XSn-4Vnnmv-4VnnqK-9uup4n-4Vnnv6-3ViP2v-4VnngF-4VkgVa-4VkeuZ-4Vkg5R-4VpmbC-4VpnDu-4Vk9rK-4VpqRL-4VpsPb-4VpuU3-4Vkf5D-4Vkdj6-4Vk8uc-b1TXEz-4VkhcX-mF5DPa-fmHXAB-r8mgB3-s5i4Mz-7i3R7t-og8qB5-fmXSCf-7i7Ky9-92YNnD-fmHDut-5C51hV-rMM8b3-k639ok-8FDPAB-apFhiP-rL2vRV-4VptiN
permalink: /docs/transcripts/writersversioncontrol/index.html
---

# Merge Branch—Imagining New Version-Control Systems for Writers and Editors

### Session Facilitator(s): David Yee, Blaine Cook

### Day & Time: Friday, 12:30-1:30pm

### Room: Ski-U-Mah



We're going to pretend to start.  I've been late to every session so far, so I'm just kind of letting other people be late, but then I realized, like, we have a lot of work to do.  So OK, first just so we introduce ourselves: I am David Yee, that's my Twitter handle (@tangentialism).  I work at Vox Media, but before that, I did the engineering for a product called Editorially, which was a collaborative writing application for writers and editors.  It was the only one of its kind except for ...

Hi, I'm Blaine (@blaine), and I work on Poetica, which is a collaborative writing and editing environment for editors.

Yeah.

So we've done a lot of thinking about this, but I want to find out what you guys have done a lot of thinking about, so I'm going to do sort of standard SRCCON role call, so everybody who's a reporter, could you raise your hand? Editors, raise your hand? Developers. Oh, my.

Designers?

Legal people?

Anybody who did not raise their hand? Response?

Oh, Bernard, yes. Bernard. Bernard is an asset. You will all want Bernard on your game. OK.

And who among you uses version control on a day-to-day basis? Raise your hand. Who among you has used git in the past. Put your hands down. Who among you understands git. Um, OK, all right.

And who doesn't use version control on a day-to-day basis?

And who doesn't—sorry, what was I going to ask? Who doesn't know what git is or understand git?

OK, cool.

That's good.  Sweet.

OK, the first in the spirit of telling you what you're about to do, before you do it, we're going to start with an almost comically high level review of version control systems and then we're going to break into a couple of sprints where you guys are going to do some imagineering, and hopefully we're going to get out of here in time for lunch.  

So this is not an inaccurate representation of source controls.  So the thing, I mean I think the place that David and I are coming from in common is—this introduction can be shorter, because we've got a lot of knowledge in the room—but basically version control systems are super, super new.  We just looked it up and sort of the first modern control system was RCS and that was created in 1982, so you know, they're brand new technologies, and I think Word's track changes was something like '92, so you know, they're a relatively recent convention, and, you for example the ability to reason about you how a document has changed in sort of a computational way has been really, really developer-driven, so I'm going to see that there are some designers in the room.

It's something that, you know, you take an algorithm and you say, "hey, I can tell what's changed between these two pieces of text," and you kind of run with it and you just use the software, what the software gives you, and there's not a lot of design that's been applied to that.

So, yeah, it enables a bunch of things, like we can, you know, fast-forward to now, sort of since 2005, so ten years we've had git and now things that ten years ago you would verge on getting fired for suggesting, like "hey, everyone, let's operate on different branches in our code base."  You know, that was insanity, and now we do it all the time.

So there's, you know, there's this massive change that's happened in code bases.  But we haven't seen that same sort of change happen with writing.

And this chart is important for today's talk, and for your experiences, because Blaine and I and one of the members here who is going to be to be a secret asset to whoever gets her, were sitting around last night talking about version control and how mind-bending it is, and those of you who have actually implemented version control systems will understand.  Blaine and I realized yesterday that each of us, for the last four years of our life, have really only thought about version control.  As a developer, I stopped thinking about anything else.  You end up getting into a hole very quickly.  So the conversations that we're going to have are going to be very high level and you shouldn't be bogged down in details.  Look at what happened to Marty.

And despite having only thought about version control for the last four years, I certainly still suck at it.

Yeah, it's yeah, I don't even want to talk about it. If you used Editorially, you know.

All right, so just a reminder of why we need version control as writers. Obviously the resilience of your work, so being able to say, "I did this, and even though I deleted this text, it's still around, I can still go back to it," it kind of speaks to invertibility, being able to do and undo changes.  Being able to track changes, to collaborate, all of these things came in really handy for coders in the course of the last 30 years.  But they are probably even better suited to writers.  Blaine already talked about where they came from, so, you know, RCS, Subversion, git, a lot of stuff that's all for software, it might be interesting to talk about why these things—let me see what time it is, why these things came into existence when they did.  I have a theory that all these pieces of version control software came into existence to reflect a change in the way that we work.  Git reflects sort of a much more remote open source culture, git exists because of open source, there was no reason for subversion to be able to work on multiple repositories with multiple people working on it because everybody was just working on, you know, they were working on Windows, they were like, oh, I have to develop Windows with the 5,000 other Microsoft engineers.

And similarly, so that there's—I think that the version control system that we use for text a lot of the time is called operational transforms, it's different from git, because git has a very sort of developer, again, a very developer-centric view on the world and it makes a bunch of assumptions that you're working essentially in a world that is friendly to developers and not so friendly to writing.  Operational transforms works on text much more easily.  It's really complicated.  The first academic papers came out '89, but we didn't see the first software that sort of took advantage of that until basically subethaedit basically around 2003 and I remember at the same time a friend saying to me, when Google maps came out and the first ajax stuff started happening, he was like I bet you could build a basic subethaedit and now we've got Google docs and that sort of thing but it was that collaboration on the web made collaboration on the web possible so we're starting to see the fruits of all of that.

And most of the collaborative text editors, I'm assuming that fewer of you are familiar with operational transforms than with git.  Most of the cloud based editors use some form of this and it simply says, the client says I'm going to type the character A at position 5 in the text and that's what gets sent over the wire and the server is able to infer what the full structure of the document is based on that.  When you first hear it, you're like "this is a great idea.  I can get really granular changes, I can build sliders", but then once you start building it it's really just like a raft of tears.  Raise your hand if you have used or implemented an operational transformations algorithm.  Sorry, Blake.


And so there are libraries, like share JS or OT.JS that you may have encountered.  But that sort of and if you've used Google docs, then you've used operational transforms, or Google wave.  And you talk to the Google wave developers, they'll tell you not to do OT so this speaks a little bit to what's broken.  So we talked about why, so developer-driven version control systems are built for developers, not for writers, most of them assume that conflicting changes can be inferred from whether or not the same line of a document has changed, which is great for poetry, but it's really, really bad for long form text.  Operational transformations are great, because they do character-based changes, but there's not a lot of—it doesn't tell you anything.  It doesn't tell you, oh, I changed, you know,—I changed some part of the, you know, the vice president's biography for this reason, it's just sort of like you changed the lower case J to a capital J.

And I think if you—I mean I think the place that we both start from is if you look at the sort of the workflows that git promotes, you know, anyone could put up their hand and said that they used git has probably resolved a merge conflict, and similarly, anyone who's sort of heard the promise of git as sort of the future of writing, and, you know, have worked with writers or was a writer who picked up git and said I'm going to use this for the future of writing and then encountered a merge conflict, just like table flip, right?

[laughter]

So OK, I'm going to go back to notepad now.

And so it's those sorts of interactions that I think we're really interested in.  Like, how do we solve those problems?  And operational transforms by themselves don't resolve those sorts of merge conflicts, so you know, if those things happen when—if you're connected, if everyone who's working is connected, they're great.  But as soon as you have people who are disconnected for a little while, or you know, just doing something weird, like deleting a whole bunch of text, things can happen that don't—that don't make sense to the people involved in the writing.  Like how do we express those sorts of interactions in a way that's understandable?

So in order to sort of understand what—what we need to be thinking about as we sort of invent on a very high level some new paradigms, we want to talk about some of the properties of version control systems and what they sort of provide. [Slide showing original cast of Iron Chef] This is left over—I did—I didn't do another talk about Iron Chef.  I was going to tell a whole story about that.  So here's what we're going to talk about today.  There's going to be two sprint sessions and we'll get to what they are.  There's a lot more to version control than this, but we're going to constrain it to these topics: granularity of change—so what does a change constitute as a writer, especially in a newsroom and we're going to be talking a lot about news—so what does a change represent?  Character, line or a --

Resilience: Imagine if you stored every change over the course of working on a document for a year, what does that storage look like? What do you want to be able to excise?  Collaboration: how collaboration and merge deal with conflict resolution, locking, things like that.  Authority: so both crediting change to the correct writer and also maybe not to the writer when it shouldn't be or not to the editor when it shouldn't be and also in terms of who's allowed to do something, permissions and authority.  And then visibility of change: Both inside your organization, inside your newsroom and to your readers, how does your version control system represent change in a document outside the context of your editor?  So this is what we're going to task you with.  Many of you, though not all of you, have sticky notes on your tables.  And they all correspond to some of these questions.  About granularity, resilience, collaboration, authority, and visibility of change.  If you are not at a table with stickies, join forces with another table.

And choose the topic that you're most interested in.  You basically are going to discuss this for about 15 minutes and we can help you out if you want or you can just go ahead, and there are a lot of people here, so if you need to split into two—each one into two tables or whatever, do that.  And basically I would just want you to talk about these things that—the ones that interest you, for 15 minutes and then we'll come back and do a quick report back on those different subjects.

Is this granularity or visibility of change?

Oh, sorry, yeah, screens.

That's granularity.  Orange is visibility of changes.  Sorry about that, screens are weird.  Yeah, so don't feel you are tethered to your table.  But it does mean you will have to pick up your laptops and move to some other table.  But basically talk about this from the context of not just version control systems in general, but as writers. So granularity:  Answer the questions—what is an atomic change in your version control system, how do you create a change, how do you roll back a change, and what is the story you want your document to tell about how it came into being.

For resilience, how much history do you need to store, what kind do you need to store and what changes do you need to keep and which do you want to dispose of?  Do you not keep secrets, for example.  Collaboration will be: how does your version control system manage collaboration between users?  That can speak to locking, it can speak to simultaneous editing, whether or not as a writer you're more comfortable working in secret, you don't want somebody staring over your shoulder as you type.

How do you resolve conflicts.  Here is a brain melter.

Do you want readers to say, oh, David changed this fact because it was incorrect, something like that, and how is that visualized internally, as well.  Developers historically have done a horrible job of visualizing change.  How would you do that?  So find a table, we will revisit at 3 minutes after 1 and then we'll talk about that.

[group activity]

Just a reminder, you can start writing down little points as you talk. It can be too many points, it can be too few points, but just something to think about. Post it up here on this board when you're done.

[group activity]

I know that you could all spend hours talking about this topic. Four years of your lives would be what we're thinking, but we've come to the end of this 15-minute process, so get some stuff done on paper, and then everybody from each table will nominate somebody to present their scintillating findings.

OK, everyone ready? Let's start in the back.


This works.


Announce your concept.

Our concept was visibility of change. And let's see, I think most of our conversation centered around how this is going to depend a lot on granularity. That potentially you wouldn't want to surface everything, obviously, so we talked a little bit about similar git concept of like version tagging, and maybe that's, you know, where you almost like bundle up public releases of a story, which introduced some—brought up some conversation about you know, what that would allow a reader to do at an interface level, almost like diffing two stories and you know, seeing that, or also just like what the wire services do with their little write-through messages that come across, you know? Something like that.

Timing of when did it --

Yeah, do you want to just --

Yeah, there's sort of general consensus that there is a period before publication which those changes should never be surfaced.

Good job. Already a group has decided they can't do work without talking to another group. You want to pass it over to pink's authority?

We grant you the option.


OK, so we've riffed on a lot of things.  I'm not sure we have a central idea.  So I'll just go over some of them.  So we talked about, let's see, what authority was, and—oh, yeah, yeah.  So does authority reside in a single owner of content at an organization, or can it be delegated or is it organized by teams?  We talked about, yeah, who owns a particular piece of content.  Is there a single owner?  Can there be multiple owners?  Can authority be delegated?  We actually talked about organizational structure in a newsroom and how authority would mesh with that.

I just began assuming that there would be a corporate structure in authority would radiate from the top and kind of go down a tree, but then Gabriela, right?  Mentioned there are other models of organizing media companies where there was shared responsibility or consensus decision-making in which case that model doesn't really apply.

what else did we talk about here?  Public authority, what can a reader do and how can they contribute changes and how are those changes merged?

We also spoke briefly about what the different models of version in general and how authority applies, you know, in things like GitHub anyone can make a change and then authority resides in the person pulling the change and then merging it and then different systems operate differently, so we'd have to choose some kind of model there.  And then for public changes, is there an anymority?  Or can you delegate authority or proxy?

You need to be able to --

You can't just have one level of membership, you have to be able to have teams, essentially and teams have to be able to remove their own members, so you can't just have one giant team for your whole org, so that your team can govern itself and have a sense of ownership basically.

We also briefly mentioned what happens to the authority of someone when they leave? who inherits it? And obviously if a reporter leaves, all their content stays, usually, and who can then modify it?


Cool.

Anything else anybody wants?

So that was a lot of questions and no answers, but there you go. Yup.

All right, granularity. Yellow is in front of you.

All right. So when we were talking about the granularity of changes pretty much all of our discussion ended up revolving around intent, because it became increasingly clear that granularity in terms of types of text wasn't really what we should look at, right? Some character-level changes are really important, but some changes are actually sentences moving or disappearing. And those aren't just sequences of characters. So trying to figure out what you mean when you change the case of something, or add a couple of punctuation marks or what have you. So we went talking about two different hierarchies, one of those was the hierarchy of the like structure of the text, right? You've got a story, you've got paragraphs, you've got sentence, you've got words or phrases, you've got characters. And the other was the hierarchy of the intentions, right? I changed this paragraph. Those changes included renaming this person, adding these quotes around one sentence, so on and so so forth which got into some really weird UI issues and we didn't resolve any of them.


Awesome, blue behind you.

I'm very pleased by the idea of a hierarchy by intention because building authorial intention into the software delights me to no end.  We were resilience, and again we came back to how deeply connected resilience is to, in our case, granularity, all they probably other questions too.  One of our post-its says "This shit cray".

I think we have needing taxonomy to understand the change.  Some changes are because the level of change kind of determines how long you want to keep that thing around and how much you want it articulated in the software.  Some changes are just copy edits and you don't need to keep them that long and there was some question of whether you could programmatically choose character edits?  Some changes, though, are sentence level and then there was a discussion of well, can you even pay attention to one paragraph changing through the document, or is that so complex, because what even is a paragraph from the beginning to the end, and by the way, in a news story, like you're moving sentences around, the holding is really tight.  That seems like a challenge.

[laughter]

We were also talking about making taxonomies to change. Some taxonomies are already determined by the newsroom because they're tasks which are distributed throughout, like, newsroom labor division, so you do have the writers who can make a lot of different kinds and then feature editors who are usually making structural changes and copy editors who are coming in at a different part of the process and that could tie to authority. But in a smaller newsroom this really breaks down and that was another question we had. Am I missing anything?


Well, I think we were all a little dissatisfied with purely chronological change histories. We talked a lot about Google docs and how well you can't even label those revisions so it's basically --

It's a truly inferior writing experience, I think we can—...


[laughter]

Yeah, so if you could—it's almost like a commit message on certain revisions and there are certain revisions that you might want to look back at and compare to the current revisions and certain revisions that you never really want to look back at, so if we could come up at some way of classifying those, that would really help.

I have a question on that like to clarify. So purely chronological versus were you taking kind of a tagged chronological but were you also thinking branching?

I was thinking more I guess the tagged chronological. We didn't talk about branching.

I didn't know how cray your shit was.


It gets way crayer.

So let's talk to collaboration.


So we actually had pretty good into authority, too, because I think we realized collaboration can be very difficult without a hierarchy. So all the questions up there we were pretty quick to answer yes, people should be able to work in secret, simultaneously, there will be no conflicts.

[laughter]

And then we realized --

Good job.  

Is that that didn't work out great.  One of the things we kind of circled around a lot is the idea of roles and stages of the document.  So if you have roles like an editor or graphics person, or designer, and you knew that a document was in different stages, whether it was in a draft mode or published or preproduction, we can maybe try to get clever about resolving conflicts based on like, hey, an editor is mostly responsible for the words and so maybe if they're making a change while a graphics person is moving things around, that they should get primacy in that change, but the graphics person should get primacy about where things are organized, and maybe that it's a choice that you can actually like go for algorithm mode or you can go for most recent change mode or you can go for do it yourself mode.  Our system works really well but it will always work correctly.  We talked about that it needs comments.  Comments are required for collaboration, and what else?  Oh, in terms of privacy and working in—both working in secret and kind of collaboration, basically having some sort of on-off switch so essentially to work in private you could create a branch that's now your private branch that you can use but it's not the primary branch so if you want to make that public you're essentially merging that back in hand now you can make comments depending on the stage of the document.  But you could also essential lock the document and you could essentially lock things together so you could say this paragraph depends on this other paragraph.  So you delete this one, you're deleting the first reference for this person so don't screw up my paragraph down here.

AUDIENCE MEMBER:  Ooh, yes!

That reminds me—if I can have that...

One of the UI things that we did talk a little bit about tackling was trying to infer what changes go together.  So, right, if I added a quote mark, and then, you know, 20 characters later I added another quote mark 5 seconds later, right, I probably surrounded something in quotes?  That is one change.  And how can we like guess based on time and similarity what—how many changes actually happened and how many the software just thinks happened.

Cool, that is fantastic.  So we're sort of running out of time, so what we'd like to do is if you can mix it up.  So get up from your table.  Go somewhere else in the room.  A little bit of brownian motion here.

One person may want to stay at their table, maybe, but you're going to mix it up.  And if one person can just bring the post-its from each table to us, we'll put them up on this board over here, and then, yeah, once you have moved to a different part of the room, just sit back down.

OK, so you're now sat at new pillars, mostly, hopefully, so we'd like to talk about different venues of writing, different styles of writing and sort of apply the thoughts that you've been thinking about sort of separately together on each of these.  If you feel strongly about any of—any of these forms of writing or anything, you can get up and move around, that's fine.  But we are sort of—we've got about 12 minutes left before lunch, so do it quickly, but we'll do the same thing, we'll sort of talk about each of these, and sort of just think about different issues of version control with each of these sorts of things, so we've got: high velocity, short form writing.

Like Twitter?

Like Twitter or blog posts or news articles.

Not so short.

I mean, yeah.  Yeah, so that's more blog posts. Breaking news is the pink one.  We've got long form serial articles with secret source, so this is, you know, like all of the stuff that Greenwald has been doing for example. And then long form serial work—so sourced work, public, like science journalism, that kind of thing.  Breaking news, so you know, news stories that are coming live. And then Wikipedia, so sort of accreted knowledge reporting essentially, public stuff.


So like we're at 1:20 already, so we're not going to do a whole lot of roll-up but go ahead and spend 10 minutes talking about how your system would work with all of your expertises now, and we'll explain at the end that this was just a trick to frustrate you:
[group activity]

5-minute warning. Just so you know, we're going to ask you to present three separate bullet points that make you unique from everybody else's, OK, so think towards that.
[group activity]

OK, so it is technically 1:30, which is why those of you that want to go to lunch should be able to go to lunch, but I want to first hear where you're at now.  Because I know you haven't solved the problem completely because I know if you had, Blaine and I would want to work for you, so I'm going to bring mic out.  Who wants to—raise a hand if you're ready to talk about your notes right now?

We are.  Can we just ask if you presented in the last round, that you hand the mic to someone else?  Had.

A really cool thing that came up just now is that it's hard to get --

We're the green long form serial, the sciencey one.  You can't do accurate like annotations in a lot of source control systems, the best is on GitHub you can do a comment on a line.  But we thought would be really good to be able to do a comment on a piece of punctuation or a citation.  Especially like a database across stories so if you're a reporter, you can look up who was the person who reported on the filet lander and being able to accurately report quotes.  And also being able to not lose work just having like a robust system for kind of like the tagging of the Google docs thing, so better than just show me the 50,000 versions that I have.  And I think?  Anybody else?

Awesome bullet points.  Bullet points next, let's move it to the blues, long form serial with secrets.  Whoo ...

Yeah, we this was an interesting one for us.  Because we decided that the primary audience would probably be the journalists working on the story, so this is a very private, like, contained system that we wanted to be able to track like which bits of information came from which anonymous sources, so like giving them some sort of like screen name so that that information isn't actually stored, and then we wanted to also track who on the team had corroborated each source's information, even though we don't know who they are, we can still track who's holding themselves responsible for making sure that that information is in there.  What else?  I think that was most of it.

Excellent.  Good job protecting important people.

No information.

No information. Can't wait to hear Wikipedia. High velocity short form, correct?


So we were—we feel like most of the changes that would happen to high velocity short form published will happen after the publication, and so how do those changes affect the content of the story and they'll probably be visible and they'll need to be visible because they're changing the initial contents of the story.  How do we surface that to readers?  We talked about What Is Code a little bit.  There's an open GitHub repo for that article and there's a lot of user participation, I guess reader participation with pull requests, making changes to the story and those being merged and surfacing in the web interactive that's really interesting, and with that there's a lot of potentially dirty laundry that would then be entered into the record.  It's kind of publicly available for people to see and is that a good or a bad thing?

Nice, very good.  First time Paul Ford's name has been mentioned in the context of short form.

[laughter]

Breaking news?

OK, so we thought that one of the distinctive things about breaking news is that it's fundamentally wrong throughout.  So we need a way of surfacing the corrections and kind of being transparent about what we were wrong about earlier, so we thought that might be a good opportunity for having a little bit more public facing view of the changes and the updates as they're coming in.  We also thought that there might be a good opportunity for personalization here, because each—anyone who's on that page, things are happening, they're all coming at different times.  Maybe someone whenever there's a group, if they come back to a page they can see what's changed since the last time they were there, because the information they saw previously was wrong, we want to make sure they know that not 6 people have died, it was actually 10 and we want to make sure that they're remembering the right stuff.  And the last thing is collaboration is going to be really important because you might have four or five or six journalists all converging on one breaking news story and so there's going to be a lot of those conflicts that need to be resolved.

I just want to point out that you just highlighted a fact that there might be a control system where one of the out-of-sync nodes is your reader's brain and I just wanted to call that out.  Oh, good, good, Wikipedia comes last.  Excellent.

But always first.  So I guess the big obvious issue with Wikipedia is authority, because, you for example it's edited by everybody, so we talked a little bit about that.  And how, like, the idea is that it's just edited by everybody equally but that's not really how it works, because there are sort of like trusted editors and we talked a little bit about how that sort of authority gets established, if it's just that you're a very active user or if there are other ways that that could be assigned.  We also talked about, well, like, also because of the nature of Wikipedia being edited by everybody, like visibility of changes is really important because you're not going to just mention to somebody like your editor, oh, yeah, I changed this.  It's got to be built into the system.  But it also can kind of serve as a metric for things like controversy, something that's edited a lot, or, you know, potentially, depending on the subject.  Obviously that could be gamed by people who have an interest in a particular issue, to try to get it like flagged controversial or something, but, yeah, anything else?


That is amazing. Thank you so much. I hope we haven't broken your brains too much, but I hope you go and think more about these problems, because I think they need solving. You're our only hope.

[laughter]

[applause]

Definitely go forth and mush your brains on this, and if you feel you want to mush brains with us, we're all around.

[session ended] 

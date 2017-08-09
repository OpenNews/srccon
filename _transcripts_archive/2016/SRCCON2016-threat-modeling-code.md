Threat Modeling for Code: When is Bad Code the Better Solution?
Session facilitator(s): Julia Wolfe, Ivar Vong
Day & Time: Thursday, 10:30-11:30am
Room: Innovation Studio 

Julia: Hello, I'm Julia Wolfe, I work at the Wall Street Journal as a news app developer and I am presenting with Ivar. He's at the Marshall Project and seems like that's all he wants to say. So welcome to threat modeling for code: When is bad code going to s on the screen? When is bad code a better solution? Ivar and I both—we talk a lot about the overlap betwe editorial. We have strong feelings about when they should and shouldn't overlap and. So just a couple of quick things before we get started.

We are being transcribed for this talk by the lovely Norma who's siting straight ahead of me. So when we start get nothing discussion, we're going to try our pass to pass around a mic, just to make it a little easier for her to hear u means that if you'd like to go off the mic, please say so, because otherwise, everything you say will get written down.

And when you do get the mic, please speak closely to it or we will get a lot of feedback and in  room, it will be especially horrible. So keep that in mind. Because we are especially cruel. We want to start this morning by geting you all up and moving a little bit. If you like, hopefully  We're going to do a little bit of that. We're going to some straw polls, kind of get a feel for the room, get a sense of who we all are, where we have stand in this kind of battle of product and editorial, so we're going to some simple yes or no questions. We're going to ask questions and if the answer is yes, we'd like to you stand over this side of our space, and if the answer is no, to this side: There's a lot of people which is super-cool, so we might get a little close, but that's SRCCON, right?

So, yeah, how you guys feel about standing up?

Moving on forward a little bit.

Yes, yes, I appreciate this. Yeah, so let's get everybody up into here, and then we're going to ask a series of questions. Perfect. We're going to ask a series of questions. Yes is to the window. No is to the wall. And we're going to try  Yes to the window, no to the wall. And do we do we need to move the table there so people can this is a great journout, which is a good problem to have but --

AUDIENCE MEMBER:  I think we can squeeze.

Ivar: All right. So we've got like what, 8 questions?

Julia: Yeah we've got eight questions

Ivar:  I have broken something in production. Yes to the window, no to the wall, and I think we have ...

[laughter]

So the people following on the transcription, there are zero people on the no side.

Which is go, we've all broken something in production. I have talked to someone who works on the CMS. Meaning if you work at a big newsroom, there's the potential that that you would not talk to someone who works on the CMS. So yes that you have talked ot organization that works on

CMS and no is you've never --

AUDIENCE MEMBER:  If I have, I've forgotten.

Ivar:  This is actually  surprising to me.

PARTICIPANT: We have a dedicateed build server for graphics.

So yes is you have something that may it looks like a—Julia: I'd like to add, if the answer to any of these questions is I don't know, which is  We can go to the no/no dedicateed category.

Ivar:  So this, you know, everyone,

well, we've got 80% are on the no side. The people on the yes side are v lucky people, I guess, to have dedicateed build server graphics. Into Norma, how are you?

NORMA:  You're doing awesome.

PARTICIPANT: I have launched something if if I don't know if it works on mobile. This is a safe space. Be honest here

Julia: Let's say in the past two or three years.

Ivar: I mean answer for what feels right. So we're actually probably the most split on this. I don't know if it's 50/50, but there's a—well, 60/40. On the yes, people have launched something without knowing it works on mobile. I am also on the yes side.

Julia: Me, too.

I have built a newsroom tool that other people use.

Meaning tools we build for yourself to make your lives easier is not what we're talking about. We mean reusable tools that other people depend on.

PARTICIPANT: Wow. There's a lot of yess. That's awesome. Does anyone want to share a cool tool?

Ivar:  Yeah, this is fascinating. So we're going to do --

Julia: Somebody built a where's my conference room

Ivar:  OK, this is great, we're going to try to pass the mic in situations li So it's easier for our transcription friend, but—sure. There we go. Yeah, where is my conferenc It started. I wrote this in like 30 minutes at the end of the day on Friday, several years ago, when somebody sent me a PDF of all of the conference rooms, max, and I was like, holy shit, this So I threw it together. It's a quick locateer map where you had a drop-down and it turned into this huge news room tool that I now burdened wi whenever they move desks on any floor. But it's the most popular thing I've ever built, but, yeah.

PARTICIPANT: All right, so I built a—this is a whole excuse me. I built a D3 sortable  for our gear department, but they ended up using it twice. But the thing that I --

PARTICIPANT: Can I ask that people say their names?

PARTICIPANT: oh, yeah, I'm Lowe and I'm at wired. And that was psychiatrist

PARTICIPANT: hi I'm Yuri Victor at Vox, and built  meme tool that is useed by I think close to 600 different newsrooms and organizations now. Yeah, cool, hey, everybody.

so I'm not going to talk about

PARTICIPANT: I also work at Vox and I work on our CSS ...

[inaudible]

Ivar: What is a CMS? That's a different—there's like 10 answer toss that the next question is, I like the way we embed ads. Yes to the window, no to the wall.

Julia: I really want to hear from anybody on the yes side of this.

Ivar: So we had a lot of people on the window on the yes side. We now have most pe

Julia: I think we have—(people talking at the same time). are there any of you not from Vox on the yes side? we don't work at a newspaper, either. So.

Ivar: How many people on the yes side don't hav PARTICIPANT: Oh, yeah, that's cool. So I'm on that side, as well. Do you guys want to talk about how you write ads?

I mean sure, we—this is Yuri Victor again at Vox Media. We are a net tech company so just like we had a massive team working on editorial, we work on our modern media stack CMS, MMS, that's a—we think that's lighting. That sounds dangerous, but so we actually have a bunch of people that work on that that's really well controlled and is now on sites outside of ours, because the tech is so good. We actually can control a lot of things. That's why we have high-impact advertiseing. If you've ever been to one of our sites, they probably look a lot different than any of the other standard IAP modules that you've seen and there's amazeing people working on that technology and it's also the they use that same kind of tech, the exact same stack for the ads, so they can create really compelling advertiseing, not only the ads that go in the page, but also really great storytelling that can go across multiple pages with video and audio and all sorts of other things.

we also, and this is changeing a little bit but if you're building a big story as an editor you get a little bit of control where the ads are going. Which is more than you usually get. You can make it flow throughout your story in a way that makes sense for the content.

Yuri: Yeah, the control is a huge thing, also when you're in the actual MMS. It who actually shows up what ads are running away if there's like a conflict that you can put out there. Every reporter sees that, every editor sees that. There's a lot of things in how the analytics integrate in there. Also, the analytics, we just wrote a great story about this. It actually does live integration testing, so it will actually improve your ads as it keeps going. Just little things like that that keep it really good.

Ivar: That's awesome. I think later on we should come back to this kind of talk about how resources are allocateed to. I don't think a lot of media organizations don't have shared tools to make that easier and that's like a fascinating process discussion of how of you separate workflows and how you build those teams. So that's r

I have a totally different perspective.

Ivar: What's that?

PARTICIPANT: so, I'm Eric and I work on open source tools and I run a site called redocs, which does documentation for lots and lots of software and we actually built our own in-house party system. Is it echoing backwards? OK, better. So we just built our first party in-house ad H it's inspired by the deck, which is a Mac and designer and kind of. We run first-party ads, we don't do any third-part. We basically built the network that feels good for programers. And because we have a targeted audience we're able to kind of build a product for them that they will actually enjoy and like, because we're not a mass consumer thi And we can sell that as part of the story and we can sell it as ethical advertiseing. You're a tech company, you want to reach programers, you want to use ethical advertiseing that they can agree with so you can tell the story about being a  as well as being a good partner to open source and software, so --

PARTICIPANT: The next question is, I have written internal documentation, yes to the window, no to the wall.

Julia: I'm really happy about the yess we're geting.

Ivar ... the question was internal documentation.

PARTICIPANT: So basically everyone is on the yes side. Which is Lauren, would I actually love to hear you talk about this.

PARTICIPANT: well, OK, so sorry, Vox is going to stop talking very soon, but if you want to learn more about this, come to my t tomorrow at 5 p.m. in this room. But we have built a folder of like doing regular documentation built into our project cycle. It's like once a quarter, once every other month, we keep an ongoing log of all of things that we document. Questions they have that are completeled by different query and we keep a log of that and once we hit 30 or 40 items. We document just like software documentation, also process documentation, decisionmaking, all of that stuff that makes a team run.

Julia: That's great. I really love that Q stack model.

Ivar: I'm definitely going to that talk tomorrow, then. Oh, yeah, I love this one.

Julia. It's not as if I'm going to give Ivar a personal question.

Ivar: I have a good story about a 3-deep-nested table tag in an email newsletter, right? This is like for people that want to make awesome email newsletters but have to write tables. So if you have a —and by good story, I mean

something that was probably incredibly awful and still really made it work in off. Or whatever.

[inaudible]

Ivar: OK, so where's the line here? There's a like a continuing—which is OK. But oh, interesting. This is interesting. So most of you don't write HTML email templates?

PARTICIPANT: I have a story, but not a good one.


Ivar: good story as in positive story?

Julia. No. No. Ivar: Like a story that you're like check so—out of the people on the no side, just a show of hands, how many do write HTML email templates?

Yeah, yeah, OK, cool. This is really surpriseing to me.

Julia: Yeah, I think this is part of why we wanted to do this, both for ourselves and for you, to get a sense of how much your work kind of spans the product editorial line and I think for those of you who come from smaller newsrooms, probably had a hand in everything. Sometimes in some of the bigger ones, you just can focus on new apps or something more static. But it's interesting that w I think about 80% of the room still got a good number of you—a handful at least had to deal with that.

Ivar: Does anyone on the yes side want to tell newsletter story?

this is not work-relateed really but last week I'm geting married in a couple of months and I thought it would be nice to make my own email to send everybody, an email invitation, but then it didn't look nice and I'd recommend not doing is what I'd say.

So this is that was like 70 nest of tables because he had to make it look like an invite. Just don't do it.

this is not a story, it's actually a retract when I said I built a tool and the best one was listicles.

Never one the best one was a newsroom generator.

That generator took me forever, because Wired is very design-oriented. Therefore, nested tables. So that—I mean it was my hell for a week, and I have to say that generateors are great. Build them. The gom of this editor is to eliminate the HTML view when you write a story. You can take this rich however, the need to insert HTML into text is still there and so the solution that we came upon is that you can insert HTML in a story, but you have to paste it in a small box and there's required field that you have to list a reason. And we check occasionally, if, you know. It's just people doing sufficient that they shouldn't do, because they don't know what to do with the editor, we contact them. And also when you insert it in the story, it renders as HTML. So it's kind of like we're going to let you do this but it's not going to be fun and when you try to publish it or export it, you get told, this is not responseive, you shouldn't be doing this. You should be useing the tools to work a better way. So that's the work we're doing to eliminate HTML forever. Ivar: That is fascinating. I think after the straw poll section of this we'll get into how teams are doing open graph tags and they're doing like full site generati teams that are trying to limit control and the ways that people build escape hatches to allow deadline stuff is really interesting. How you have to maintain that in ten years, like, that is we're going to finish this and we're going to talk about that which is great. Julia: Actually we just finished the straw poll.

Ivar: Great. So we can probably sit down unless everyone wants to keep standing.

Julia: So like you said, we're going to try our best to pass around the mic and and try t Because we do have a big echoy room, which is cool, but less cool if you're trying to transcribe everything. So once again if you can say your name, just you know, let us know, I think one of the cool things is we all get to know each other a bit here.

So let's keep that going. I'm going to switch to the etherpad which was posted in SRCCON see we can take some notes to try to get some resources to take away from this conversation and you can also feel fry to dive in there and help me out if you hear something cool that got missed, please jump in.

Ivar: So just to provide a starting point, I think the tension between CMS product teams, for lack of a better des editorial teams that need to publish in like an hour, right, we found all different solutions.

PARTICPANT: Some are you create your own mini CMS, some are like trying to build really sophisticated UI interfaces in web browseers for less technical useers to build content. Hashtag content. So I'm curious, just to continue the story front. And we can use HTML email newsletters, it might be a little bit better to talk abbased visual storytelling and I'm curious how people solved this problem at their news organizations. Some people do  subdough people build really sophisticated subdomains. Does anyone want to speak to how you solve that problem today hello I'm Gideon and I stole this story. We do similar things where I work. I know so a friend of mine who useed to work with me, he works on this BBC tasteer thing, so it's lots of speculative th projects useing new hip stuff but the one thing is they have an expirey date on everything. And it says this thing runs for 62 days and it just disappears after that. So a declaration of what you're doing that's ephemeral, rather than maintain blob for some promise that that thing is going to last, when there's an argument that you're not building stuff that's maintainable in the same way as an art room. So I'm just puting that out there. Just try and maintain it. Just kill it.

Ivar: That's fascinating. I think most people think for archiving, right, is how do we make this stuff survive ten years from now. And you saable?

so what we do is we have two tools that we built.

One is based on WordPress, well, not for long. We have something that's called FSD, it's feature story builder, which is a plugin that's integrated with WordPress and it's not technically a drag and drop, but it's basically multiple parts that you can add to a story and the way we think of it is it's like a capsule is it will never be changed after it's published, as in you know, like the design, or if anything needs to be changed like sm but like a big rehauling, everything is what it was then and when it was published and then when we have heavy custom storytelling, we have a static site where it's basically like HTML CS which takes time off developers hands so it's not useed as much. But the feature story works pretty well. When you build in parallax, maps, just blocks basically. But we make sure to emphasize you can't go back and modify how you want, especially with our design department. So I think yeah.

Julia: I think the feature builder a lot of newsrooms have experience with. I know I've experienceed those things kind of growing out of control, so I don't know if some people have stories to try to figure out how those nice immerseive experiences that don't quite balloon. For people up close, too, if you don't want to talk and up don't want-to-wait for the mic to come, you can just run up to this one.

PARTICIPANT: Hello. I'm Daniel. I want to throw a concept out there so everyone has a familiarity with it. I think in the last few years  services for runing what are called integration tests automatically against your codebase cropping up for from or very cheap and recently there's been some services cropping up that offer visual regression testing as a service for like free or very cheap. For me personally it's always been the holy grail. A system that goes back and takes screenshots of all of your old content and then will alert you if any of that ever changes. You might want to consider looking into that for the more expensive to produce features, asserting that they always retain that original form. Will. We're going through this right now abuse we're trying to move to CSS and trying to maintain the fidelity of our archives while we're doing that, many, many different postings is certainly a job. And I'm wondering, it certainly got me thinking about this and I'm wondering if anybody has really clamped down on arbitrary HTML and doesn't allow it or get us as close as possible to not allow it. We've got a lot of ways to include arbitrary HTML into our website right now.

yeah, so I work at Vox Media and I'm working on a beta editor that's going to replace our existing editor. Which is a tiny tiny V box that you write into and it sucks and it inserts horrible shit into your HTML arbitrarily, blah, blah, blah, so what we're doing now at least is storing everything as rich text and that gets interpreted into HTML when it needs to. It can idealy press a button and grows to Apple news and or you can press a button and it can turn into a script. So that's what we're doing and that's why we had the need for the ability to insert arbitrary, but ugly-looking blocks of HTML and have that be separate essentially because also you're—it's going to be stored as Richard text, it's HTML. So that's what we're doing. I don't know if that answers or speaks to what you're saying.

PARTICIPANT: Yeah, so I think where I work we're doing exactly the same horrible https migration of interactives and we had 0 to scape our own thing and scrape all the URL, because it's old shit that the person who built it has gone five years ago, like you are never going to—there was no standards, it was another time, there was a third-party vendor, you know, it's the real world consider you have to write horrible script, and so we—yeah, we -P scraped a lot of stuff, and tof—some stuff, I think, was just unrecoverable and we try and do a graceful redirect or something sensible, but it's a hard problem. In terms of the new stuff, yeah, so I guess we have a similar thing to—what was your name, sorry?

Nadia was talking about, so we have managed embed and unmanaged so if you put in a YouTube URL, we'll put a nice URL that we promise to maintain. If you put some random embed block we'll try to convert it.

If we don't understand it, we'll check if it's https and if not, we throw you a big audience, it's not going to work, we still don't stop you, but yeah, it's a level between managed kind o arbitrary stuff that we try and maintain.

PARTICIPANT: Yeah, building off the managed embeds, knowing some HTML patterns that exist and try and reverse them out has been useful to me so knowing what a pattern might be so takeing that away from the archiveal publishing, knowing all the diff providers that you might support in that case, or what a gallery or an individual photo embed would have looked like in the past and try to put those into individual objects in the CMS.

Julia: so one thing that we had wanted to talk a little bit about during this was kind of—I think this was touched on earlier was sock of the hacks that we have to solve when we get problems and when that he was OK. So I definitely want to open up the idea of sharing. Some of the wrong ways of coding that have helped solve…

Yuri: Oh, that's what I was going to talk B I mean I think if you give me a box I'm going to break it because I'm going to do something else. And that's just going to happen. I know a lot of us have similar ways we've done that, whether it's hacking into a box or whether it's hacking into a Heroku or a JSON string in there or something, but I think one of the big things going forward is so much of what's consumed is off of our platform so it's not about what it looks like on mobile or desktop or some new device. It's about what it's going to look like under instant articles and that's where these things aren't going to work. That little hack to do that one design thing that's only going to be consumed by now a small small percentage and still doesn't work in Windows phone? Like that's not even part of the audience anymore. How do we scale that? How do we do these things on platforms where they don't even allow us to do these and that's for me a really fascinating questions is do we have the people in these organizations like Google and Facebook that are actively evangelists for the type of story we want to do because of that one-minute hack that we have to do because we're on deadline and that is a place we're all going to be struggling with over embeds and whatever, they're not responsible on these platforms, so you ever end up with these really, really b where it's shoved into a YouTube thing that's private and then goes back. That to me is real fascinating where we're at right now.Ivar: How do you solve that?

Yuri: A lot of it by hand. Like you said, a lot.

Stuff from our systems, even the spoke type of stuff is kicked out to these platforms, but we still have to go out and massage them a little bit by hand and I would like one day for there to be a way to write a Regex pattern that interprets whatever the fuck people want to do, and then does it, but I haven't seen or heard of anything like that yet.

PARTICIPANT: Hi, I'm Alan, and one of the dirtyest hacks I've ever done is shop in short codes or template tags into body text, which is one of the most powerful things you can do, and also one of the most fragile things you can do, and the sort of thinking about canonical versions and the Vox rich text, like our canonical version is rich. But then if you want to extract away and use it in little blocks, you have to use a little tag, and if anyone's come up with solutions to sort of maintaining the functionality of those or replaceing it on the fly and how that affects an ability, I'd love to hear that.

so that's actually exactly how far the marshal product CMS works, too, and snippets like that is developers can employ just to identify that graphic, right? You can see we're going to put this graphic right here and if you have a local built tool that can simulate production and if you have an API. That's been a functional but it has it's downsides for an approach for a small team. It's one of the things that I think is really hard, but useful, then, to work on is where we draw the line between like editorial developer and like platform, and I mean these are all just labels, right? But if you have, say, like JavaScript APIs that you have access to, how do you leverage those on editorial projects but you still have to then maintain these API contracts between things?

PARTICIPANT: So the prompt here is like how do your organizations design those processs to manage that?

Like if it's in a separate building,

what are some ways of allowing kind of people that need to get stuff done tomorrow, especially people that need to build things that haven't been built before, and shouldn't be kind of productized immediately, right? Like we're on the edge of VR, does it make sense to build really come polit indicateed CMS tools when you're experimenting with new technology at the same time that you have to balance how all those pieces fit together?

particularly on the style side, because Javascript can be copied and like you can do whatever you want, but like managing styles to the styles that are in the site and then like the site has changes and how does that affect?

Ivar: Totally. Does anyone want to give a specific story about how your organizat on this problem? Maybe someone we haven't heard from? Someone in a tiny place, that like, FTPs files over somewhere?

I can speak to that from a former job.

PARTICIPANT: Sure

I was at an iOS shop that made ads for magazines and it was so small that for a option a long time there were three or four apps out in the world and they ran weekly or maybe biweekly and it didn't make sense to figure out how to publish new magazines, so for two and a half years it was like a set of three link line command line tools that a person would have to be present at a computer and run, and after about two or three years we allowed people to do it but is that an example of something that was very experimental. We didn't actually build it out for a time and that worked. It works for a long time on small teams. It. I think it can be. Even as platformization becomes the goal of most newsrooms.

Ivar. Platformization.

PARTICIPANT: So at the Texas Tribune we're working on  of the site. We built a tool that if you want to embed a video, if you want to embed a quote, we're still iterateing on what styles we want to do already, so we basically have a news house tool that they can quickly change the code that's being grabbed but otherwise the editors take the code and paste it in. It's not ideal but we're able to track the click events and that sort of thing and see what's working for both reporters and and that's going to inform the redesign.

PARTICIPANT: My name is Will. I work in CBC in Toronto. And one of my old employers, the barrier to actually solving all of these problems is actually on the political side of the organization, because newsroom developers were actually bared from useing the c FTP. So from two to three years, ever component we made was actually hosted on personal Google drive folders. And a that in about six weeks, there are literally dozens o interactives across that organization that will stop working overnight. I don't think they know that yet.

I worked at the same company, different newsroom.

Large Canadian company that we won't name that owns all the newspapers. We had to go through a big centralized hub at the time. Didn't even think of drive. We were in Montreal and we had to send it to Ontario to get it published. Which means a lot of our stories got held for three days while the central real developers decideed whether they wanted to publish your stuff and that is why I am still very wary when I hear about these separate tag teams that have different privileges , because they can really hold up some important news stories.

Yuri: Yeah, I can talk about process in this stuff.

I work at the storytelling studio at Vox, and we're editorial. So we work directly with editorial, the whole process is with them, the collaboration, the communication, the meetings. And I think there's two styles, right, like you have the long-term thinking and then the short-term and we have to experiment, like, this is where journalism failed for ten years and we're just geting back to being like, you know, fuck it, let's do it on robing eu. And I think that's really important * for doing stuff. And so you have do have that. And so we kind of take the mode like, yeah, sometimes let's do an experiment.

Let's build it once and let's see how it works and take those tests and decide if we're going to build it again. But never fucking build something twice, like never, ever build something twice, because I don't like repeating myself. I really just want to do something once and so we always, whatever way is easiest to do that, whether it's doing it in a Django app that's bespoke or a node app that somebody launched to do a bot. We do that once and then we come up with a platform or a better way to do that, so that we're never ever just recycling that thing where I've seen so many developers go in and copy the code from their old thing and paste it into their new thi and it's like I'm too, I don't know, lazy to do that.

so just always coming up it a system to make that happen and to have the larger tools like auto tune or a graphics rig or something like that, to make it really easy to do that.

Julia: So one thing that we were talking about trying to do for the kind of last part of this session was look at some of these stages that we all go through as newsrooms, kind of from th, whether you're a small upstart newsroom or you're a big newsroom kind of experimenting in a new medium with a new forum, to kind of look at what those stages look like from small, you know, doing it live, to giant, stand-alone server, you know, full formalized deploy process and what  stages are, to give us all kind of a roadmap for where we're headed, how you might be to get there. So I think we might transition to that a little bit.

and go back to the mic. This time we'll actually do that in the notes. I think hopefully there's some things that got added in there, but k start from a one to five stage of what that might look like when you're in that upstart stage and what is this kind of holy grail process that we're all trying to work towards.

Ivar: One is like manually copy and pasteing, whic and five is you have automateed visual regression testing. You have like --

what's four?

Ivar: I think we should talk about if you're at one. Do you build a task runner? Do you you know, focus on geting things deployed through some central system like CI? I think if we start with 1 being very manual and not useing loading tools and 5 being like you have the Ferrari of tools. Everything is muteable and roll-backable and everything is like magic?

Yuri. does that ever

Ivar: I have not worked on that system.  Yuri ... everybody that says yes, walk walk up there and anyone?

Ivar: But if there's another framework that would be more productive, that's fine, but I think trying to find what we collaborateed, we think the incremental process is on that, right? From maybe the first 1.1 is you want a tool to a to production, right? Maybe after that you want a separate stageing server, right, where you can preview things. So we're going to go back to passing the mic around.

does anyone want to start?

PARTICIPANT: hi, I'm so glad that all of you have been talking about front-end stuff because I'm siting over here about how we deal with these stacks of disparate databases that we've been collecting over the years, things that we can't throw away even though they have no attachment to our CNS or stuff like that. So this has been our internal struggle because what do we do with our Guantanamo database? We can't expire it because people are still there. It's like rows of people who are stuck in Cuba and so this has been like basically our approach to this so far has been trying to build things more modularly, and trying to replace these like micro-CMSs that we had with like little librarys that you can hit a button and it will build from CSV or something else, but I would love to hear people talk about how they're geting things that aren't stories, audio or video, things that are structured data, how are you dealing with those, rather than just merely how are you present things? Does that make sense? Yeah, because we're struggling.

Ivar: I don't have a phone. What time is it?

AUDIENCE MEMBER:  Quarter past 11.

Ivar: Great, so we have 15 minutes? Julia: Yeah, you can talk about whatever you like. If you want to speak to something you want to put in one of these stages.

I think a solid Stage 2 is like you don't have to know how the things that happen in Stage 1 actually work to run them. Like maybe it's still a script from the comm

inside the script. You just know that you have to run the script. That's to me the one step that would have traction.

Yuri: I would say maybe that's Stage 3. Because Stage 2 is probably like you just clone a repo and edit some things.

PARTICIPANT: My name is John and I work at a small paper in Oregon and I think probably the way to get you through the steps is you—I would like to think you have a sense of what smells, and you know, and if you feel a little less bad each time, and a little bit better, then you know you're going in the right direction. But as a concrete example, I think for us an excellent gateway drug has been tar bell, because you can put things i know Google docs, it separates the content from the styling so that the developers can style.

You know, you don't have to go through all that database setting up and if you know enough about the templateing, you can pretty much output JSON, you can output a lot of flavors and it kind of—it also kind of gets you in a lot of good habits because when you started it asks you ab and it also has kind of built-in to  nudge you towards having a production. For us when we want to do something crazy, that kind of the thing that lately we've been going for.

so like static site generation as an on-ra yeah, then you are get to the problem that Jeremy has of the piles. It doesn't solve you having that problem, but I think if you at least have an idea where those piles are, you're in a good spot, because you know, a lot of times you don't even know where they are until you shut one off and then a week later you get an email.

Ivar: Fair enough.

Yuri: Yeah, I would say solid Stage 4 is like full integration, so you're not useing an off-platform third-party thing like Google but then also full platformization, there is a complete way that is documented to do these things that has a whole process behind it, it's not quite like where you're still have everything on a golden hill in stage 5, but one day I would like to see that hill. But think we're still climbing.

Ivar: Well, hopefully we'll all climb that hill together, with open source tools. Maybe. Julia, can you talk about the way the Wall Street Journal does?

Julia: Yeah, so we've actually transitioned, I've been at the journal only about nine months and we've had some big jumps in that time. So when I started we were useing a command line tool for our employment and of kind of go-to dev person on our team has built a great deploy dashboard, so we have a dashboard for all of our projects and you can go into the dashboard, see the projects, get some basic information about the GitHub repo, where what the promos are, if we're useing RTML where the original Google docs are that were built into that. You can see the GitHub commits to the project and. Besides the obvious workflow ease, it's very quick to fix a problem, if you actually gly a bug to product, not that I've ever done that. You can just immediately deploy the commit before, without having to revert in your git file, which has been a really fantastic tool. I don't know if Chris or Joel want to speak anything to the journal's process. * yeah.

so the process you just described of kind of going from the quick fix way to like the really robust stage 5 way, stage 5 is a terrible, you know, heh-heh that we just did with RTML in a pretty short timeline, where Julia and I were the first to kind of latch on to we need this, and it took a little bit of convinceing within our team to tell people why we needed sort of this separate CMS from an internal tool that we also use called narrator which does something similar but is far for structured and harder to customize, but really quickly and it's been really accelerateed in the last few weeks that theres' been so many breaking news spots that we've been in but with RTML, we quickly went from having a low-goal RTML environment where we're just kind of testing things on a desktop to now we have this full integrated dash board where we are—we quickly set up the Google doc, we can then share that email address, share that with the designated email address which then just populates the RTML into the dashboard for all of our RTML docs, each one of those on the dashboard has two buttons associateed with it, so you can publish JSON to production and publish JSON for dev and all of a sudden we have this like really robust kind of make shift CMS that is completely separate from what we're using from insig

RGML.

I'm from the New York Times, for any of you that don't know what ar chi ML. It's sort of similar GAML or sort of similar to JSON but it's much much more forgiving around syntax so it's a format where you can put some key words syntax in there, to Google dock to give it structure and JSON structure but also generally friendly enough that you can give it to a reporter or editor and have them not fowl it up.

from when that was createed which was several years ago, right, can you talk about the scale that you all have is not a problem that most people have, but I'm curious if I can pick on you a little bit.

PARTICIPANT: Um, we over the years have experimented with we sStage 1 like everyone else and

have gone through the years to find out what are the repeatable things that we do again and again to cause ourselves pain and one of the things is you know what we're useing Google docs to write text and some people at the end of the day was copying and paste it go over into an HTML document and we said we should figure out that some way to  from Google docs. And that's led to the of arish ML.org.

how many folks here use are chi ML?

so there's maybe 10 or 15 hands for people who use.

...

Yuri: One thing with these stages is I think these are awesome, but I think that there has Pab a parallel track with the larger holistic organization that is moving alongside with this. And so that when you—the only way to get to Stage 3 and 4 is if you have, you know, the actual like platform teams building out those, you know, the APIs, that you're going to need to connect all of these things together. Things are modular so that if you want to fire up these bespoke pages, it's really easy to add something like comments or really easy to add something like user integration or photo uploads and that comes with having an entire like separate track of the actual whole team, knowing that in 6 months we're going to need to be here, we're going to need those APIs to meet us when we're there. We're going to need those modular things, because we try to thmassive beamoth thing. *

you also have to have the space and to be inefficient, essentially, because when you're making your tools better you're not useing your tools. If you're in Stage 1, then no one can publish without you. In order to step back to make it so that other people can publish things you're not publishing things. So that space to make the system better is not present on really small teams sometimes, and it can happen for years, so that's another thing that has to happen so you can move to the stages.

Ivar: I think there's a lot of situations where less is more with this stuff, too? Like, it makes sense to build really rough copy-based tools initially as you find what the abstractions are, right? Like having Google docks being a part of rapid flow, and finding that oh, this is a pretty big pain point.

And so that's part of why this session is called this, right, is like it's easier to write code that like gets the job done and ships the thing today and come back and identify later how to build bigger systems off that. To the point about companies that support this, that like, yes, absolutely, what are some strategies that people have useed—I should do a time check, too.

got about 7 minutes.

so for people that have either experienceed this or are currently in the situation, what are some strategies for building out more sophisticated systems?

Julia. I mean I'll try to speak. I've been in quite a few newsrooms in the past few years so I've definitely experienceed different kinds of buy-in and I know definitely the pain that some people feel coming from places where you can feel like you have none. I think I found actually when I realizeed that I don't have a lot of buy-in that I might kind of enjoy living in the shadows a little bit. That sometimes there's a little bit of freedom when the rest of the organization doesn't pay a lot of attention to you. That allows you the ability to experiment a little bit. Allows you the ability to use the tools that you want to use and I think the way to make the most of that in my experience was to try to look back on some of the decisions that I made about why to support and if they worked, why that was, but more importantly, P if they didn't, what I had learned from that and what I could bring to a different kind o have helped me in the newsroom where I have more buy-in in, where I've been on a two-person team where we've had to make all the calls and I've seen where this leads. One thing we've talked about these stages, I don't mean you're a Stage 2 organization or a Stage 4. The Wall Street Journal is a huge organization with a ton of great tools and a ton of things we need to work on. We definitely have Stage 1 in our workflow and maybe even some of the stage 5. It's great to kind of see what sort of things can we look forward to, so that's hopefully the way that we're trying  structure there, to help you see, looking ahead a little bit in some areas you can work on. If you need your platform team, you can do it, how do you get there?

Yuri: I think that no matter the size of your organization, if you find yourself at Stage 4 consistent think you're not experimenting enough.

Like if everything is going great then you're probably not doing the actual work that needs to be cool and experimental and push all of journalism forward. It's all a cycle. You should constantly go back to Stage 1 and Stage 4. And you might get better as you go along. And I don't even know what kind of graph that, but it's a Shakespeareian wheel of fortune or something.

Julia: I believe the technical term is snake eating its own tail. And I would say that some of the most fun I've had in these rooms is on those small teams, just kind of making it up as we go.

Ivar: I think we have time for just a couple of more comments.

one question I have is at what stage does some kind of cohesive documentation tap? Step 4 mentions deploy documentation, but API, the decisions, the assumptions you went into the build, when do people do that or do they just push it off to stage 5 or stage 6 document?

Julia: I want to say 3, I want to say as soon as you have tools, you should have some documentation.

so I've thought a lot about this. I actually run a conference. You should write documentation when you design software, because it helps you build better software. Writing kind of the read me example interface, all of the kind of user faceing parts of software should be written before the software, because that allows the API to inform the decisions you make on implementation, rather than implementing a bunch of crap and then thinking at the end, oh, how are people going to use this and then building a layer on top for humans that doesn't actually match the design of the software? So I really, really do highly recommend at least thinking through the documentation of that stuff first, before embarking on any kind of user faceing project.

Ivar: So as we kind of work our way towards the completion of this conversation, one of the things that occurs to me is it's amazeing how much our t And that process, going from having a process, documenting it, building tools to automate that process, and then from that point, next time that you build a project you're sort of building it based on the tools that you already have, which we've always been doing, but the evolution of that is at least at the journal, we've gone from this philosophy of building these kind of stand alone application, right, Javascript application, traditional what we think of as news applications to now we are very much, in the last 6 months, we've very much shifted in the mentality of building stories and building pages. But we're doing that more and more, because we've built these tools that allow us to do this,  right by this in particular at the New York Times where we sort of like watched from afar and wondered, how do they—like they've definitely, the Times has been in this mentality, I think, for a while where they're building less and  projects, or at least you see many more static pages and static graphics, and I think that I would guess that in a large part that's driven by prevalence of AI to HTML and Archie ML where you are in a position where you can build graphics, you can build s graphics quick and you can integrate the quickly. And that leads to this long scrolling concept instead of presenting one interactive version of the map that allows you to see it four or more ways. In other words, you know, just the tools end up informing the way that you make content.

so I just want to say quickly we're at 11:30. We've got half an hour before the next session, so people are more than welcome to stay and chat with each other. I don't know if that—any of that will be transcribed, as well as mic'd, but just in case you want to get out and enjoy your half an hour

in between, nobody will get offended if you get up and walk out right now.

[applause]

Ivar: I think we should do one more applause for Norma.

[applause]


The Ecology of Newsroom Software
Session facilitator(s): Ted Han, Mike Tigas
Day & Time: Thursday, 2:30-3:30pm
Room: Classroom 310


TED: And I'm Ted Han, I run DocumentCloud. Some of you may know know.



MIKE: Ask this talk is titled The Ecology of Newsroom Software. So he uses software as part of your job in the newsroom? We all news computers. He all news, like, phones and use the Internet. Some of us build stuff that goes on the Internet on one of these devices. Sort of part of this session is, like, different places use, like, different software. AOU you know, there's different attributes to them, and reasons why we use them, and having different conversations with people, we wanted to have a conversation about why we use certain things, or why certain organizations want to use certain things, or, you know, there is no one size fits all for a lot of problems in news. 



TED: Especially, since over the past five years, there's so much experimentation on what we're using, how we are using it, and why we should be be using it. And we're to the point where we're not sure to do for best practices, really, before you can start to see the consequences of the decisions that are made five years ago, and people are still having to use this, right? So part of that, right, I've been working at DocumentCloud for almost five years now, and there's been a whole lot of change. But still people are using DocumentCloud which is helpful but even yesterday I was able to find a project that that we've done at the Chicago Tribune and it works even to this day, right? So there's a cost being able to maintain and figure out all these pieces of software. And so, I haven't—and so what we were thinking about when we were talking about this session was how can we start to catalog some of the aspects of, you know, the decision-making processes that we go through. Well... yeah. That we go through in order to, yeah, and we've got a fall-back in case the Internet doesn't work. When we're making decisions about how we're going to deploy software in the newsroom, who's going to be responsible for it. You know, how long are they going to be there? What happens if they get hit by a bus? And all these sorts of decisions go into whether you can actually successfully use a piece of software in the newsroom or not.

And so, the way that we wanted to kind of go about doing that was starting out with a discussion but actually running everyone through, helping us brainstorm some of the aspects around how software gets used in your newsroom, and then, use that to kind of prototype a system for, you know, cataloguing more robustly, how we actually—what software is being used, and what decisions actually were made in order to keep any of these things going, or decide to kill off, basically, right?

So... the room is actually large enough that we probably would use up all of the time if we actually went around asking where everyone is from.



MIKE: We can do it by a show of hands. Who here works in a newsroom? 



TED: Who here works on a team with more than five people? Oh, that is actually a lot. Okay. Who here is responsible for maintaining software in the newsroom? Okay. That's most of them. How many were able to sign in to this etherpad? Okay. We're probably going to have to use the notepads. Let me pull up what I had on that line on my notepad on my phone so that we can continue. We have a bunch of notepads here. And the thing we're curious about, I'll hand them out on the tables, is name a piece of software that you've had to work on, or that you've used recently and then we'll go from there. It could be any piece of software that you use, as long as it involves your job. If you can't get to the etherpad, go for it... otherwise...

You can, like, put your software suggestions in the etherpad. If you're still having issues getting on the Internet, that's fine, too.



TED: Okay. Has everybody basically managed to get into the etherpad there? Their entries into the etherpad here? Anybody else want to... okay. Yeah, I'm interested in this list because a lot of this stuff is operations stuff, basically.



MIKE: Who could name one thing that all these things have in common?



PARTICIPANT: They're pieces of software?



PARTICIPANT: POS.



TED: Okay. Is there a piece of software on here that you've used that hasn't pissed you off at some point?



PARTICIPANT: Pokémon Go?



PARTICIPANT: Pokémon Go is at the top of the list.



PARTICIPANT: It's not so much that it pissed me off. It's that it disappointed me.



PARTICIPANT: It annoyed me.



MIKE: So for some people in this room, there's definitely things up on that list, you know, that you—you know, you personally, or you at your organization, you'll see some things up here, I can't use that because I don't have the resources to do that, or the technical ability to do that, or I just don't have the time to switch to a new thing. So, like, you know, how many people have, like, they see a thing on this list that they literally just cannot use at work. That's probably most of us, right? Like, there's probably some reason why at least one thing on this thing is not...



PARTICIPANT: An option.



MIKE:... an option. Correct.



TED: Yeah, and so, the things that Mike and I were talking about when planning for this session, we're trying to figure out, like, what aspects that—even we've had to deal with because Mike and I, essentially have to maintain software that's often written by other people, and that is deployed and that we have to figure out how to keep running, right? I have a pathological case that all of my software is open source, that other people try to install it and run it, which means that oftentimes I have to figure out, how much of my time do I dedicate to support for other people's platforms as opposed to running our own, and making sure that, you know, journalists have these tools available to use, right? And so figuring out for somebody who runs open source projects like Mike and I do, what the intended support is going to be, and how we can actually architect our support so that we know what the support paths are going to be, what deployment stacks are going to be look like, and those sorts of things has changed, for me, dramatically over the past few years, particularly with the appearance of software like Docker, for example. So part of, you know, what we'd like to do is actually is, sort of, prototype an exercise here where we start to catalogue what are the dimensions that actually go into how dimensions were made in your newsroom to use and run a particular piece of software, or, you know, if you were thinking about using a particular piece of software, how would you know, what questions would you ask in order to put it into practice in your newsrooms, what the upsides and downsides would be, and, um, what sorts of things you need to be able to document so that other people, for example, can run it in your  newsroom. And so, the way that we were talking about doing this is basically by trying to come up with a series of yes or no questions for how—for describing any piece of software and I'll explain where we're going with this. How many of you remember hunch.com? Okay. Literally zero. Excellent. No, this is important. So hunch.com was a company that was started bring Katerina Fake, and Chris Dixon and was sold to eBay for a very large sum of money and that was in 2012. But what they were claiming is figure out a taste map for any question. So basically they did that by doing a game of 20 questions. So you would do yes, no, so long as you could come to a decision point. And so this is fairly easy for us because it's would you use this piece of software? Would it be good in the context in which you're using it? Yes or no? And then the question is what are the aspects and the decision points that you would use, and what we hope to do with this, is put together an app that allows us to say, hey, you're interested in DocumentCloud, you know, what's the size of your organization? Can you pay for software? Would other people on your team use this? And basically be able to answer a bunch of yes/no questions and then figure out, and we know we can use machine learning to figure out which of these aspects are actually most important for your type of organization, or the particular piece of software. So what we would like your help is, basically brainstorming questions that you can answer with a yes or no about pieces of software that you've used in your newsroom in order to be able to, essentially, diagnose whether a tool would be useful for your type of organization. So that's why we asked you to list a bunch of pieces of software that you've used, and that the next exercise is actually, if you go through, and ask yourself: With these pieces of software, who decided, like, you know, whose approval do you need for these things, or any of these sorts of things. So we'll give you ten minutes to take questions into the etherpad here, or on notepads and you can't get into the etherpad.



MIKE: And feel free to talk to your neighbors, to the people that you're at, if there's a particular piece of software that's your favorite. If there's something that really pissed you off on a piece of software, what was frustrating, or what disappointed you about that piece of software? Sort of talk out, like, why are you using this, and why do I feel this way about this thing that we're using, right? Or something like that.

So definitely, like, talk to people at your table, too. So to, sort of, help brainstorm and you know... Pokémon Go, right? But, like, lots of people are using it, right? Why is that?



TED: Yeah, and if there are questions about this, feel free to ask them. Otherwise we'll just keep talking.



MIKE: And then you can, as you're talking in your groups, you can, sort of, avoid the specifically yes or no question because you can, sort of, circle around back to that, too.



PARTICIPANT: And you have to say yes or no? You can't say, "Sometimes?"



TED: That works, too. So the answer should be like, yes or no, or something discrete. It could be yes, no, maybe. But the more concrete that you can make it, the better. For example... was there a particular question that you had in mind?



PARTICIPANT: Well, I was just going through the whole thing. Well, at it running on your computer? Yes. And just the tool, and I was just thinking of all the tools that we have in our company interim. Well, some of them are, and some of them aren't. So that's why I'm saying sometimes.



TED: So the goal is to be able to apply this to a piece of software at a particular time. So at the end you could say Document Cloud doesn't run on your personal computer, no. Does it run on your company intranet? Only if you're determined. Readers can't access the tool, would other people on your team use this tool. Whereas if you talk about something like, Agate, for example, does it run on your computer, yes. Can your readers access this tool? Most likely not. And, you know, it is an open source tool, in that case. Your entire organization probably wouldn't use it. And but once it comes down to somebody saying, "Hey, would I, or should I use Agate, what are the things that you want to be able to tell them really quickly, or what are the questions that they would be able to ask themselves that we would be able to fill in for them?"

So as you guys are filling this out, I'm curious whether there are pieces of software that are deployed in your newsroom that you have regrets about deploying. Like do people have, like, examples?



PARTICIPANT: Slack.



PARTICIPANT: So the Pittsburgh Post Gazette, our publisher, John Robinson Block purchased THEUFRL called STKPWOEB are a kisses which is a deviation from what we had before, which was an Adobe DTI and most of our designers in the newsroom did pages designed in InDesign, and it was great because we would just navigate it through all the way up we got the paper out but when we went with this LibrKiss CMS, and the Toledo Blade which is our sister, was using it at the time and they said that it was going to be great. And it was terrible. And there was cursing. And there's still complications, obviously.



TED: Are you still using it?



PARTICIPANT: Yes, it's his.



TED: So that's sort of an example of top down. So you probably recommend not using that piece of software?



PARTICIPANT: I recommend not buying it.



MIKE: Anybody else have a software regret story?



PARTICIPANT: I did not make this decision but merely suffering the consequences of it but merely using the Drupal CMS system, and the ecosystem therein that be challenging.



PARTICIPANT: Hear, hear.



TED: Are there pieces of software that people have chose to use and then regretted it?



MIKE: Like somebody else didn't choose it for you. You decided to use it yourself.



TED: Because I'm sure most people here particularly don't like their CMS. Well, that's an important part of about the decision-making process. When you pick a piece of software to deploy now, are you thinking about who's going to maintain that software in five years, or who's going to hate you in the future?



PARTICIPANT: The person that hates me the most is me when I write stuff and discover that it's terrible when I have to support it.



PARTICIPANT: Future you hates you so much.



PARTICIPANT: We made schemas and designs for this, and it's like, this is terrible. This is really overcomplicated and now, we can't figure out how to change it to get rid of that because you've got a model that's based around that complexity.



PARTICIPANT: Well, I was just going to say, we're in a situation, I work at USC, and the situation that we were in is, like, if a developer had been there at the beginning at the table when these choices were being made, like it would have been so helpful because I came on, and I was like, guys, you can't BS me. I know how this stuff works and you people don't. And you made this decision. And, like, you're going to hate me because I'm going to write my own system in three months because I'm frustrated with what we're using. And so I think, also, like, knowing who should be at the table when these kinds of decisions are made, you can't also create a CMS without reporters' input because they'll hate you for life, because they're like, why is this so hard to do? And I think that's a consideration. How are people actually going to use there is this, and how is it going to be implemented on all these different things?



TED: Yeah, I think the decision-making process on a lot of this stuff is interesting and complicated, right? Especially just seeing the people around the room here, I know that all of us are on different parts of the board. Their people who work on the platform stuff here, their people that are in the newsroom, there are people who are educators working on different sorts of teams, and, you know, one of the complicated parts about all these is what is the decision-making process around how this works, how thoughtful are people being at, you know, when they're deciding to use a piece of software and putting it into TPHROEUPLT, is it someone just saying, this stuff looks cool, can I get it online quickly? Do you want to talk about the process of Dockerrizing all the stuff. And what development was like before and after that?



MIKE: We still have ten different ways that we put out our news apps and our interactives on the Internet at ProPublica. Everything is still, you know, I'm trying to fix a lot of the technical issues that we've had because as we go gone through the years, we've done things a different ways each project and it's one of these frustrations in use, you know, we're publishing a thing and then we're moving straight to the next thing and then we don't always consider how's this going to keep running because it sort of goes to the other problem of being able to archive the work that we do. You know, there are lots of—you can see, like, the first issue of the New York Times, like on microfilm before there's, like, interactives that have been made in the past year that you cannot see anymore. It's like really weird. And those are, like, software problems, I think. Like part of that problem is like the stuff that, like, these interactives were built on. You know, somebody decided we're not going to support it anymore and then what the hell happens to the content, right?



PARTICIPANT: With Docker, say, does it feel to other people like we're still, like, a few years away from actually having the system that works like we would want? Or do people—some people feel like no, we've nailed it.







MIKE: Does anybody feel like the piece of software that you've used has, like, nailed it?



PARTICIPANT: I really like our elections stack this year. I know it's not fair. It's not fair but it's...



MIKE: In a year. In four years from now. In four years from now do you think you're going to feel that way? You're the only one with any visible reaction so I wanted to pick on you.



TED: You know, there's some things like for a certain set of problems I'm like, yeah, go ahead and use Tabula, yeah, that's a thing that I can actually go tell people to do. But this happened to me yesterday. Let's pull up the DocumentCloud tweets. Where somebody was like hey, does DocumentCloud know this thing and I was like... uh, no. And then had to have a conversation about, you know, what was the appropriate piece of software to use let's figure out where this stream of tweets started. That's not letting people, is it?



MIKE: Does DocumentCloud have a tool to text compare? Yes.



TED: And the answer to that was well, not really. But, you know, she was able to then go find some pieces of software that she used to do the dif, and then, navigating Twitter is not... well... that ended up being the solution. But she did end up using DocumentCloud to solve part of that problem, and where did she actually... one day ago. Um, yeah, and then actually mark up the document and do some cool stuff with pointing out the differences.

So knowing how to get from—I've got a question to yeah, I can use that, it's helpful to know but also figuring out what the problem is, and who else has that problem. I mean, the Docker stuff for me was kind of interesting because I had first heard of Docker, and heard where a few other people had used it, but it wasn't until I started having conversations with Mike and a few people from MIT, where I was like, I think I can actually deploy this, and, of course, Ryan here. So we've got one of our apps running up on Docker and I think that that was probably the right decision. And I don't regret it yet. So what I'm trying to figure out is, when will I regret it, or how soon will I regret it?



MIKE: There must be some law of software, or, like, given infinite time, like, you will eventually regret some decision you made in that software. And I think it's, you know, part of, like, us trying to enumerate, like, the different properties of software, and why we use them is to figure out is there a way for us to mitigate how soon that happens.



TED: And you can talk about this from a technical perspective but there are also, as you mentioned, decision-making processes that take place, and in your newsroom, or in your organization about did management buy this thing without consulting anybody and say, "Yes, we're going to use this." That is a particular kind of regret and misery. But being able to, sort of, articulate those when you're actually making a case for why this thing needs to be abandoned, other than, you know, the fact that it was only bought because of somebody in management, or whatever, that becomes, sort of, like a, you know—I happen to have the autonomy where I can make the decisions technically but that's not the case for everybody in all organizations.



MIKE: I think there's a question in the back.



PARTICIPANT: So we're using Django, for example, and I regret if if we don't update every half couple of years? And when we do, it's actually nice because you get new features, and you need put in work, right, if you let software rot, you'll regret it after a while. If you keep working on it, it kind of keeps getting better with you, and this is something that I've known. So if there's a new version, you upgrade as soon as possible, otherwise you're left behind.



PARTICIPANT: I think the trend has been, ever since GitHub, it's made version control a lot easier and if you're in a situation where you can iterate, then you can, you know, kind of sometimes navigate away from the mistakes, whereas in the old model, you bought the license, you installed it, and if you had to do the install, you bought the new software, and you had to do all the backups and you will these huge other pain points but once you're able to iterate because the software that I work with every day that I hate the most is the least iteratable. It's done, it's sunset. But the money-making machine is built on that dirt. But, you know, I think—and I think software as a service 'cause even now with Adobe, you don't care. it just sort of updates under the hood. And I think the more you get that kind of thing, the less regret you get.



PARTICIPANT: I would strongly, I feel that sentiment. I think that I feel like the lesson that I always go back to—the best lessons was early on in my career, oh, my God, Postgres is so good, just so much better a database than MySQL, and so we switched the project that we were working on over to Postgres and then I was the only one that could maintain the database.



PARTICIPANT: That's so true.



PARTICIPANT: And I was like, this is objectively worse. And so we switched back to MySQL, and then I, from then on, made MySQL is the way. But I think the lesson for me there is that software, I think is essentially, I think which is what you're saying, basically a faction industry. You don't want to be wearing bellbottoms in 1998 because, you know, they're, like, goodbye, you're uncool, and building momentum around those things is really difficult. And I look at, you know, I think we've got a lot of—there's a comment like, are we just choosing this because this is the new hot mess but I look at the ecology of npm module and if I need to do something with some sort of modern technology, it's probably not npm from using, like, enterprise, probably I have to build it myself. Yeah.



PARTICIPANT: To that point, I just want to say something. I mean, 'cause this seems like a couple people here in here use Drupal and I've used Drupal, too. And I think there's also unlike certain problems. I mean, yes, you want to stay up-to-date, especially when new versions come out, but at the same time, when you're using open source software, an example, Drupal, and your organization has, sort of, like,, you know, configured it like all these different modules and blocks that are, like, sort of customized for that, like, particular version and then you have to switch, you know, like, no one wants to, like, do all of that again, spend all this money, you know go to the community, get assistance, or something, you know, when it does, like, come out again. So I feel like, you get those problems—I mean, and not so much when it's proprietary stuff over, like, things that you create, but with open source software, it's sometimes hard to, like, do that version control because, you know, you can't—unless, you know, it's perfect for you every single time they come out with a new version.



MIKE: There's a lot of stuff that we don't update because we have a plugin that doesn't support the new version. This is just, sort of, the way that it works. And we have to live with it but you know... we have one over there.



PARTICIPANT: Sort of related to that when we make informed bad decisions and we deliberately make decisions like we're going to use a crummy, we're going to use version one of jQuery because we have this really good plugin that's running on this part of the site.



PARTICIPANT: Right. Right.



PARTICIPANT: But it's really difficult to write this thing. Or, like, I use Mongo a lot. And there are lots of objective reasons why that is terrible and dev ops will hate me, and it's going to cause me problems later. Let's weed it out. But I'm interested in how do you identify, evaluate our criteria for making bad decisions.



MIKE: Yeah, so part of the exercise we're trying to come up with these yes or no questions, or whatever is to, sort of, try to, sort of, find a set of traits about software, or how we use them, and I don't know, maybe it's a decision tree. Maybe it's not. Maybe we're, sort of, missing the point entirely by coming up with these questions and traits but we're just sort of interested in, what are all the ways that our decisions some sort of software can fail—how can we mess up that decision?



TED: Well, part of this also is, as Ian was also mentioning, how do you know what's appropriate when, right? And part of the problem is a lot of the stuff changes and the context into which you're deploying might be different, or the intended—or the actual use ends up being different from the intended use. So some of those you can't predict, and you have to know what the parameter space is, right, and what things are going to be problematic once you get to that point. So when what you're optimizing for, when, and arbitraging against for borrowing from the future.



PARTICIPANT: I was actually going to say very much the same thing and more generally, you know, time is a factor here, not just with these questions, I think this is a fascinating idea but some of these questions could be more or less important over time. And the needs of the business in the newsroom, specifically could change over time, as well.



TED: Yeah, we're kind of cheating a little bit with trying to generate this list because I think it does, sort of, flatten down the spaces, right? You could ask questions about this, but a lot of this is part of who you are, what your organizations look like, what's coming up for you, what space are you in, not just what space this particular piece of software fits in, right? And some of that, you could encode in yes/no questions and that's where I was thinking of going with some of this. But how do you get at, sort of, the richness of what is the decision-making process inside of your organization. Whose authorization do you need in order to do something, right? It's one thing to say, "It's just going to take my time in order to be able to adopt this piece of software and put it into practice because it's open source," versus, "I need to a budget to buy this software, so I'm not spending time doing this thing, right?" and how and when does that happen? You know, is that solely dependent on the size of your team, the size of your organization? All those sorts of questions.

And, I mean, you know, I bet all of us have had points at which we decided not to use a piece of software because of, like, budget, right? That's a really easy one to pick out. But are there, I'm curious if there are particular things where you decided not to use a piece of software because of something really well defined, right? Does anybody have, like, an example that have where you said, "I absolutely can't use this piece of software because..."

Because I know, like, for example, I've heard, you know, just running DocumentCloud, the Electronic Frontier Fund Foundation passed on using DocumentCloud because we have a pixel tracker on that goes with documents. So that way we can calculate a bunch of things and help reporters out, but they were concerned about any tracking whatsoever, which was sort of an interesting set of constraints for me because I kind of have to like am trying to read everybody's minds to try to figure out what their problem space was, which is why I was interested in this particular problem. Anybody think of...?



PARTICIPANT: Licensing. Along the same lines, like GPL, and MIT, I think a lot of organizations, they're very concerned about that.



TED: You have one? Okay. Are there—do any of you have any licensing restrictions specifically as to, like, can... I suppose I should—should I just ask how many people have used GPL? How many people here have deployed GPL software? How many of you have made modifications to GPL software?



PARTICIPANT: Nope...



MIKE: Do you want to explain what the GPL is?



TED: How many people know what GPL means? There's a series of—you know, part of open source and the spirit of sharing was the idea that you could put software out there and other people could use it but one of the concerns were that—well, a concern particularly was that companies would just steal the work and incorporate it into your products and just use it, right? So a bunch of people got together and developed a software license that says specifically, if you make modifications, or if you incorporate a piece of software, a piece of GPL piece of software into your product, you have to make sure that anybody who uses your product can also access the source code for the open source part of it.

And there are concerns about GPL, particularly, over whether or not the license is viral, which is basically that if you use it, suddenly you have to actually make all of your source video available. And so as a consequence, there are a lot of companies that decided not to use anything that had a GPL license, which was sort of a shame since there's so much software out there that is GPL licensed, and actually, for DocumentCloud, that's—the decision that we made to really sell our software under the MIT software was that anybody can use it so long as you preserve the copyright notice and you notify users that you're using one of our pieces of software, was specifically so that newsrooms and other people could use DocumentCloud's tools without any of those concerns or baggage.

So we have 15 minutes left. I don't want to continue just monologuing. So are there any questions at this point? We can kind of go through a few different things. Are there things that people were particularly interested in, either from this list of a particular piece of software that you're using?



PARTICIPANT: I think one concern that keeps coming up for us is whether we can get the data back out, and how easily and how quickly if we're putting it down somewhere, or similarly if it has an API that we can work with it easily. But we've had issues people not giving the data back that we've used with these services. So I don't know if that's a—that counts as a challenge.



TED: Is that operational data that you need for other purposes?



PARTICIPANT: Yes, sometimes. Yeah. And I think the first question whenever we were talking to a vendor, or whatever we were looking at software is how easy will it be to get away from your service? Which is sort of a morbid question but a necessary one.



TED: Right, what's the necessary question for this one?



MIKE: Who here builds software? Builds software on the Internet, who here is surprised at a use case of your software, looking at the questions here, have you ever been surprised with someone coming to you with a comment about your software about the way that you make it. Is that everybody's hands, basically? I think part of this conversation, I feel like is to also help people who make software make better decisions about what their future users might be like. Yeah... there was, like, I think a hand right there earlier right before I started talking.



PARTICIPANT: I just had a question for the group because I'm interested in, you know, there are tradeoffs, there's some third party softwares where I feel like upper level executives get involved in the decision-making in terms of whether or not we use it, right? But then there are many other things that happen behind the scenes that they probably don't realize that decisions are being made about. So do you—how many newsrooms actually have a process for choosing software, and then what are the levels of permissions you have, in terms of do I add a plugin here, versus, sign a contact with Legacy.com, or something like that, do you know what I mean? In terms of making those software choices, how does the oversight of that work?



TED: Yeah, so —



PARTICIPANT: In newsrooms?



TED: Yeah, so that's exactly the problem with a lot of these things because it probably depends on what the piece of software is. Because if you've got a news apps team and the way that they're deploying software, that's going to be different than, say, you're overhauling your platform. So I guess how many folks here have control over installing software on your computer? Okay. Basically everyone. Everybody. But not everybody.



PARTICIPANT: But don't tell the sysadmin that I said that.



TED: How many of you have the authority to deploy to a public server that readers could get to?



PARTICIPANT: I just did right now.



[ Laughter ]







TED: Yeah, so would you have to go—for people who said they could actually do that. Would you have to go through anybody else to get approval to do that, or you can just...?



PARTICIPANT: Maybe I should... I know somebody on my team, there's communication that you know what's publicly deployed.



PARTICIPANT: Not if it worked.







MIKE: I want to go back to the comment just a moment ago, that was like, if anybody here has an organization that some hose policy about how you go through that decision-making process, and acquiring software, deciding what to use, I would love to hear about it just because that is, like, so vastly different from every other experience I've had.



PARTICIPANT: So we're starting to, I'm with Condé Nast and trying to define some of this right now. And I think our approach—this is not written in stone, there hasn't been a approach. It's a whole different brands, and they don't know what they want. And increasingly, they're starting to, like, pull together, and starting to make these central decisions. But I was going to say, there's a really good post from a guy who used to be the CTO of Etsy called Kellen McCray on technical debt, and if you think about technical debt, that's a bad thing to take on. But if you think of it as an inevitability, start to broach the problem very differently. And so, as I'm thinking about, like, how do we, as an organization approach this question, it's sort of like we're big enough that each individual should just make whatever decision they think is appropriate but sort of like sense check it with people, and try and make sure that there's kind of an architectural plan, and, you know, some kind of, you know, this is generally the direction that we're heading. And, like, little—not everyone has to use exactly the same tools because, you know, people need different tools. They need to try different experiments. We need to try and take on some of the technical debt to see what works, and doesn't work, otherwise we'll never find that out. And it's really just saying if you're going to go and take—if you're going to implement something that's going to take us in a totally different direction, then we should talk about that, and have some sense of where we're going before we do that. And that's sort of—that's kind of as far as we're looking at defining this stuff. I don't know about that.



PARTICIPANT: So I have an organization of to people, we have 20 developers. So my goal is to keep the stack really type. To keep whatever language on the server side, like if it's Python. It's bringing people, people, saying, we're working this way because we now deploy, I don't know, Node.js, Ruby, and Haskell, and Closure, as well. In two years, we can't work with that, right? Because no one knows what's going on. So that's basically we're restricting ourselves to one server-side language. And there have been experiments. We're trying, basically to keep our main infrastructure very homogeneous.







TED: So discounting front end JavaScript, how many people here work in multilanguage environments? That's actually a lot, right? I think that's interesting, right? I think that's one of those things that you have to reinforce with culture, or by hiring...?



PARTICIPANT: Do you see that as an advantage, or a disadvantage?



MIKE: It depends on, like, the way your organization works and how long you intend to maintain, sort of, the projects and whatnot. Maybe you, like, don't care that, like, a project that you wrote a year ago, you know, needs to be updated on the software side, then, sure, everybody can, sort of, use whatever language they want, and you can keep a report, and never look back, which is weird but... I think it depends.



PARTICIPANT: I've definitely made mistakes, be like leading a project but trying to be accommodating, being liberal with that whole thing. Even with coding standards but it's totally bitten me PWH*EF ended up with very different opinions even within a team on how to handle things. And it's more awkward to change things, and even differently. You think you've said it okay, but, like, the number of spaces we're using, but still people will have different differences and then their practices for naming things, and then it gets awkward over time, but as time goes on, it gets slightly awkward.



MIKE: I think there was one more comment.



PARTICIPANT: I was going to say, I just left the finance industry where it's completely different, where there's, like, 20 steps to ever put anything on the public server, or a certain piece of software has to get cleared by ten different teams before you use it. So there there's always too much, as well. So it's nice seeing the whole other side of it, too.



PARTICIPANT: I think that one of the things like when you're talking about are you using multiple languages or how you're—how are you making these decisions, do people know that making these decisions is, like, all of these questions, to me, are, like, a privilege to ask. Because, to me, as somebody who works on in a newsroom on my own, I'm struggling to, as an interactive person on my own, I'm struggling to get stuff out fast enough just because I'm working. Basically there's the cost up front is so high to vet software super well. And to not just do what you can do, when you can do it. That it becomes really easy to take shortcuts, right? And so you learn that really early on in your career and then it comes back to bite you later. But it's like, oh, man, I wished I could ask these sorts of questions. Because I'm trying to get stuff down and out the door but then you realize that, I didn't actually set myself up for the future.



TED: Who do you ask—do you have somebody that you have to go to, how do I get this up and out the door?



PARTICIPANT: I mean, sometimes, it's Google, so I mean, it depends on what kind of question. Sometimes if you're asking software types of questions, I'm asking Twitter, or the Slack channel that I'm on with a bunch of individual different coders for newsrooms but sometimes you're just asking Google, and praying, do you know what I mean? Everything is held together with ducttape behind the scenes sometimes. But that's just the way that you have to do it if you want to be on a deadline, right?



TED: Yeah, totally. I think the commitments are different—Mike said, some of the stuff, you can just sunset and go. But DocumentCloud's API, I've had to keep consistent for five years, right? And there's things that I can't do to them without screwing up other stuff. So that's why I'm always curious about who people are asking, what level of competence there needs to be to be able to say yes, I'm going to deploy this successfully, or it's going to cost me six months, or six weeks, or whatever. Yeah.



PARTICIPANT: I guess, another thing to consider is your organization able to train people on this piece of software. We do a lot of Scalas, and we have Scalas classes for anyone who starts. So do you have that ability to train people on that new tool, or the CMS that you choose, I think that's important.



TED: That actually Dovetails with one of the other sessions. How many people works with an organization that actually has an onboarding process. Okay. I mean, like that's one of the really awkward parts about particularly this industry that I've seen. And depending whether you're on the software side or not, right, and even joining DocumentCloud, right? I joined DocumentCloud and then within a week, I was like, I'm deploying code that the New York Times runs on their website, I better not screw anything up. But that was, like, the introduction into it, basically.

And yeah, definitely scary. And but that also affects who you can hire, and how, right? Because if you have to only hire people who you know understand the problem set and you can trust to do something like that, that potentially narrows down who you can hire, who your teammates can be, and all that sort of stuff.



PARTICIPANT: That's where training comes in. You can hire other people, other backend engineers that know Java. You can train them.



PARTICIPANT: And it seems that it makes it hard to hire less experienced people and maybe get the value of learning from them, and then them learning.



MIKE: We have a couple of minutes left. Is there any other part of how you interact with software in your work that hasn't been brought up as part of this conversation?



TED: That you really want to know from somebody else?



MIKE: Or is there, like, walking into this session, a conversation that you thought that you would be having that we didn't have in this session? Was that a hand?



PARTICIPANT: To me, it was interesting that, for some of my colleagues, we write articles, and articles kind of don't have technical debt, right? They're published, and when I write software, I can't do the same. So that's why we have somehow different interests in how we spend our time. And we have lots of conflicts in that regard, and I found that very interesting. That was, like, the first time—I work in a newsroom for about two years, and it was very interesting to see this dynamic unfold. Has anyone else had that? Maybe in different newsrooms, there's a software department and a news department but I feel like that's...



TED: I think it's interesting that you think that articles don't have technical debt. I think there's a lot of aspects to that, you know, journalists fear and loathe having to do corrections, right? Or, you know, there are ways that stories can go up. Maybe somebody wants to out your sources. You know, there, I think there are aspects to the writing process, which are fraught. And even, you know, DocumentCloud has to deal with that. People post public documents and then we get to shoulder their debt because people will say, hey, that document has my personal address and my phone number in it. Who's going to fix that problem. So I think that maybe there is some technical debt there. But...



PARTICIPANT: But instead of updating the article, they write a new one. They don't care about the old one.



PARTICIPANT: That's one of our big pushes is constantly updating content that you can keep reusing.



PARTICIPANT: Do you give them new URLs?



PARTICIPANT: No, because we want the SEO and the trackers to keep going. But we keep pushing out the same articles over and over again.



PARTICIPANT: The reason she raised that question, I'm wondering how many people actually actively retired software.



TED: Who's actually actively turned off a piece of software rather than just letting it, especially bitrot? Have I?



PARTICIPANT: It feels good.



MIKE: All right. I think that's all the time we have, actually. We're already about a minute over. Thank you guys so much for coming. And... text and thank you very much for filling this out. We will encode this into a thing. Pretty much.



[ Applause ]
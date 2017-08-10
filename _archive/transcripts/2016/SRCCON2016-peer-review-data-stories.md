How can we peer review our data stories?
Session facilitator(s): Ariana Giorgi, Christine Zhang
Day & Time: Thursday, 12-1pm
Room: Boardroom

ARIANA: Okay. If everyone could start to take their seats. If we get get your attention. Hello. Thank you, Justin. Okay, so I'm Ariana Giorgi, and I'm a computational journalist at the Dallas Morning News. And I work on visualizations and, also, analysis Christine?



CHRISTINE: I'm Christine Zhang and I'm a Knight-Mozilla OpenNews fellow at the New York Times. I do a lot of analysis for data-driven stories.



ARIANA: So you are in the session how can we peer review our data stories. And I think the way that we came about thinking of this session was, I know, for me, personally, I had been in situations before when—and so, just to give you an idea, I come from a background, I studied motto and physics in my undergrad, and so I had had some math exposure before, maybe not as stats heavy. So when I was doing, I was working on a story one time, and I wasn't sure if the stats that I was approaching were the right approaches. And I wanted to talk to someone about it without, like, picking up the phone, and cold calling a statistician and being like, "Help me. This is why you should help me." And just relying on somebody's kindness and generosity and time out of their schedule to help me. And I've also found luck with other people, other organizations with backgrounds in math and JavaScript, than I do to go to them for their advice but I just really am interested in hearing about how other people go can about doing this, and how we can streamline the process, so that it's not just, every time I have a question, I announce something on the Nycar ListServ, which is what I think it turns into. So how can we make this an easier process.



CHRISTINE: And I, before this fellowship started this year, I didn't work in journalism at all. I worked more of an academic their think tank type of world, where peer review wasn't a concept that we do before publishing any, sort of, piece or story, or report, and we would openly share everything that we were doing, even before we openly publish everything. Sometimes we even give too much information and people don't want to listen to us. And I found that in journalism it's hard to do that, to share that, because, you know, if I have a question, it's really hard to share with the type of story that I'm working on because it's just inherently not in the nature of a secretive journalist to do that. And so I'm struggling with ideas on how to make that better or how to think through ways to get around that. So with that, let's get started. So how can we peer review our data stories. I guess you're here because you believe that this should happen. So I'm not going to go through the pitch of why we should do this. Traditional journalism: Make sure that information is verified.



ARIANA: Also, very quickly, these slides are available on the etherpad link.



CHRISTINE: It's attached to the session description on SRCCON. So if you look at the schedule, and you click on "session," you should see this link but if you have any questions, you should raise your hand. So I just wanted to go some things, a couple of data stories and what peer review kind of means to us.

So here's a data story from the New York Times. It's called the voting habits of Americans like you. And I really like this piece. It was visual, it was cool. You can kind of put in your age and your gender, and you can see, like, how, somebody like you voted in the previous elections. But, actually, like, in the footnote to this, it's hard to read, but it says that, like, the figures on this page are imperfect estimates because the data is secret, blah, blah, blah. Truth is unknowable. So they had to find a way to use survey data to adjust the election results. So what they ended up doing, which is on the next slide if I can... get it... okay. Was that they had a model that they ran, which was basically a support model, I guess, using general and overlap—sorry, whatever, generalized linear model and you get this by going to their GitHub website. So, like, the point is, this story involved a lot of statistical analysis that you don't see, like, on the page itself, but it happens, right? And they posted this code up, and so they get a point for transparency. But the question, in my mind, would be, like, oh, did you ask, like, some political scientist before you did this statistical adjustment, or not? And maybe you did but, like, I don't know about that. So that's, like—that's kind of on my mind because it seems like actually a weird thing to do. But it was a news story. This was another example from the New York Times but I will move on to other places. And keep in mind, I'm not trying to say that this is a bad thing, or a good thing. I'm just giving examples of what I've seen in data stories so far.

This is a piece by 538 about the kidnapping of girls in Nigeria that was in the news in 2014 because of inform incidents and so they mapped daily kidnappings, and used a data source called GDelt, I can't remember the acronym. But the problem with this piece was that the data source actually only includes media reports of kidnappings, not actual kidnappings. So the increase over time, could be due to an increase in the media reporting things, rather than it being an actual change. And so, a lot of people wrote responses to this like, this has no context. It's not meaningful. Source. Which was the OpenNews site, had a post on what they did wrong. And I thought this sentence was really interesting. For data journalists covering violent conflict, the imperfection of a dataset like GDelt places an additional burden on analytical transparency. So to their credit, they actually posted an editor's note saying that the piece was updated to reflect these criticisms, and probably shouldn't have been there in the first place.

And I don't want to pick on 538; I actually really like them. I was looking a lot for stories that are data stories that have had this type of criticism, and then were updated and revised afterwards. 

And this was almost the only one that I found. Like, usually when you see corrections in the stories, you see them because somebody misquoted somebody, or somebody put, like, somebody's name wrong, or just like spelled something incorrectly. You rarely ever see corrections due to data type errors. And I think it's kind of telling that this is one of the only ones that I could find. And then the other one that I did find was a one by the Economist which we can also talk about. It was a ranking of their—it was a ranking economists due to media influence. And they said, "We analyze influence online. We looked at a list of 500 economists, plus some. We chose ourselves." And, like, this was a listing of the most influential economists in 2014. And it got a lot of criticism because people said it didn't include women. And people were just generally confused about the methodology, probably because there was no methodology posted with that listing, like, beyond that small paragraph that I showed you.

And so, then, this was, like, similar to the 538 thing. They posted, like, a follow-up saying, actually, here's a fuller explanation of what we did, and, you know, we've decided to recrunch our numbers, like, taking into account other people's comments and criticisms. And, you know, then, like, Justin Wolfer, he's a really famous economist tweeted about this, as well. And he was like, to be fair to that, it's just like that media isn't citing female economists. That's why they're not on this list. But it was not immediately clear that what they were reporting was media citations of economists, not like their own personal judgment and influence. So yeah, the point, I think, for me, is that peer review should involve two elements. Like, it's great that the Economist and 538 are transparent and take into account people's criticisms but maybe, like, they shouldn't even have ran people this story in the first place. Maybe it should have gotten to the point where, in the case of 538 were totally wrong, and in the case of the Economist, not very accurate. Maybe somebody should have, quote-unquote, peer reviewed it. And it means two difference things. To us, peer reviewed, means two things, one, before publication, investigate your methods, and just doing a sanity check. And it's not immediately clear that somebody in the newsroom, like an editor can do this for you, if, say, you're the only person who knows the statistical method. Then, by definition, you have to find somebody from the outside to check your work, right?

Then there's also the post-publication portion of peer review, which is something that academia doesn't do enough. So here's, like, where journalism can, like, really get a one-up on that. Like, post-publication, like, making your analysis transparent, and making that reproducible after the fact, like posting it online. Like you could run their code if you want to, right, and take a look at their model. So yeah, those were, like, the two elements. And for our discussion, we wanted to go through, like, some of the fundamental questions that pertain to these two questions.



ARIANA: So our goal today is for you to walk away from this, not necessarily, okay, before every story, I have to go through these 20 steps before I publish, you know, nothing would be ever be published on time. But what we do want you to have is a better sense of what needs to happen in certain situations. What kind of stuff is required? What kind of stuff is not required? And it's hard because, I think, as we get, you know, as our data sources grow, we get more—we've gotten more and more access to, especially large datasets, more interesting datasets over the years, and as we start to write more stories that are accusational, or, you know, could definitely harm someone if we published them, we need to hold ourselves accountable in a different kind of way, not just throwing out, you know, as you eat more pancakes, your hair gets longer. So things that would actually be useful published. So what we want to do—and also, if you walk away, too, with a better network of hey, I met this person who's really good at math things, or stat things, that would be really useful. So what we're going to be do right now, is break out into groups of three or four. And I would try and mix with people who you usually don't work with, right? Because the people who you usually work with probably have the same ideas as you. So...



CHRISTINE: So I'll come around with paper and things to write on.



ARIANA: And we're just going to run through these questions. And you don't have to have—we're just giving you paper, so you see jot down thoughts. But we're going to discuss the answers to these questions after, or not—obviously, the hard answer because there are no hard answers but, just to get other people's thoughts.

So we're thinking about things: What should be peer reviewed? Obviously, that might be, like, an easy question but there's some—there's going to be some stories that are just kind of, like, it's unclear—do I really have to ask people about this, can I just do it myself, and be okay? How do we peer review it? What does that actually mean? Who are our peers?

And an interesting problem is, like, what if you're the only one in the newsroom who knows how to do it? Who do you talk to? Is that, like, someone else in another newsroom? Do I call a statistician? Do I call academics?

So how much peer review do we give? Like I said, like, it's not worth spending, like, a week on something if it's timely, right? And are there guidelines for it that—this question's a little bit more general but, like, where do you think the lines in the sand are? And then, the fourth question kind of deals with post-publication. So what is the ideal level of transparency after the fact? Right, there's, like, one extreme where I give you the whole run-down of every regression that I made, and, you know, I tried this, and it didn't work. I tried this, and it didn't work, and I posted my code to GitHub and I'll give you all many I data so you can reproduce it. But sometimes that's not—that's easier said than done, right? Like, you don't necessarily want to give all your data, or you don't think your readers would understand if I go through the whole process. So what is the ideal level of transparency? That's obviously going to move per story, right? So I going to give yourself five to ten minutes to talk about this, and then we'll rediscuss and put some of our answers up on the board. So...



 [ Group Work ]



All right. Another three minutes or so.



CHRISTINE: Hi, hello. So thanks for discussing. I hope that you guys have had fruitful talks. So now, we're going to just try to kind of map this out, and write down some bullet points. Clearly, this board is very hard to see from here, even. But, Ariana will type it in the etherpad as we go along, and I'll just write it down so I have something to do, too.

So yeah, I guess we can just start from the beginning. Like, I see, like, the first two questions as, like, part of the prepublication grouping. So what, you know, what's the criteria of the types of stories that should be peer reviewed? What—does anybody want to give—summarize their thoughts on this question?



PARTICIPANT: Okay. So we kind of broadly charted out everything from, like, hey, just normal copy that has the numbers in it, at the one end. So smaller, standalone charts, graphics, that are their own thing. And then large scale, investigative analysis, that are consistently grounded in data. And those would be peer reviewed.



CHRISTINE: Okay. So numbers, charts, and investigative stuff. Yeah.



PARTICIPANT: Yeah.



PARTICIPANT: Sew, sort of, looked at it less about types of stories, and more about types of claims, right? If your entire story hangs on a claim, maybe you should double-check it. If it's something that's more incidental, more just of a detail, you know, check it if you have the time, but if your entire story rests on this, and you're going to have to retract the whole thing if it's wrong, make sure it's not wrong.



PARTICIPANT: So a use case example that we worked on, that Jeremy came up with was that if there are sources that are telling you that crime rate has gone up in a certain region, this is something that can be verified by data. So how can we verify that rather than using those two sources.



CHRISTINE: Okay. So when your data is not the only source.



PARTICIPANT: So comes from sources that can be verifiable by data.



CHRISTINE: Okay. Does anybody else have thoughts on this? Yup. Rachael?



PARTICIPANT: We also had a category that involved modeling our prediction.



PARTICIPANT: Yeah, so we talked about how it was coming up with a lot more things where it's not like the claim might be right or wrong. It's, sort of, like there might be lots of ways to perceive it, so what way are you presenting it?



CHRISTINE: Wait. So sorry. Back to the data not being the only source for the story. And you have, like, humans who would verify the data. So in that data, would the story need to be quote-unquote, peer reviewed?



PARTICIPANT: Yes.



CHRISTINE: And then, what are people's thoughts on how we should go about doing this?



ARIANA: This is the more difficult question.



CHRISTINE: What is the format that it would take. And how have people done in the past using your own stories as an example?



PARTICIPANT: A human double checking a spreadsheet.



ARIANA: And what human is that? Is that someone you work with?



PARTICIPANT: Yeah, another reporter basically, just going through, and when you're collecting your own data, it's just someone else kind of looking through, and basically copy editing you, just to make sure your numbers and all that are adding up, and doing spot checking on various things.



PARTICIPANT: You could also do something in R, or someone else could do it in Python and do it in pairs, and see if we can get the same result.



CHRISTINE: Yeah, so somebody using a different method to hopefully get the same result?



ARIANA: So two people saying, like, okay, let's both try and figure out what neighborhood has the highest crime rate? Like, let's not talk to each other about it; let's just try and approach it different ways because I think that would also, if you're both, like, let's use this regression, right? That would still pose a problem, no matter what language you're doing it in.



PARTICIPANT: I'm just following up on your point now. I think it was an interesting question about methodology, as well. Because yeah, you could both run the same analysis, and run the same R script and get the same answer but if you run the wrong regression method, that's a problem. So I think there's a problem with methodology, with a certain dataset, what types of analysis do I have to do. That's difficult. And then you need to have somebody who has training in this, or a friendly academic, or something.



PARTICIPANT: I think I'm actually okay with two people inadvertently writing the same type of analysis, as long as they came to that conclusion independently. Right, if two people have chosen the same method, to me, that at least somewhat backs up that choice of that method.



PARTICIPANT: Sure.



PARTICIPANT: And it still guards against like oh, I passed the wrong arguments to this method, right? You know, our equivalent of typos.



CHRISTINE: How often do you think it happens that two people work in parallel on the same question, in different ways? Because what I'm picturing is like...



PARTICIPANT: Don't have time for that.



PARTICIPANT: Never.



CHRISTINE: I don't even think it happens in academia. Like, I would imagine what somebody says, your challenge is to answer this question about our crime rates correlated with something else. Go! And then, two people would, like, you know, sit independently in two rooms and, like, do this, parallel, and then they would compare. Like I feel that doesn't happen.



PARTICIPANT: Actually, it does happen in journalism. That's because all different newsrooms are trying to independently reach the same conclusion. So it's a whole bunch of different polling predictive models that the newsrooms have launched and in theory that's what we're describing, people trying to independently reach the same conclusion, and pretty much always arriving at different answers.



PARTICIPANT: But I can put up a great example because in the state of Wisconsin, a handful of newspapers, everyone with the same sort of, with the election coming up, everyone gets the same campaign finance data and so we'll try to get our information out as quickly as possible but what we'll do is look at the other Wisconsin newspapers the following day and say, how'd you get there? Do they have the same conclusions that we did, and do they have the same people in the top, and stuff. And we'll compare and that's not something that we do ahead of time, because we're competing to get the data out. But afterwards we'll say, how'd you get there?



CHRISTINE: Okay. So that's interesting. So you have the competition, which makes it independent, and then afterwards, you do, like, a post-mortem, who was the best, and who wants to talk about it type of thing?



PARTICIPANT: Someone wants to talk about it.



PARTICIPANT: So one other idea, the way that my team usually handles this is not independent of limitations, but sometimes pair programming and writing it together. Sort of depends on the project, but at least a sanity check where somebody else who didn't do this steps through, and says, oh, yeah, those decisions make sense.



ARIANA: And so, going off that question, I bet a few of you here, and I know the people that I talked to are the only people in the newsroom who know how to do this, right? And so sometimes it doesn't make sense to obviously ask someone in your newsroom because they're just going to be, like, yeah, that sounds right. And that's not the kind of answer that you want. And sometimes, you might not feel comfortable calling someone up, and being like, hello, I don't know you don't know me. But I was wondering if you were able to help me out on this project that you probably don't have time for. So what have—and if you don't have this, if you have, like, an example of an instance that you don't want transcribed, or you don't want to leave this room, we can respect that.



PARTICIPANT: Does anyone in here use the stats.org journalism help? Have you used it?



PARTICIPANT: I just used it for a project that I worked on.



PARTICIPANT: What is that?



PARTICIPANT: So stats—so I just saw it recently. It's through stats.org, and there's a journalism web. It's like a web form where you can write, like, a question and use it.



PARTICIPANT: Yeah, I used it because we got some data. So I work in Germany, and the data that I work in is a different language. So for me, that's a limitation. But the project that I recently worked on, one programmer I did it in R, and he did it in Python. And we brought it to the stats.org folks, and they took two weeks to take a look at it, and I think it's pretty valuable. But the only thing is that they obviously have to have the time and you have to have the time, too. So we didn't have a deadline so I think that was beneficial.



CHRISTINE: So stats.org, the link to stats.org is in the resources section of the etherpad, and if anyone else has other resources that they would like to share, feel free to add that in.



PARTICIPANT: My only experience with them is I took a stats class with with them, and I think one of them, actually the head of it was in my —







CHRISTINE: Rebecca Goldman from GMU?



PARTICIPANT: No, Michael Levine. But I really liked him, and his ability to explain in human terms what is happening in stats. So that's a personal reference. Take it for what it's...



ARIANA: So we also talked to Rebecca, who's one of the professors who is on this kind of open panel who, they make themselves available. And she said another way that they can be used, and I think it sounds like the most common way that they're currently using it is for being like, if there's a study and you want to say, and you want to write about it, am I even interpreting it right, right? Like, that's something else that someone else did, and you're not even doing any analysis on it. You're just trying to put it into common terms, but sometimes, even the abstract is so dense with jargon that you can't—like, how do I word this in a way that not only stats people can understand. So maybe even just saying, hey, can you look over this really fast, and make sure that I make sense when I'm talking about it? And to have another set of eyes being like, "Yes, that's what I was trying to say." Or that's what was someone else was trying to say is really helpful.



CHRISTINE: And Rebecca did say that, primarily, though, stats.org is, right now, focused more on statistical literacy. Like, they go around to newsrooms to train people in the use of statistics, and in basic stats methods. But there is a portion of their work that's dedicated to journalists asking those sorts of consultancy questions, whether it's somebody that's covering a story that has some report with statistical analysis and they need to ask stats.org, is this even, like, valid. Or it's somebody doing their own data piece. But stats.org, she expressed probably just doesn't have enough resources to, like, what if all of you suddenly, tomorrow, used stats.org? Like that's not... like it's great that there's a network out there. It's not enough. So yeah. I guess the solution on how to peer review would be to phone a friend, being stats.org, or your friendly stats professor from the outside, right?

Is that, like, what we've come to? Yeah...?



PARTICIPANT: I think so. I sort of wonder what the role is of non-data, non-stats subject matter experts in our research organizations, right? Like if I'm doing something about climate, should I ask a science reporter, who may be hasn't worked with client data directly but at least has a sense of how these things are supposed to work, and might, in turn know who to ask.



ARIANA: Right. So that was actually one thing that I had in mind when I was thinking about this, is that I often, there's, like, a really helpful Slack group that I'm a part of, where it's some people who have more math knowledge than me. A lot of people who have more JavaScript knowledge than me. But it's really easy to sometimes turn to them and be like, hey, I trust you. I've seen your work before. And what would you do if you were me? You know, like don't walk me through the process. Don't be like, here's the SQL query you need to run. But what method might you go about using it? Does anyone else have, like, a similar group of people who they turn to? Would it be useful if there was one, like, maybe in the Newsnerd Slack? And keep in mind that these forums exist. But at least I haven't found one that's specific enough for, like, let's talk about things we're unsure about. Right, there's things that are just like here, let's just discuss whatever. And that's, I think, where it's like NYCAR gone wrong. It's like, where someone sends out a question, and, like, 30 million people respond. And also, like, when you don't want—if your story is really time sensitivity, or if your story is actually, the matter of it is time sensitive and I don't want to tell a thousand people what my topic is because, like, I want to make sure no one else covers it, how do I confide in someone?



PARTICIPANT: So I'm not in the newsroom but we have a weekly meeting at my company called Math Time, which is where we, like, sit down and discuss our stats problems, and, like, modeling problems. Just as like—or if we don't have problems to discuss, we discuss interesting new methods that we're interested in. And it's been a pretty effective way of spot-checking my modeling work with my coworkers. And, like, by just designating an hour a week, it's typically a Friday, an hour at lunch for us, where this is where we're going to nerd out about stats stuff that's been really useful.



CHRISTINE: So how many of you can turn to people you work with to check your stats data work? And how many of you don't have anyone to turn to inside your organization? Okay. Interesting. So, okay. When do you actually not want to talk to the people who you work with, and you want to talk to outside people? And if that happens, who do you turn to since you guys seem to be the majority already, the people who have insiders to talk to? Yeah?



PARTICIPANT: So I have an example. So I work on campaign finance. And I would say that I have two asset organizations that I talk to all the time that are very different. They cover in a very different way. So I'm at the New York Times, we cover it in sort of general like one story a month about campaign finance but, like, right away, I'm pretty general. ProPublica writes it in the very broad sense. They might have their everyday thing but they might write one story a year about it. And then story public writes everything about campaign finance. And because of that, we're basically, there are things that I cannot talk to them about, but very few because for the most part, we just have totally different focus and totally different audience. And that has been, like, super helpful. So I guess the general advice there would be like find people who are working on the same thing but at a different granularity.



ARIANA: And I think you're right. I think it's very rare that you probably have—you might be competing for the same story. And, in that case, it's nice to, like, help each other out.



PARTICIPANT: But I don't talk to Election Post about it.



CHRISTINE: Yeah, so no—so this is interesting to me. So even if the Washington Post and the New York Times both are talking about campaign finance, and the LA Times, I mean —



PARTICIPANT: I mean, everybody, yeah.



CHRISTINE: Everybody does this. But we never actually talk to each other about it, ever.



PARTICIPANT: Well, certainly not in realtime. But not on a Friday night.



PARTICIPANT: The thing that I can't get out of my head is that, peer review works really well after you publish because everyone wants to jump on your analysis and tell you you're wrong.



PARTICIPANT: Right.



CHRISTINE: Yes. Yeah.



PARTICIPANT: And it's great that you can correct it, but at the same time it means that for a day or two, you have wrong analysis published, right? I mean, that's not ideal. So how can you almost prepublish for a few select group of people, and let them jump on it and rip that apart, maybe people that generally disagree with your analyses, how can we do something like that, and get the people who like to jump on you, jump on you before.



PARTICIPANT: We've talked about this at NPR on how hard it is to find an advers ary. So this is one of the things that's nice about competitors. Instead of people saying, this is good for for you, congratulations, nice job. No, we don't want that. We want someone who's super mad at us because that's what we're trying to fight TKPW*EPBTS. Because being wrong is easy. That's black and white. But the thing that I'm working on is coming to a conclusion that is unnecessary, or silly, or orthogonal to, like, the thing that I need to be going to. What's the most important thing in the story. What is the core? `and that's the thing that we differ from our competitors because we'll look at the exactly same dataset and then we'll come to a conclusion of what's important about it. But the part that's so hard about it is how do you decide what's the most salient point, what was the most salient thing. And that's where we would have the most trouble. We would have to most adversarial response. We focus on Trump, or some backreferences. Or we focus on some other thing. But that's not right at all. We focused on some entirely other thing.



CHRISTINE: But if you prepublish your false and say, this is what we're thinking about. That's almost revealing your secret.



PARTICIPANT: How's that different from editorial judgment, too? I mean, that's what newspapers do all the time, data or not. And that's part of what makes you better or not than the competitors.



CHRISTINE: So ProPublica did?



PARTICIPANT: So ProPublica had this big project last year, the surgeon's scorecard. And so, they did—one of the things they were talking about in our group over here, which was if you would need to write up some methodology, or some, you know, paper to defend yourself against criticism, try to write it up front so that you're not writing it on deadline later. But then, also, once you have that, consider passing it around. And so, like, I know ProPublica wrote this 40 or 50 page white paper on the search and analysis they did for scorecard, and one of the things they had was, before publication, they shared this with some physicians' groups.



CHRISTINE: So before publishing this story, they published the white paper?



PARTICIPANT: Right, so saying, here's what we did. Here's the analysis we must and why we made the decisions that we did. Does this make sense to you?



CHRISTINE: Okay.



ARIANA: So but to a select group of people. So not just like, hey, everyone, I want to know your opinion. Because that's like opening up the flood gates.



PARTICIPANT: So I thought that was a really smart way to do that. And I mean, that was, sort of, the extreme version of the Nerdbox. Because a lot of us have written these methodologies and stories but I don't think that any of us usually write them to 50 pages long. But I thought it was a nice level of detail for the kinds of people who would be coming at them. And I guess that's what gets to the editorial judgment point, you know, some stories warrant that treatment, and others don't.



PARTICIPANT: So I'm curious, in that white paper, did they reveal the results of their analysis, or was it, basically, here's just our process for how we would have come to this conclusion and you're just kind of the —



PARTICIPANT: I forget. I think there were some examples, right, like, so after we did this, this person at this hospital had this result. You know, I don't think this included the full, you know, list that they were ranking people off of or anything. But...



ARIANA: That's kind of an interesting —



PARTICIPANT: Here's some example outcomes.



ARIANA: That's an interesting point, though, but I think some—it kind of reminds me of a situation, where if you've ever done those tests, where it's like, pick which views you like, and at the very end, it tells you which candidate you match up with. So, this is why it's kind of like, here's what I wound about doing. And then someone else is like, okay, that makes sense. As opposed to being like, I came at this conclusion, and this is how I did it, because people can, right away, oh, I don't like that conclusion, and it's kind of like pre-biasing themselves to the way that they did it. So maybe explaining it first, and saying, I went about doing it this way, and do you go anything wrong with that?



CHRISTINE: I really like that. I really like the idea of presenting the method and forgot even revealing the conclusion, or how we got it. Because then people comment on the method, not the result.



PARTICIPANT: Now, I've done this with federal statistical agencies where it's like, hey, I'm working with your data, here's where I queried against it to try and answer this kind of question. Right, I didn't tell them what my answer was. But I told them what I did, and why I was doing it. And sometimes they told me, that's a good idea. And sometimes they told me, no, that's really dumb. Do this other thing instead.



ARIANA: So I kind of want to just—since we're almost talking about it, I want to push us over the edge and talk about transparency and the ideal level. So this is less of like—we talked a lot about, and I think we hit the third point on how we went about drawing, and how we should do peer review. But I want to us talk about the peer review after the fact, how much transparency do we allow? And obviously, this will change on both stories. As someone made the point earlier. You know, you could have a basic story and a chart story, and, like, a really intensive investigation. And probably in your investigation, you should give more of your methodology than, like, the numbers one where I took the proportion of people... you know, you don't need to go that in-depth. But how do we make sure that people can appropriate criticize us, but also, when they do, do we write notes? I mean, obviously, there's going to be, like—there can be one angry person for every story that you write but you're not going to rewrite your whole story to appease that one angry person. But at one point are you, like, okay, I probably did something wrong. Let me go back and start to walk through this. And then, in that case, do you start to call people, maybe people that you didn't call before and you're like, did I do this right, what could I have done better? So has anyone been in that situation, or did anyone talk about it within the groups?



PARTICIPANT: I think we talked about it, when maybe not a methodology, at least what's your code, or what you have done. That's the first step.



CHRISTINE: So a human readable version? Not code.



PARTICIPANT: Even if it's a sentence. Even if it's a sentence, we analyzed blah, blah, blah dataset, here's where you can get enough of the data that you can recreate this piece.



CHRISTINE: So that's a good. The minimum. Yeah. So, actually, since we only have five minutes, and I know you have lots to say on transparency, Dan, and I are going to the Stanford Computational Journalism Symposium where we want to ask questions about how often do newsrooms publish their data and code. And if you are so inclined, you can take our survey. The link is here. It's also on the etherpad. But we're... like we're doing a survey about when and how newsrooms publish their data behind their data stories and we're looking at, like, GitHub and things like that. So that was my plug.



ARIANA: And since again, this is kind of like a sidestep on peer review. So I don't want to go, like, too into the weeds but then how do we—like, do you publish all your stuff on GitHub just all the time, or do you... basically what do you open up to other people so that they can criticize? Well, being courteous to both yourself and to other people.



PARTICIPANT: My professors just published their datasets upon request. So they'll be, like, oh, if you want to learn about all my methodologies and entire codebase, and methods and anything, I'm happy to walk you through it, even over a phone call, or something like that. But you're not going to let any Joe Schmoe dig around it.



CHRISTINE: Hm. That's interesting because half the time, I have—at the Times I had a similar conversation with someone because we got an email from, like, somebody and they were like, can you give me your data for this story. And the person who got that email ended up writing the whole methodology and data segment on the LA Times website based on this story and I was like why didn't you do that because you could have done that with the guy with the data. I think it was more than one guy. But he said, well, I don't want to be viewed as `, like, favoring one person, and only giving one person the data. So if I'm going to give this person the data, I should give it to everyone. Which I thought was a very democratic viewpoint.



PARTICIPANT: I'll push back a little for economic or institutional reasons. Like, so I work for the AP. Like, we absolutely want to play favorites with some of these things, in the sense that, like, there are a lot of national data stories where we'll help other organizations write local versions of them. But only if they're AP customers, right? Like, if they're already people that are paying us for that national story, we will gladly help them and give them access to what we've done, or who did it.



ARIANA: Right, so I'm going to play devil's advocate. So if I'm an independent reporter and I don't have enough money to purchase the AP dataset, like, if I call you, and I'm like, "Hey, I think what you did is wrong. I want to double-check. Can you walk me through what you did?"



PARTICIPANT: In a correction context, we would probably do that. I'm not the editor for my team to I'm not making that call.



ARIANA: I'm just throwing that around.



PARTICIPANT: Before at least in terms of the prepublication stuff that we were talking about, where we're working with people, and at least, sort of, giving them the opportunity to make their own versions of this, like, that is stuff that we like to keep limited to a particular group of people.



PARTICIPANT: And I think sometimes there's personally identifiable information you don't necessarily want to give that out to people. Even if it's anonymized, they're anonymized enough that you can identify it with like someone in this zip code has this health infliction or whatever. You can absolutely identify them like that.



PARTICIPANT: That reminds me of BuzzFeed's tennis story about tennis players that were rigging their data. And BuzzFeed is always really open about their data and their investigations. And so they wanted to show how they calculated, through betting odds, who did what, and then I remember some students in Stanford, I think, where the first, like, based on the betting odds they used could identify the first 15 players they named. And BuzzFeed had made an editorial decision not to name the people they thought rigged it. So there is a lot. Even the favorite—even just publishing betting odds, it gets difficult because you're crossing certain things when you do that.



PARTICIPANT: Interestingly, as a direct result of those players being identified, as well, someone was able to take one of those players that BuzzFeed wrote flat and shared that none of their stuff was actually suspicious. So by being lax with their data, debugged their own stories.



CHRISTINE: Well, that's, like, the pitfall of transparency, right?



ARIANA: But also, it helped, right, and I guess, and you could be like, well, actually maybe we were wrong. I don't know, right.



CHRISTINE: I almost put that story up, but it's so complicated that I thought it would be hard to talk through. But it's an interesting case.



PARTICIPANT: It's still a good lesson, though, I think, because it essentially proves that by putting data out there, you will find out things that you could have done differently or better even though in this case it was maybe to their detriment. Like, it's a good thing to know.



CHRISTINE: Yeah, imagine if, like, everybody did put up their data, how many different things we could discover. I don't know. Not even wrong things. Just different angles or whatever.



ARIANA: So since we pretty much are running out of time...



CHRISTINE: Take my survey! Or come talk to me, or Dan, or Ariana what you think about these issues, we'd love to hear your perspectives, especially since there's another conference coming up. And it's certainly an interesting topic that I would like some more systematic knowledge about.



ARIANA: Yeah, and so in the etherpad, it's pretty much all, like, the bullet points that we've listed. I also think, it seems like taking away from this conversation, it might be useful to have a place where... you know, maybe that's a, you know, Slack channel or something where, if you are working on campaign finance data, but, like, as a certain organization, and you say, you know, it would be really helpful for me to talk to someone else who's in campaign finance. So maybe the question you ask, like, to find someone else is, hey, is anyone else dealing with campaign finance also, as opposed to hey, I'm dealing with campaign finance, and this is my question that I announce to, you know, all the people who are on this Slack also.

So that's something that could possibly be set up in the future. And if anyone else has any other ideas about, you know, ways that we can do a better job of implementing this, like, implementing to facilitate the peer-review process and put you in touch with people who can help, I would encourage you to go into the etherpad and write, you know, actually maybe we use the etherpad to say, hey, I have a degree in math, and if anyone has any math questions, definitely give me a shout-out. Or hey, I remember talking to somebody who needed help in environmental studies and I studied environment. Maybe, like, just feel free to make it your own is what I would encourage. And I hope that this session was useful for everyone because it definitely was for me, I know.



CHRISTINE: Thanks.



ARIANA: Thank you.



[ Applause ]
Designing participatory algorithmic decisionmaking processes
Session facilitator(s): Tara Adiseshan, Linda Sandvik
Day & Time: Thursday, 2:30-3:30pm
Room: Innovation Studio 

PARTICIPANT: Welcome, everybody. I think folks are still trickling down from lunch, but I think we're going to go ahead and get started. I'm a little sick right now so I might b sitting down for part of the session but my name is Tara and this is Linda and we're really excited to have you all here.

This session title was called designing participator algorithmic decisionmaking processes, which is quite a mouthful. What are we talking about when we talk about algorithmic decisionmaking and algorithm as you folks may or may not know can mean really like a step by step set of  operations, often that's used to solve problems. We're going to be talking about algorithms, so like procedures that are used to input data into specific outputs in ways that make decisions about your experience. So this is anything from web services or apps you might use to experiences in the analog world that are also based on a set of procedures.

And when we talk about participatory algorithmic decisionmaking really we're talking about thinking about centering agency both at individual and community level, and trying to think about what that value prioritization looks like. Let's see.

I started thinking about some of these questions. I was an Mozilla fellow on the coral project and for the folks who don't know, it's the collaboration between the New York Times, Washington Post and Mozilla trying to think about build tools and I was doing some initial research on the project and started thinking about what tools could be ed for managing trolling or abusive behavior, and I started coming to all these questions around what it meant to identify trolls, or build tools that were based on identifying trolls, so things that might reduce visibility of folks, if they had particular patterns of behavior, and this all seemed great and really necessary until I started thinking about what it meant for me to be thinking about defining what—how to detect a troll, basically and the ways in which that might limit somebody's participation in an important online space, and I think comment sections are one place in which we think about participation, but as more and more algorithmic systems are  used in perhaps higher-stakes areas of our lives, Linda and I thought for a variety of reasons that it would really be important to start thinking about these and learning with community.

PARTICIPANT: Linda: And yeah, I did a degree in philosophy and computer science, so from the start, we we were kind of told how to ask questions, and you know, the computer was invented by philosophers, so it goes together, but yeah, ethics was mandatory and I'm thinking that maybe it should be mandatory for more people.

[laughter]

And I also started a company called hood club where we teach primary school children how to program, and after like a couple of years of doing that, I realized that it's really not enough to teach people how to write code. We really need to be teaching them how these programs are changing the world, how they're shaping the world, and whereas there's a lot of money in teaching people how to code so that they can, you know, make profit for companies, there's not as much effort being put into teaching people basically how the world works now. Because it shapes so much of how the world works. And yeah, so, Tara discovered this amazing reading list and posted it on Slack and I was like, oh, yeah, I want to read all of those books, but also knowing me, I'm like, I'm never going to get around to  reading all of these books, unless you have some motivation. So we started a reading club, book club, to read all these books. Like, if I get, I don't know, ten other people to read this book, that's going to force me to read it, right? That was the idea. So yeah, we started algorithm club which is a Twitter book club. Basically what it means is we find an interesting piece, and we come up with some questions, and people turn in using our club hashtag, and you know, yeah, we just take the discussion from there. So we've been reading, things like unwanted bias in search engines, and how, like, basically how search engines get a lot of power, and should we be granting that much power to search engines, things like have you ever modified your behaviors to change the way an algorithm like things about you? I certainly have. I have a Google phone, so I frequently have to go and delete things that Google knows about me. And yeah, just what are our responsibilities as individuals working at companies that maybe uses a bit more shady data collection.

Yeah Tara. So we're eventually going into a design exercise, but first we wanted to talk about some of the things about some of the readings and conversations we've had in algorithm club, as well as some excellent research that's been done about some of these issues suggests. And I think it's important to think before we even start thinking about algorithms and the decisions we might make for them, what makes it into an index in the first place. Meaning when I first started get Mo are into data vis  Houleization, data science, is that there is * no such thing as raw data. There are always assumptions baked into those procedures, and sometimes what's left out in those data collection processes is as important as what is actuallily collected after it's collected it's categorized and claimed to be used in whatever format it's put in. I think one example that is very well known is in 2009, Amazon marked, I think over 57,000 books, many of which had BT themes as adult books and they vanished from the sales list. So the takeaway there is not that Amazon is against queer folks in any way, shape, or form, but there were two underlying processes there that had to happen, which is one, that LGBT books were marked as adult, and a lot of consumers did not know that adult books were being removed from the sales list. So the problem there was not necessarily that it happened as much as it was not tested for or some of these things were not known, I guess internally or externally be able to think of what such an outcome might look like. This is another well known example an engineer found that his friend was tagged as a gorilla, and this could be due to many things. It could be reflective of the fact that perhaps Google didn't have the right kind of initial sample data, or it could be reflective of the fact that 2% of workforce are black. It could be reflective of the fact also that at the end of the day, in addition to this being political, it's a product failure, right? If a certain portion of your market or the folks who are going to be using your tool are not being served and the test cases that might include them are not being included in a bunch of ways, this is something that we need to be thinking about both in a way to ask critical questions, but also, what does debugging, testing or QA look like for systems that we might not be able to predict some of these outcomes. I think the takeaways from a lot of these examples is not that these things are intentional, but I think more in this day and age we need to be thinking about what the worst possible outcomes or unintended consequences of some of these technologies might be.

And lastly, just before we head into your design exercise, oftentimes, I think a challenging aspect of having conversations around decisionmaking system is that algorithms are frequently thought of, I guess at least in conversation as neutral or objective. When they're reflective frequently of organizational principles, even down to when we're thinking about how something is recommended or how something is popular or trending. A lot of times these algorithms are proprietary for good reason, it's very tied to a business model, and there are frequently cases being made for the ways in which folks might game the system if this were to be more transparent. But in systems where I think we want to have more conversations about transparency, I think there needs to be a conversation also about what interpret ability looks like, because often it's not so much that there's knowledge on the inside that the engineers know and are hiding from the rest of the world. Interpretability has to do a lot more with what it means to take data that is being used and make that a little bit more understandable both for folks internally working on systems, as well as for end  users.

And yeah, just one more thing about the last slide. Like, what can we do as journalists to try to expose bias in algorithms, and especially in the US, if you try to reverse engineer the algorithm, you could actually be accused of espy onage, like, getting the trade secrets. That's what the large corns are hiding behind that no, we can't tell you what we're doing, this is our trade secret and businesses have incredibly high protection. Which brings me to this line. I live in the UK and I just wanted to have a slide that shows how much I love the Eu. The eU has been great work, we still believe in the EU. Are there any other Europeans here? Yay! , so in the EU, we do have better rights, I would say, than the  US, in a the love ways. For instance, we have the right to access information about ourself and we have the right to be forgotten. That is, if—a corporation or a somebody has information about you, you can ask them to delete it and they have to do it. So you have the right to find out free of charge if an individual or organization has information about them, they need to tell you what information they have about you and why they have that information. Like not just how they collected it, but what they are going to use it for. And then you can also request to have all of that  deleted. The EU thinks that that applies to all corporations that have data on you sentences, corporations like Facebook and Google does not think that. So that's still being worked out.

But in April, they actually had a new resolution voed in. Which it's going to call go into two years from April of this year, so 2018, and the first one is the data subjects shall have the right not to be subject to a decision based solely on automated processing, including profiling, which produces legal effects concerning him or her or similarly significantly affects him or her, and basically what this means  is, an algorithm is not allowed to make a decision that affects you negatively.

I mean that's pretty big. Like, in terms of profiling and amount of profiling that that a lot of—even just like the police, right? They do a lot of profiling. Like, they wouldn't be allowed to do tha in the  EU and also, and I think even more significantly, maybe, a data subject has the right to an explanation of the decision reached after algorithmic assessment. So all the corporations have to not just tell you what data they have about you, but they have to tell you what their algorithms are doing in a way that you can understand it. And I think this is going to be really hard for people like me who write the algorithms, it's hard enough to even explain it to people in my team, right? But I think it's really good that they made this law. I think it's great, because it's an acknowledgment that when algorithms are deployed in  society, they shouldn't just be efficient, they should be unbiased and fair and transparent.

And also, yeah, it just highlights that, you know, the decisions aren't really technical. Like we want to believe that algorithms are neutral and it's so far for it. And this kind of says that we have to hold the algorithms to the same standards that we people. Like, people are not allowed t discriminate. Algorithms should not either. S so --

PARTICIPANT: Tara: Yeah, in thinking about our session, our goal was to sa it was not to say that analysis or decisions based on data is a bad thing. But it's also important for us to ask some of these questions and incorporate this into our work, what that would look like. I personally was not able to find a ton of examples of current I guess folks who are thinking about how to make things more interpretable. But this is a screenshot from my roommate's Netflix with their consent. Are folks familiar with group lens by any chance? So they're a University of Minnesota research group and movie lens is a recommender system that I think for me was really helpful to comparing two Netflix or recommendation systems. I think initially it looks very similar in that there are top picks and recent releases, but one example of they actually let you change your recommender and not only do they let you change your recommender or try to explain to you what those decisions mean, they also reference papers that if you are interested in reading, you can. Which is really exciting for me to see.

And I think Netflix does a certain extent of this, as well, but also there's a little bit more of very direct control of how you're assigned points and the ways that you're able to change the recommendations that you're getting. So with that as an example, we wanted to start thinking about identiifying some processes that we all experience that * our experiences are shaped by algorithms, and thinking about ways in which we could come up with some guidelines around either transparency or  interpretability, ideally if there's at least one group per person who can take notes on the etherpad so we all kind of have a record of this and can share this out, that would be great. So I think it looks like—sometimes that might mean like you splitting tables. So pick three or four folks around you and maybe take two minutes to exchange names and pronouns with those folks.

[group activity]

OK, if folks can either pick one or have like a top two, that would be great, because we're going to start sharing out very  quickly. Also a quick note, if folks have the etherpad up, I know some folks have made groups so we can have shared notes afterwards, and if you all don't mind  picking one person to share out what y'all are thinking about as an experience?

OK, can folks, can you raise your hand if you have one experience that you want to work on? Great, we have another two minutes to go from the conversations you had to  picking one. Great.

[group activity]

OK, for the sake of time, I think we are going to wrap up this case, but if you still have conversations that you want to finish or you're decing between 2 and 1, like battle it out. You can definitely do that in the next phase, as well. We're going to have a really quick share-out, so people can have a good sense of what people are thinking. Do you all feel good start snag.

PARTICIPANT: Yes. We're going to talk about Amazon ads.

PARTICIPANT: Tara. Thank you for—how many groups are over here? We have two groups?

PARTICIPANT: We're going to talk abo gender-targeted advertising that seems to be clearly missing its target and not understanding why that's happening.

PARTICIPANT: Tara: Cool.

PARTICIPANT: We're either going to talk about Netflix recommendations or something else, we're still decing.

PARTICIPANT: Tara: Cool.

PARTICIPANT: We're still decided. We're talking about experiences but we haven't decided  yet, so we should focus. We were talking about like your phone knowing where your home is, telling you it's going to take you 20 minutes to go to your home, and like doing an investigate on a special topic and then Google recommended you ads from that topic that you were only investigating about.

PARTICIPANT: Tara: Cool, thank you.

special shout out to a group that also has an algorithm club member in it.

PARTICIPANT: We're just looking at our recommendations and won from Tronc is here.

PARTICIPANT: Tara: Tronc! I guess.

PARTICIPANT: We're going to talk about presidential sampling ads.

PARTICIPANT: Oh, look, we are also talking about advertisements, particularly thinking about the implications of retargeting and when there are organizations that are maybe doing harm, so kind of the example that our target ot our table is  casinos, and not big targeting, but particularly that they think you're big spenders, that becomes problematic if you have a gambling  addiction. Where is responsibility in that algorithmic decisionmaking?

PARTICIPANT: We're going to talk about an algorithm that's existed long before computers and continues, which is how to match college roommates.

PARTICIPANT: Aming. I wish I had known more about that before I went to college. OK, so our next piece is if you have not picked one, maybe spend like the first minute picking one, but there are always conversations to be had after these sessions, also, so maybe you don't spend too much time on that, but next we're going to trying to think about what in this experience that y'all have selected, is obscure or not easy to interpret and when could you have more agency. So a couple of examples include I don't really understand when my data is being collected or what data is being collected or if the service shares data with other services. I don't understand why I'm getting these recommendations or these results. Are there ways in this process that I can push back or self-identify if I feel like this decision is not one that makes sense for me? So the idea here is to try to get just a list, again if you're taking notes, that's great, but to have a shared list before we start thinking about what alternatives might look like. So again, seven minutes. Go!

[

PARTICIPANT: Tara: OK, 7 minutes are up. And this time I'm going to start from the back and just a couple of sentences of several things you thought about where moments are obscured or you can have more agency.

PARTICIPANT: All right, so we were talking about the college roommates matching, and a lot of the obscurity is kind of like what the school does with the data, if they even use it, how they might weight things, how they make their decision, and then, so like the—you people actually do have a lot of their own free agency these days of like submitting their own roommates ahead of time, so basically taking the school out of the equation. And then, yeah, I guess another thing that some places do is like they let you pick your—so like on the initial questions, what you're looking for, similar to how OK cupid does on dating apps, and  actual actually started brainstorming on the dating apps, so yeah, obscurity.

PARTICIPANT: So we talked about the replication of ads, so like when you go on Amazon and you shop for one thing i like an iPhone charger, or something, all of a sudden, even though you already bought that iPhone charger, that ad follows you around everywhere and it's an interesting disconnect because on the one hand it's a pretty innocuous to have an I-phone charger around or another thing that's like a  health-related thing, or something that's borderline ethical. We were talking about the implications of like casinos chasing you around. And on the other hand it's curious that the biggest search engine that we all use is mastering behind all of that but there is a page in which if you go to your Google profile, you can find and remove certain topics, and that actually most people don't filter out all ads, so we were talking about that, and then just the where is the boundary between something that is like innocuous to show, like iPhone  chargers or clothing or furniture, versus something that's a health product or something like that. And, you know, that's just an exploratory kind of open for discussion thing.PARTICIPANT: Thank you. Yeah. I had never heard the casino example before, so I was fascinated by that.

PARTICIPANT: So as a reminder, we were talking about campaign and voer history was something that people don't always understand is public. Like we know if you vote in a primary, like it will go to the record that you voted in the democratic or Republican or green party party in this city and with that when you go to the general election, it's pretty easy to know where and when you voted and people are like, that's a secret ballot and that's true, but it doesn't seem like it in that term. So that was what we discussed.

PARTICIPANT: We talked about how your only real place of agency is to like click on things and then you'll get more things like that. Which feels not very agentive, I guess, but we clicked on—if you just clicked it and put in an email address and clicked OK, you would actually get more emails if you hadn't flipped down the menu to get it to like, give no emails.

PARTICIPANT: Tara: So QX patterns.

PARTICIPANT: Yes, we were talking about automation systems, I think similar to what other people talked about, we talked about this almost constant incognito mode or being able to opt out. Like seeing your history and saying please exclude this one from my later recommendations. Talked a lot about in addition to just the machine-geneed algorithm, are there business cases being included? Like this article is being recommended because the ad buy on it higher, things like that. See what else do I have here? The question of how various social media connections can influence article recommendations, not exactly article recommendation targeted where we talk about how Instagram ads are now fed by Facebook data, and how that is like kind of a confusing thing if you don't recognize that those two are owned by the same place.

And then I think lastly we talked about, is there a way to see your recommendation next at like a higher level, so if you're at a newspaper paper could you see like a pie chart, we recommend 50% of the articles are sports, 20% are opinion, like you could even see that and maybe even tweak that mix a little bit to match what you actually think is correct for you. Those sort of things.

PARTICIPANT: Yeah, cool.

PARTICIPANT: I got really interested in my Spotify discover weekly and Spotify shuffle a while back and I found that there are actually a lot of conspiracy theories around iTunes shuffle and Spotify shuffle and whether or not these companies are actually being paid. Lots of very interesting forum discussions if you want to check them out.

PARTICIPANT: So we picked the iPhone or Android travel estimate feature, where it will suggest to you, you know, oh, you're 20 minutes away from home, you're 15 minutes away from work, and you know, areas where that experience is obscured or where the user could have more agency is just, you know, a great deal of uncertainty about where that data is being collected from, particularly in cases where, you know, you might not have even given your address to your phone. It just sort of knows that you're in the same place every night and it just goes ahead and says that's home. It knows whether you drive or whether you walk, and they have all this information,  know, it's not quite clear what they're doing it. If it's available to anybody else. In some cases like in the iPhone, that information is available to you and you can see exactly what's being tracked, but there are ethical implications of that, also. Because what if, you know, like a jealous partner or God knows who, is on your phone and then who, it's snapping

We expanded a little bit from just gender mistargetting to more like gender interest in weddings and targeting and I think this set of questions we came up with is we don't even know if the ad itself is targeted. We don't know who they intend to target it. We don't know what we're doing that gives them the id that we want to see this ad. We don't know what we've told them about ourselves that's shaping this or if they're drawing conclusions from something else. We don't know if they're storing those conclusions or sharing that information with anyone, and to echo what somebody else was saying, it seems like our only real agency is to correct the record and give them more information about ourselves, which doesn't feel like it's helping our privacy at all.



PARTICIPANT: We're not talking about Netflix, we're talking about how some police agencies use data to assign where patrols go. There are private companies that create these datasets around historical crime data, time of day, that kind of thing. That data is difficult for people that live in those communities to get access to, necessarily. How police agencies choose to use that data is often opaque, and it's difficult to know how living in a certain neighborhood is affected by this other piece of data that you really don't have a lot of control over. Is that a fair --

PARTICIPANT: Yeah.

PARTICIPANT: Last group. Great.

PARTICIPANT: We were talking about Amazon recommendation system and so parts that you have agency over, there's—it's really obscure, but you can actually do it, where you say I already own this thing, stop showing it to me. At one point you were able to say I don't want this much factored into my recommendations, even if you purchased it as a gift or you bought it while you were drunk or something. We just talked about, you can click on a bunch of weird things you don't want to mess up the algorithm, so like generate noise, so you kind of that's not real agency, but it's fake agency.

What's obscured is the weighting, like how they weight the things they recommend you. How they attempt to determine gender. Basically all of the details about the recommendation algorithm. We also talked about like account versus session-based recommendations and how like if you share an account with someone who has a different shopping habit than you, then it cause problems, and sometime algorithm is really obvious and you could try to get wild on something. Did that capture everything?

PARTICIPANT: Cool.



PARTICIPANT: Thank you all. For our last piece, some of you already started talking about some of this, but what would it look like for this experience to be more transparent or interpretable and to maintain your agency within it and I think we have a lot of collective knowledge in the room both from folks who work on this from a technical standpoint but folks who experience about this in other ways, as well, and I think it would be great to start thinking about what kinds of resources would be necessary to actually make some of these changes, understanding that it's not always incentivied and if you were working on this systems, what is the same or needed in your own work to be able to do some of these things? Probably also 7 minutes. Yes. And that will be our last part of the design exercise.

[group activity>>

Snoop, PARTICIPANT: So we are running out of time, unfortunately, and I'm sure everyone would love to hear what you all have been talking about, so would you like to say one sentence about—is?

PARTICIPANT: OK, we were saying, like being able to provide an API to a recommendation engine so we can change around how it works.

PARTICIPANT: Aming.

PARTICIPANT: There's no opt-out button for where the police go.

PARTICIPANT: We were saying that people can follow more advertising groups could follow the Google and Facebook lead of why am I seeing this ad which revealed pretty obvious thing, but then as more machine learning methods get ed for this stuff, those sometimes can't be reverse engineered, so they might even say they used that so they don't have to tell us how they decided to target us.

PARTICIPANT: So we were talking about the travel recommendations on the phone, and the most obviou way, I think, to mitigate a lot of these problems would be to make the feature opt in instead of opt out so that you know exactly what you're getting into and you have to say, yes, I want this. Now, we understand that for practical reasons that's probably never going to happen, so instead, you know another solution might be to kind of offer another way through a feature itself, to view the information collected, right? If it tells me 15 minutes to home, there might be a little question mark and I hit it and it comes up and we think, well, this is where we think this is where you live for whatever reason and you can say, that's wrong, or you can say don't do this anymore, and then you have a very easy entry point instead of having to go through setting screen after setting screen, digging to find the check box to uncheck, which is the way it works now. We had more, but -P ...

PARTICIPANT: I'm sorry, we weren't running out of time, but I would for instance love to know why my phone keeps telling me how far away I'm from fried chicken. I've never been to this place, never, ever, and yet ever where I go, like the Guardian office, 25 minutes. It's fried chicken. I have no idea why.

PARTICIPANT: We were doing presidential ads and we just said, tell me what you know about me button.

PARTICIPANT: We were talking about ad targeting and we were talking about how if you could opt in to different ad topics or advertisi topics, so like, for example, Hulu, sometimes they'll give a choice, you can choose between two add experiences or two different kinds of ads.

PARTICIPANT: OK, so we were talking about the roommate matching in college, and I think one of the things that we setted on is this idea that instead of having like a standard questionnaire, that people would be not able to only create their own questions, but rate how important the answer to that question  is. So you might not care. You might be a messy person but not care what the other person is like, or you might be clean and not care, or you might care a lot. So giving people the opportunity to weight how important they think attributes are is really important.PARTICIPANT: I think the big thing is some sort of interface to allow you to change what's being recommended to you, whether it's being able to widen your algorithm to include more things or just being like to change the mix of different content pieces.


PARTICIPANT: We talked about a reset button, as well, just being able to like get rid of the stuff that everything you read last year and start anew.

PARTICIPANT: Yeah, thank you. Sorry that we ran out of time and we didn't have tim to hear about all of your brilliant ideas so if you didn't have a chance to say it, just put it in the etherpad. That's it from us. Obviously you should all do an algorithm club, and also, if you're interested in  working more on this, and maybe develop a set of guidelines for how to do this, please get in touch with us, and, yeah:

PARTICIPANT: Thank you, everybody.

 






This is a DRAFT TRANSCRIPT from a live session at SRCCON 2014. This transcript should be considered provisional, and if you were in attendance (or spot an obvious error) we'd love your help fixing it. More information on SRCCON is available at http://srccon.org.

Captioning by the wonderful people of White Coat Captioning, LLC
whitecoatcaptioning.com


Thursday
Session 13 - Sartre was wrong - Hell is data about other people
Session Leader Derek Willis.

> OK, so as folks are -- yeah, people will probably be trickling in and out, depending on how exciting I am, which is to say after lunch, not that exciting, so this is both a kind of a weirdly complex session that will test your patience and ability to remain in the room.  So congratulations on deciding to come here in the first place.

> So the resolution is not the greatest here.  Honestly I don't think we're going to be using this a lot.  But I wanted to do a couple of just introductory things.  First of all, I'm Derek Willis, I work for the New York Times.  Colleagues from the New York Times who showed up, your checks will be in the mail.  

> So the idea behind the session, which is data about people and dealing with data about people, is that this seems to me to be a common problem that we all kind of have, in that we all deal with or likely deal with datasets that involve individuals in one capacity or another, whether it's people who hold off office or people who are give money to run for office in the realm of politics or it could be people who have a particular license from the government, or some sort of standard that they qualified for and you have their names and other information about them.  And there are lots of problems around this idea of people data, but I wanted to focus this session on, I think, two or three of them, and it is totally, like the direction of this is pretty much up to all of us, which is to say it's up to you, you can output to me at any time, about which problems we might want to tackle or look at or explore, but roughly speaking, those problems are as follows:  And this is sort of degree of difficulty beginning with sort of the easiest or most solved problems at the top.  

> The first one is the parsing of names.  Like a full name into name parts. There are lots of different libraries and tool kits that do this in one form or another, but it's still something enough, it's still enough of an announce for people that there are multiple, the fact that there are multiple tool kits that this do sort of testifies to the fact that like this is still kind of a problem that people feel compelled to tackle.  In one, you know, they may have edge cases that are unique enough that force them to start writing code or they may feel that whatever exists isn't narrow enough or isn't in their language or something like that, so I think that there is still room for solutions of one kind or another, and I'd like for us to sort of engage in part brainstorming of what solutions, what that might look like, whether or not that's buildable and whether or not we could build, if there's anything we could contribute in the next couple of hours.  Now, that's ambitious but that's one part of it and I think that's sort of the easiest part of it because there is a lot of prior art on name parsing that exists.  

> The second problem is more of a standardization problem.  In other words, is this person the same as this other person? And that problem exists when you have a lot of individuals in a dataset, and whether that's again, like whether it's permit holders.  I encounter this a lot in campaign finance data, and there are again solutions to this problem, but many of them are pretty messy solutions, like the solutions that exist kind of range from at one end of the spectrum, from doing semi-manual standardization -- in other words, fixing things and then keeping a record of the stuff that you fix and then applying those fixes to new data as it comes in and hoping that it picks up most of those and then fixing the rest, to all the way up to machine learning, sort of like trying to train a dataset to identify people who are similar or the same person based on a certain set of characteristics, and there are some tool kits for that.  There probably are people who are a lot smarter than me who have even better tool kits for that that we don't know about, that maybe you know about, that we should be using as journalists in order to do this.  

> The third problem is really not much of a coding problem but it's more of sort of a community problem, which is why I kind of pitched this for SRCCON, which is that each of us has to do this at some level, probably, or probably will have to do this if you haven't already.  Are we reinventing the wheel too much?  Are we not actually building on what each of us or all of us together are doing?  And should there be something that does that?

> Like for example, should there be a name reconciliation service for political donors? that you can essentially you know, in one scenario say you get a filing with a list of donors in it and you sort of post it to this service and it tries to give you back standardization and/or IDs that correspond to who it's been able to identify those people as.

> **Sorry, do you mean like a personal database, so that everything would be in the system?**

> Yeah, or a system that is based upon maybe it calls out to other services, maybe it's an aggregator of other collections of data that have APIs and other way that is they can -- yeah, if it is a persistent storage you run into the issue well, that's a pretty big storage at some point, right?  But on the other hand like, storage is not really the problem.  Like you know that's not even that expensive of a problem, at least compared to a couple years ago.

> I think the problem is, is that like in my particular domain of politics, like I can't really tell you with a real high degree of accuracy, like how much money a certain person has given to state or federal races, like that's ridiculous.  Like, that's a terrible problem.

> Like, that's not something that we should really be proud of.  We should be able to fix this.  Because if you look at various sites in campaign finance, like the folks at center for responsible politics will say that some person have given this much money and other places might say it's this much money and another place might say no, it's a third number and they might be somewhat close, but based on the standardized data or what data they include or the policy of their parsing and standardization practices, you're liable to end up with multiple figures, which seems again, like imprecision is one of those things that bugs me, that we really can't say how much money a certain person has given.  We can get close.  I hate having to write at least in front of every campaign finance number I ever cite.  I mean can we do better than that?

> So like that's -- those are sort of the universe of problems, and again, maybe we can all we can do on the second and the third is to come up with an outline of like what we would like to see.  Or what might be possible.  Because I know that from my -- you know from my vantage point I've been banging my head against the wall on this for years and obviously I haven't come up with it on my own and as I age that's probably going to be even less likely.  I think that is something that we can kind of bring some muscle, some brains to bear in a larger scale that might actually get something moving forward in this.

> So what I'd like to do is there's GitHub repo under my account, and then other hyphened people, and then, assuming that the ethernet is, working here, and maybe it isn't ...  There's a couple things that I've done -- come on, CSS.  There we go.  There's a couple things that I've done in sort of preparation for this.  And I invite -- and what I want to do is I want to sort of spend some time discussing and you know, banging things around, but I'd also like for us to spend some time kind of looking at some of the existing tools, pulling out what we think we like, conceptually, like you don't have to be like I really like this line of code because it's elegant, because then we'll just have the Ruby and the Python people fighting each other all day.  So what we're looking for is utility, rather than, you know, elegance in code.  But and also like the kinds of things that you want to see or these particular tasks, parsing standardization, what would lend themselves, the best tools to accomplish those, and then what's missing, and I think like it would be great if in a couple of hours we could create a system or even a blueprint with coming up with saying hey, we're going to have the ultimate name-parsing campaign.  

> I'm selfishly thinking of even the civic universe, of like public data that's like people, whether it's politics or permit holders or things like that.  Like the smaller the universe the less the problem really this is.  For instance the campaign donors, the number of people who give campaign donations is blissfully small, compared to the population as a whole and it's largely a lot of the same people.  

> So at any point in this process, if people have, you know, questions ideas, whatever, you should feel free to shout them out and we'll kick things around.  I'd like to sort of start off by having people taking a few minutes, look at some of these tools, to the extent that we can bring them up on your laptops and even not like I said the code, but the description of what they do, and maybe we can compile a list of like the stuff that name parsers should do really well and then the stuff that, you know, should be sort of optional.

> Does that make sense?

> So on this list, there's the -- I separated them into kinds of different kinds of categories.  One of them is Swiss army knives, which I think are tools that do a wide range of stuff with names.  And I think it's fine to look at those for lots of things, but I also -- there's also a lot more, and again, this is -- this list of parsing libraries is just simply for me like doing a search on GitHub, right?  I know there's more out there.  I know there's probably even better academic-level ones that exist out there, but even doing a search for name parsers gives you 12 or 15 different libraries, and so maybe this problem is solved in the sense that like maybe between these, like, or there's one in here that's clearly superior or does more than anybody else's, but I kind of feel like we should know that.  

> Like, we should be able to come to some sort of consensus on hey, these are the things that a name parser should do for our purposes, and of those things, there's one, two, three or four of these that are closest to fitting the bill.  And maybe it's something that you know we can agree to contribute on or you know, import into your own favorite language or whatever but I shy we should have an easy answer the next time someone in a listserv or a chat room says, "What do I use to parse names?" you should be able to tell them this is what you use.  

> Like I said, I'd like to check out some of the features of these, the descriptions of these, and maybe we can draw a list.  In fact, maybe I can just raise the thing and we can start writing down a list of things of sort of key parts of so why don't we take about five minutes or so and kind of look through, have a list in your mind, maybe type it up a little bit on your laptop, whatever.  Talk amongst yourselves about what would make the elements of a good name parser, what should it do?  What kinds of situations should it handle?  Should it be like in my mind one of those might be like it should deal with -- try to deal with international names in a sane way, because we don't get to have just the John Smiths anymore.  And that's both a good thing and something we can do about it.

> **Are we just talking about parsing a name where we know the start and the finish or is this sort of distracters?**

> Yeah, if you think of it like as a, you know, John W. Smith III, like essentially being able to have something that segments those into the logical places.

> **We don't have to find that in a paragraph?**

> No, I mean ideally, talking about a separate but related problem, but ideally we're dealing with data here that is one row that has a name field of some kind.  Because most most civic-related data that has a name in this format or this format, you know, or in some cases, the really smart and advanced ones have them broken up into fields, which is nice.  But I don't know if people have run into this with name fields that are segmented, is like there are times when you have a first name field that has a first and a middle name or a last and a middle name field that has a last name and a suffix in it, and that's fine, but it's not fine.  The expectation is it's a last name field and it should have simply a last name.  So there are all kinds of issues with that.  So let's take a couple of minutes.  Look around, see what we think.  Jeff, I'm going to come haunt you:

> OK.  The other thing I want to do is you're going to start to fall asleep, and people are, so like if you feel like there's something that should be up there, like what it should do, get up and write on the board.

> **You want us to make a list there of things that we want to do.**

> Yeah, because one, my handwriting is terrible, and two, getting up will get the blood circulating and hopefully prevent you from falling asleep.  Not guaranteed, but there's always the hope.
[group activity]

> All right, so let's see what we've got so far.

> Oh, yeah, this is good.  Honorifics, so I'm going to * show my cultural Imperialism.  What's a nonwestern example of a honorific?

> Imam.
> Supreme leader.
> Yes.
[laughter] 

> Don't worry, actually, that will be adopted by the United States very soon.

> Oh, yes, this is a fun one, the reversal of names.  Which in some cases can be really, really insidious, right, because it can be hard to tell.  Yeah, that's going to be a fun one to solve.  But I mean there are ways to sort of, like depending on what other information is available, there's probably ways that we could tackle that, right?

> Like if there were address information, it would be compared to yeah, this looks like it should be reversed.

> Or even just a library -- I ran into that not too long ago, and what we ended up doing is going back with like it was politicians' names and the same thing as below it, politicians names, we just had to throw a whole bunch much data against it and say oh, there's M.P. Davis and Davis P. William, and the chances of those not being the same people are just like so marginal.

> Yeah, and I feel like there's also mentioned a probability of accuracy scores or confidence numbers or however we want to call it.  I feel like this is really, you know, the crux, probably the crux of the matter in a lot of respects for a lot of these questions, because years ago, when I started out doing standardization and things, it was literally all done in sequel and if it matches, then boom it matches and then you're left with thousands and thousands of unmatched ones that are just hell, right and so I do feel like this is some -- there's definitely some role for probability for machine learning for essentially trying to work through issues and to recommend like I don't know for sure but I think maybe this is the best one, so the linking family members, like that has lots and lots of uses obviously for Civics or you know for political data in particular.  And I think is a really valuable thing.  That tends to be like -- but you tend to have to be like close to the ground.  Like I couldn't do it for Maine in the same way that you could do.  Like I don't know who these people are, like it looks like the same-ish.  There's a great IRE training set that involves a Haslam family, a guy who's a governor in Tennessee.  In Tennessee, it's a fairly famous name before he was governor, Haslam, except in a tenth of the records it's an e with instead of an a.  And it's like what do you do with that?  

> Again applying the address, the nature of how -- whether it lines up with other information in terms of dates of contributions of in other people and similarities.  Maybe like you get into soundex comparisons of like yeah, they're pretty close, whatever.

> Ah, the nicknames embedded in the full name.  Terminator, really?  Is that self-selected?  Or.

> No, I'm just curious, I mean if you earned it, that's even more impressive, right?  Right?  So so what do we want to do with nicknames?

> Like, where do they go?  Is it just a nickname field or if it's somebody if they're known by that, do you want to --

> Bill Clinton versus William Clinton.

> Well, yes, or I mean the governor of Louisiana, Bobby Jindal.  Well, Bobby is not his first name, I think it's Pausch -- anybody know?  Anyway, it's not Bob, but everybody knows him as Bobby, you're likely to refer to him in publication, online or whatever as Bobby Jindal.  So do we promote nicknames to, you know, first-name status?  Is like how do we?  What do people think?  Is it really, like if there is a nickname, do we only use it like do we only fill in the nickname field essentially when there's nickname that that person is known by --

> I guess the only way I can think of to handle it would be basically a multi-first name field so you're Bill or William or Billy.

> a multi-first-name field ... ... huh.

> I mean it does seem important to preserve, because that's how your readers are going to, you know, relate to that name.

> Right.  Talk -- the multi-first-name field, go with that a little bit.

> Well, sometimes you know sometimes I'm Will and sometimes I'm William.  I can imagine people trying to clean my thing up and so generally the last name is pretty static, and it's all the variations of how that person has been referred to.  Just like mostly so you can tie it back so you probably want to have that Christian given name as a specific field, but a nickname is in a singular -- I mean it could be a nickname field but it's not a singular field.  You don't just generally go by one single name.

> So is that something like if we're looking at this structurally, is that something where it could be like connected but slightly removed?  Like in other words not as part of like a --

> Yeah.

> Like an also known as?  I don't know.

> I mean you could use punctuation marks potentially, like some sort of way of combining stuff in a way that means something, but we'll have to wait 'til we get to the last thing on the list before we talk more about that.

> Right, right,.

> So I just tweeted out a link.  I think ancestry.com is doing some work on this, and they're in tech folks have a blog, so I just sent out the link where they talk about how they're handling this very problem and they're using alternate names and prioritizing them, so there's a -- I believe -- I've read a couple of them so I'm trying to remember if this is the same thing, but they have a way of like asking it questions and then if it meets all these criteria, they kind rule out the impossible I think is perhaps how they're working backwards to come up with this is an alternative name that is the name person.

> There's tons of like public -- like Intelious is one we use a lot.  They charge you just buttloads for it, but this is what they do.  They come up with all your addresses and all your phone numbers and all of your also known as.

> Although I would point out that the Obama campaign has since 2008 believed I live in Woodridge, Virginia, where I've never lived because when I pointed it out to some people in the campaign, they didn't believe me.  They're like, Are you sure you've never lived there?  I'm like, I'm pretty sure, no, no, no, our scores are pretty accurate, I'm like, I'm pretty sure I've never lived there.

> But that would be another -- I mean there's like public records, background checks, those kinds this things.

> Those are incredibly flat, though, when you start pulling those up.

> I think one sort of thing to rule them all, yeah, I think it would be useful.  I suspect, even for the large when we talk about large datasets, I mean for campaign finance, it's several million people or several million donation, really by like maybe a million and you know, million and a half people, like I feel like it's somewhat more solvable.  At least and maybe I'm just being selfish and thinking narrowly but I think it's maybe not as grave as -- like put it this way:  Like I don't -- I can't remember -- I can't think of anything in the Times where we would spend money on a commercial service to do that for us and if we're not going to do it.

> I just wonder how they do it.  I also wonder if name parsing would be more important than address parsing.

> That's the next session.

> [laughter]

> No, I would have to buy beer for everybody to have an address parsing session, right?  That was like my backup if this was rejected.  We're going to double down.  But yeah, I mean like the address part is I think -- like my colleague Chase Davis at the Times has a toolkit that tries to standardize PEF donors.  But his done go down to the street address level.  It's basically city, state, and zip and it's good, but not perfect.  So I think there's definitely a role for that.

> So confidence numbers for gender?  Some of the libraries, I think, on the list, actually do give, if you scroll down the list of the libraries, the one that do gender evaluation, whatever.  Some of them do actually give like some kind of score, whether it's a percentage or maybe it's a text term or you know, I'm likely, very likely, not so likely, whatever for this, but I also -- this is also kind of a -- an issue in many ways.  I was saying -- I was saying to some folks, we worked at the Times on a story last year about political appointees and trying to figure out the percentage of female appointees, and we had the names and so then we ran them through one of the brilliantly named library here called Sex Machine.  Which is just paternal, terrible -- it's basically like the comical Ruby library naming convention, and I mean it's bad as itself, but it's worse, because they really don't mention James Brown in it.  But we ran it through that and it nailed movement of the Anglicized names really well.  You know, with the exceptions of your Pats, and it just totally merped on every nonAnglicized name.  No idea.  And we have data with names in it, some of which comes with gender, like Jeff, what you were talking about?

> The NPI database, the National Provider Identifier, which every doctor in the United States gets a you unique identifier and you can download the whole thing.  So that's 800,000 names, with gender, with, you know, like a titles on the back, so like you know, doctors have all sorts of crazy fucking titles.  They like go to a conference and get a new title which I'm going to institute.

> We're going to actually be handing out titles.

> We all get the name parsing doctorate after this.  But anyway, like that could be -- that all of a sudden you start to get into you can -- and it's all cut out and fielded because the programmer who made the MPI form actually like split it apart and didn't allow freeform text and it's important to have your name because you get paid.  Right, is that how you get paid if you misspell your name or whatever your checks from Medicare aren't going to go through and all of a sudden you don't have a practice, so you know, datasets like that if we're going to go to the training and the positional approach.  I think it would help with the positional approach, because you know, we're talking like maximum entropy or something like that, if that was Dr. W John Smith or Ph.D. at the end or something like that.  And also, you know, doctors are a pretty diverse bunch, so.

> Yeah, I think if you know, maybe not the least we could do, but one thing I think we could do as people who work with data is to maybe agree on sort of a or maybe several gender detection libraries in whatever language it is, and most of them come with datasets and if we could be like look, let's make these datasets better by adding in these dataset.  Or heck, you know, I don't love the idea of taking an existing one and adding in new training data.  Worst case scenario we could actually take their training data and add our training data and make a better library.  I feel like there's room for work in that that we could actually make a good contribution.

> I just grabbed the voter registration database in Allegheny County.

> I know a lot of voter registration data does contain gender, as well, and so that's like a good example.

> and the same with addresses, because I know one of the things we're looking at doing with the campaign finance data is to run it against the voter registration database to match the mailing address to see if there's actually a match.

> Usually people don't register at their place of work or their church or whatever.  Right.

> So, all right, what else?  Jenny 8 Lee, right.  And not that we would necessarily deal with this in federal campaign contribution data but our foreign desk is a lot of people with one name.  Where do we put the name.  It sounds like a stupid question, but like where do we put the name in the data?

> I mean towards that end, is there a case for like purpose-built parsers as libraries?

> Purpose-built parsers?

> So like if you know the data, if you know the intended use of the parser, like none of this stuff in this list is categorized by use.  There's like 17 parsers, and you know, like the thing that Chase has for campaign finance data, especially with the machine learning stuff, is there a chance that you know if we're trying to accommodate for things like Jenny 8 Lee for instance, that we could end up overtraining that actually weaken the model that we have for a certain set of data, whereby hey if you know you're mostly you know, names that are are not using online characters or something like that, that you should be using a different parser?

> Yeah, that's actually, I mean -- I think that makes a certain amount of sense in some respects, because one parser that claims to do everything.

> Or like if you had access to the -- that that might change the logic for how your parser works in a way that it would actually be fundamentally different if there was no address field.

> Right, so if you had some data and I'm going to like I could parse it try to parse it simply on the names and I could parse it simply, but then I could also, it could be an option or you have another separate parsing to do names and addresses together.

> Right or if I knew I had to identify names at academic \]conference or something like that, the dataset that I would use to produce a model would be different in a way that might not apply to, you know, if I knew I needed the, you know, passenger manifest for like a front division or something like that.

> Right, right, yeah, I think -- I can see the value of that.  Because I mean a lot of what we end up doing is domain-specific, you know?  I think if you were, yeah, I mean if you were looking through -- yeah, if you had, you know, -- if you were doing something that had physician names, but they were not standardized or you wanted to match they up, ideally I would match they up against the MPI or some other source like that.

> Yeah.  Yeah, I can see the case for that.

> I mean some of it probably does exist already.  It seems like one service we could provide is just creating a directory.  You know, you already started with these links and names of existing libraries.  A little bit of description on you know strengths and weaknesses, what it does, what it doesn't have, I think would be enormously helpful.  Because we always are starting from scratch, you know.

> Yea, that would be interesting to know even automatically from data set, based on the composition of this dataset, what kind of tool should we be looking for, something like that.  Maybe there's even like a service that provides that you know?

> Like you feed it in, it tells you where you want to go.

> Although it's got to parse to be able to tell you.

> Maybe, maybe not.

> There's some meta data you could --

> I don't know if any parsers do this, but if you're doing something like campaign finance or even a lot of other circumstances you could even actually have a their profession, so it would be interesting in campaign finance to go through OK, let's find everyone who's a doctor and match it up it the MPI.

> Yeah, well, I mean if they don't take Medicare, they wouldn't be in there, but all doctors take Medicare.

> So you could look at any of the license database, so if you built something that I mean you got all that license information in advance and updated it, this might be more of a local solution, because then you match up any of your campaign doper database, right, you could run a check any against any of the professional licensing data because they have to update those.

> So it's like parsing and standardizing by piece.  Yeah, I had not given that one thought at all.  So good.  We're making progress.

> Well, there's one thing that could muddle things, and that's -- I mean a doctor could be an actual physician of some kind, but he could also be a Doctor of Philosophy.

> Like my dad, yeah.  OK.  But I want to write this sort of down, sort of like parsing -- OK domain.  Like domains of doctors, licenses,.

> Public employees,.

> Public employees, might also be interesting to use that stuff to tell us when a potential like joining up multiple differently spelled names is more suspicious or people would be skeptical of it, by seeing if similar names in that location on the voter rolls, so if I know that there are three Derek Willis in Montgomery County and the fact that I'm joining a Derek Willis and a Derek Q. Willis means I've really got to be careful of that.  If there's only one in the county, it's more likely.

> I was thinking of this specifically with the nicknames, because the one where we really run into trouble is this person goes by John, but this person's actually name is John.  So this person's name is Jonathan and this person is actually John.

> All right, so who wrote that we need another standard?  OK,.

> I mean it's not going to happen.

> I mean we should all throw things now.

> But it does just kind of seem like I mean this is madness, you know, the fact that we're having to do this is total madness, and like you know, I just wonder if anybody is work everything on kind of trying to nip it in the bud, you know, you're working on tons of different agencies, you know, the reporting schedules of these things are all over the place, but I'm curious to know, you know, what is the history of trying to synchronize this problem.

> I'm sure the Social Security Administration has some tools up its sleeve, but we don't have a hope in hell of getting access to that.

> Well, you say that, but yeah, we don't have access to, but I don't know, maybe they've produced some -- like maybe there are reports or studies or other publications that they produce or like maybe academics have studied this and said this is how they do it and it works pretty well, or not.  Or it needs this, you know.  I do feel like, you know, while there are, I think, you know, I think we've identified some places where it would be fairly, you know, where we could make obvious contributions to sort of existing parsers, or some existing parsers?  I think some of the parsers that I linked to have the capability of dealing with honorifics, and you know, suffixes and reverse names and some of these other fairly common use case, I do think that like the places where we could probably make the most immediate impact would be on things like bringing to bear like specific domains, data that we already have that this name involved, improving the training datasets for things like gender, for nonwestern names.  I feel like -- I feel like those are the kinds of things that we could get people to get into, on a practical level, but I do think like it's worth having a discussion of like what are we doing here, and how are we -- because the first, you know, what I described as sort of the low-hanging fruit is in a sense but it also is basically committing or, you know, like assuming that people are going to keep doing this, right?  Like I'm going to -- I'm going to grab and keep updating things and I'm going to keep contributing back to these, you know, improving these datasets or I'm going to keep standardizing in this domain.

> and people will always continue doing things weirdly in new ways.

> and you have this thing where it becomes oh, we have a phenomenal set of Illinois politician names that's just been totally scrubbed clean and standardized for like 30 years and a that's great, except I don't live in Illinois.

> and I don't care.  And it's not useful to me, so like we end up with either like we have silos of people doing, you know, siloed data, and it field to me like it's the web, we should have some way of either being able to wrangle that into common resources, or to be able to, you know, sort of tie them together somehow, whether it's like a common sort of standard identifying or parsing engine or service or something like that.

> I mean I guess I was even talking about going one step back from that.  Like putting pressure on agencies themselves, on the reporting agencies, to adopt a common standard, you know, like the way that these forms work, the way that they are putting this data out into the world is where the problem starts in many ways because there's no consistency, so you know, that's why I say it's not going to happen because you have to get a lot of bureaucracy types on board across so many municipalities.

> and people keep naming their kids really weird things, like we have to put a stop to that now.

> Yeah, but I mean you know we'll always just be cleaning up the mess.

> Well, I mean this is the life we chose, right?

> So I don't know -- this may be completely a crazy idea, but so I'm doing a lot of work in Allegheny County, so I --

> For everybody else, Allegheny County is Pittsburgh, greatest city on the planet. 

> So I am cleaning these names, and often these are people I am familiar with, I know the names so I can kind of authoritatively say that this is X and X.  If there was sort of like a format where we could share our naming data, like as a news organization, news organization the journalist puts their stamp on it and says I verified that this is write and then an AA service in a sort of way where we all contributed and using that to train if you're getting a federal reported and I verified it down at my level, you can have confidence that the name was right because I was the source of it.

> Ooh, so actual distributed work that's valuable to lots of.  Like I like this.  We're overpromising, sure, but no, no, I like this.  Because I'm using the campaign database to build data at the city and county level so I'm going to get the licensing information, I'm going to get the other data and but those people are also going to be involved at the state level and federal level and so that might be of value if it was contributed to a larger --

> Right, so that requires two things, right?  You need to track the provenance and you also need some sort of a way to actually like.

> Get that into --

> Well, not just that, but actually score how likely this is to be right or wrong.

> Yeah, yeah, but I think the point is I'm much more likely to be oh, well, clearly you know this -- the assumption is you know this better than I do, that local area and you know, better than I do, so like the difference between, I suppose, a score of like confidence that some, you know, machine learning or whatever algorithm spit something out for me based on a geographic set that I don't have any particular expertise in and something like that that is further guided and/or overseen by someone who does, I think there is a -- you know, a little bit of a boost there.

> I mean we have an advantage, too, which is you know, as we said when we first got started here, it is actually not a huge universe of people who contribute.

> It's -- I mean it's a lot of data that I'm working with, but it's all manual at this point.  I'm literally going into my spreadsheet, I know that Charles Hamill, there's a second and a third and they all contribute and I know where they are and I know where they live and I'm going OK, this Charles Hamill and this Charles Hamill, because they're all in the news.

> I feel like we should really have something that prevents, that makes it possible for Amy not to have to do this manually.  I think wouldn't that be kind of nice?  Yeah?

> It sounds like you should be able to do that once, right, and put it somewhere and then have other people be able to benefit from that.

> So I have the campaign donors from the mayoral election and now when I'm uploading the ones for city council, I can match that.

> So that does bring us back to standards, if we're going to have something or if we're just spit bawling here, we're going to have something that is, you know, enables people to put stuff in at one level and have it be used by people at another level, then we need like, OK, this is the kind of information, you know, this is the minimum set of information, you get sort of some optional stuff to it, and then, you know, other people know if you're going to contribute to this, you have to have at least this, and maybe this extra, as well.  So I mean I think -- I think we kind of can figure out in our heads what that might be -- what that information might be, but just so that we're not, you know that we're all sort of on the same page, I mean obviously aside from the name, which ideally is parsed, what else is the minimum set of information that would go into that?

> City, state.

> Would you want the full address, though?

> I think you would want it ideally, but I don't know I suspect that in some cases you might not be able to get it in every single instance.  I think you would like to include it and maybe we're talking about a fully parsed address.  Ideally like street number, street number, you know, but again that's a whole another session for address parsing.  But I think in terms of the minimum, city and state, and do we care about zip codes or are they just too just weird or annoying or people misspell them or old or new ones?

> I've done stuff like this zip codes are one of the mother reliable things, because where city and states have a lot more representational flexibility, zip code if it's 5 digits, it's probably the right 5 digits.

> OK,.

> Strong testimony.

> I remember seeing a city entry that was ASDF so they don't really put too much effort into it.

> I believe it like the horror stories of address data.  It might be the only thing that's worse than names, frankly, I think.

> OK, so is that the basic set?  Like the minimum?

> I could see age which may be hard to come by.

> Age or date of birth?

> Date of birth.

> I agree.  I would prefer date of birth, you about it's funny that I think now voter registration data that in some places that always had date of birth, some have switched to providing age as a privacy measure.

> So you could do if you know the date that they captured that age, you could reverse engineer that because that's what ancestry.com does, so you'll get records that says he was born about 1932, so you can have some confidence that you've got the person.

> But in order to get that at at like the local level like you're almost, you know, at the local level, correct me if I'm wrong but probably the easiest way to get that for a larger set of people is probably voter registration, but obviously that eliminates everybody under 18 and not that we're dealing with a lot of kids anyway, in general, but it also excludes, like, in many cases like people who had been convicted of crimes but are now out of prison and you know, who could legally give money or run for office even, as unlikely as it may be.

> Although I have seen literally children, like minor children appear in the FEC dataset.  It is under certain circumstances, yes.  It has to be their own money.  I mean like our daughter has an allowance, so she has her own money, but.

> and how much does she contribute on an annual basis?

[laughter]

> Thankfully nothing yet, so I worry, though.  I do worry.  So but it is actually permissible for like if you have your own money, so and again, it's like people with trust funds essentially being able to contribute.

> Is there a limit on how much minors can give.

> No, they can give as much so you'll see like five people from a family and it's like OK, well, that's, you know, there's kids there and maybe some of them are adult kids, but some of them are -- you can look and no, there are some minor kids in there, so OK, so yeah, I think -- I mean I'm sort of wavering on whether it's a -- I think in some cases it could be harder to get.

> I think it would be nice to have.

> It's very nice to have, but I suspect that it's probably a little more optional.  We had other suggestions in terms of like employer or occupation or things like that, although I mean and I think like it's better to have than to not have, but I think there is also a, you know, from my experience of campaign finance data, what happens in a lot of cases is that if someone has been running for office for decades or for you know, 20 years, and they have had a regular donor during that period, they just use like whatever the previous donation record had on it, in a lot of cases so you'll see people currently who clearly -- like people in the news, people whose names everyone knows and it will have like you know, some previous job, or even better, it will be like unknown, it will have like Bill Gates, unknow?  Is it really unknown?  So there is a lot of variability in that sense.  But I do think like it's good to have.  It can be good to have in terms of specific domains or disambiguating particular members of a particular family.

> Isn't it all about that one time when you can match it up with?  I mean if you're going to go off employer, that one time you can match it up with that database that you can really trust and then you know, so here's the horizontal line to that database and here's the vertical line with all the other entries under that.

> Right, but I feel like one of the issues for us is sort of as an industry is it that most of us, and for fairly decent legitimate reasons, don't really share the data that we really trust.  You know?  And I'm not saying everybody should just turn over all your stuff but I feel like there's got to be some compromise that we can make to be able to like, hey, look, there's you know, without giving away the store, we can still have something useful that other people can work off of.  All right, so name, parsed name, maybe a parsed address, city, state, zip, and age and maybe employer, and/or occupation information.

> I'm coming at this from mostly a political data domain so there's not much else information that we get in campaign finance about individuals.

> What about like average contribution amount because people who give a little are likely to continue giving a little, you so you can kind of see and say you know, this Derek Willis gives 40 bucks every year, but this one gives $4,000, it's probably not the same guy.

> So some kind of categorization of some kind.

> of broken decks.
> Right.

[laughter]

> Same thing with like restaurant reviews, for price of restaurants, one dollar sign, four dollar signs, something like that?  Are there any other licensing or voter registration databases that have information that is not in here that we might consider to be part of a nice to have set?

> I'm sorry, I joined the session late, but I'm trying to think about a way of what combination of these attributes make a unique person.  Like could with a Derek Willis from the same city, same state.

> How do we disambiguate, yeah.  Yeah.

> What are the minimum kind of requirements?  Like place of birth, I don't know does that help spell someone's name better or like pronunciation?

> I mean I think that there's no formal way to do that absent the data managers doing it responsibly, because everything up there can legitimately change.

> and does.

> and does from either sloppy data handling or life events, and so I came in late, too, so I'm not exactly sure what this is driving towards, but in general working on problems of matching people between datasets, you have to basically fill in the uncertainty and make that a thing that you always have an opportunity to check yourself before you make a mistake if the uncertainty comes into play.  You know, we're doing some things at the night lab with campaign financing and find out that one thing we do is mostly disregard even checking low number donors, because you know what they're just not important, right?  So these methods that say reduce what you are worried about being correct is a strategy.  Can you say in like two sentences where you guys are driving since I came in late.

> We've been a little running on and off the road a little bit but a couple things, one is sort of -- we're kind of on two tracks.  One is, the tools that we have for parsing and standardizing names, how can we improve them, is there room for that for you know, do they need to be, are there obvious improvements that we could make, or you know, even just I think somebody suggested can we evaluate them in terms of so people know what tools are right and good or useful and what they offer versus like, you know, so we can properly answer the question, I have to parse name fields, what should I use.  So that's one sort of track.  The other track is how do we stop doing the same work over and over, like both individually and collectively, and can we create, or you know, imagine some sort of either service or common repository that helps us to stop, you know, doing things repetitively and perhaps mistakenly.  You know, part of one of the founding questions of the session for me was like this perennial campaign financing question which is we can never really say with any real certainty exactly how much money somebody has given because we're never really sure, and so I don't know that we can ever really perfectly solve that, but like I'd like to be able to get closer, it's just that every time that we try to answer those questions, it's usually dealing with someone who on the off chance I've ever heard of them before I'm only tangentially aware of them and now I have to become an expert of every name they've used and their employment history in like four hours right, or a day.  Or can we build on stuff that maybe all of us do and maybe extract a portion of the work that all of us do, and be able to contribute it to some sort of common thing that we can all draw upon.  And be like look, I'm not the expert in western Pennsylvania political donors, but someone else is and they've uploaded a data that sort of standardizes and identifies the data from that community.

> So how do you verify like right now, you get the Allegheny County stuff, like every time you get political donations from Allegheny County, you go through them and do the exact same matching every time or how do you --

> So we're kind of working through how to do this in an automated fashion.  Because it is very manual right now.  I have taken campaign finance reports and enter them into a spreadsheet that I then go through open refine.  And I go through it again OK, I know these people I'm cleaning it up that way.  We want it to just keep building on itself.  We're going to say campaign finance data was one of our foundational sets, we're always going to run names against that to see if we've already built up their profile and that's part of why I was really excited about this session which is the exact thing.

> Unfortunately since we don't have it solved it's kind of a let-down for her, but you know, I feel like, yeah, you know, I feel like there are a bunch of -- several different ways we could go with this, right?  So all right, any more on sort of -- any other fields that -- any other types of information that people are collecting that might be useful or is this a good.

> I think the last thing I would put in there is if you're talk talking about campaign finance would be registered party that they are registered as or if you donate to Democrats all I don't remember life.

> I mean there's two ways to get at that, like if some states offer it, like is a registered whatever, although that can change over time, obviously and then the states that don't offer it, you could kind of divide it based on donation history, which is again, not terribly different.  All right, so we've got that.  So if this is let's say, and this isn't, you know, this isn't a terribly large amount of information about a person or about people to like maintain and upload.  And then there may be a lot of people, but like this is not a huge dataset.  So what would the repository for this look like?  Where would we keep it?  You know, what would it be?  Like, would it be -- I don't know, would it be files on GitHub, would it be a common database that we all upload to.

> It might be interesting to I did.  Refine API on CSE.  It's already quite useful because then you can go through the data and say hey here's a person living in this state that might be a good candidate whoever you might have in your batch of data, so that might be something I'd do.

> Hm, OK.

> Any others?

> I mean, do we need -- is this something that like we need someone to like set up and like pay for and run and administer, like --

> I kind of think maybe, because you want that confidence that what's being uploaded is coming from a good source, and so if there's some way to say -- I don't know, that some sort of membership or some sort of way to -- if you want to look at where the sources of data are coming from, it's not something that -- someone who, you know, is just working on a school project uploads a bunch much dirty names, like some sort of way to --

> But I feel like it's a really -- I feel like the likelihood that someone is either going to try to game the system or inadvertently upload not quality information is not -- like maybe not worth worrying about.  If it's a tradeoff toward having a frictionless system, having critical mass for this to be useful, the more that we need community type people around it, the less likely that's going to be to happen.

> I think I could see just a couple of snare Joseph, this is my paranoia, you could have people who are concerned about privacy who don't like this idea, but they could contribute false information to throw it off.  And they that would be our source, and the other thing is this could end up being valuable for a lot of commercial services and so it could get co-opted.  We may be willing to contribute to other journalists and journalistic efforts but I don't necessarily want to contribute to a commercial entity who's trying to collect on debts.

> That's a really good point.

> Plus it would be expensive to maintain that and I think the thing that would be least resistance to maintain and probably most useful is if you had that really excellent sort of the domains list.  These are the domains that we have really excellent data for, and then you could throw yourself against those domains and you could parse that out sort of locally.

> Oh, so you -- right, I mean I can see -- yeah, you can pull stuff down and run your local stuff against it, but then does the local stuff get back to, you know, -- that's -- because I feel like that's sort of what's happening now to a certain extent, to the extent it happens at all, is that we, you know we'll take a resource and use it for our specific project needs and then not put -- I mean I'm as guilty of this as anybody else.  I have a lot of standardized campaign records that have not been sort of shared widely.

> I mean maybe it's that you get back like scores on each of these names or just like you know, a status on each of these names.  What you don't get is access to the full database, but most journalists are not going to be satisfied with that.

> No you're going to have to have that transparency.  That's why I'm thinking a closed database, some sort of membership thing.  I think it would be a source that everyone would trust and a neutral place.

> Is it to get to 100% or just to hit the max with it.  100% is that we have absolute confidence that every person in this dataset, we know who that person is and we could match he them up to prior and future.

> Ooh.

> But I mean is it so 100% is obviously too far but is it 99.99% we're shooting for or are we going tore everybody who's given over 20 bucks in their lifetime or whatever.

> I think for journalists the goal can be find stories that are being told.  So 100% is not necessary so I think a system that reduces the effort that a journalist has to spend to identified needs to follow, believes that the latitude to verify any potential I consistencies with the system is where you would go.  But I think it would be impossible to sell publicly.  Remember the clamor when the gunnera database were published in New York.  As much as it would be nice to eliminate duplicate work.

> Couldn't you have like a subscription thing where basically -- I know that Derek has like these cleaned up data feeds, these cleaned up methods, I subcribe to him, he has to approve my getting access to him and then we have a mutual kind of trust thing.

> I mean that already exists, right, in commercial databases, you know that insurance companies have and whatnot, it's not that this information isn't out there already.  It's that the barrier to entry is really high.

> Right, you could have that, I think.

> First you have a bunch of people producing strong systems of their own that say I've -- I know who's who, and I know these three different representations are the same person, and then some sort of a semiprivate synch.

> Does GPG help at all in this scenario.

> Jo.

> In the sense that I think the bigger issue here is not whether we trust each other, but whether like as a public effort, like it would be -- there would be some sort of backlash against it.  Judge but would it be public, though, if the only people who have access to it would be people who have keys.

> Which would be essentially the subscription model.

> Let's increase how people trust.

> Look at Israel, I think the full census leaks and everybody has everybody's kind of details.

> Yeah, but that's a small country.  It'sites also a decoy thing.

> I'm actually interested in that topic if these sort of thing has been done in other countries, I think some of the Nordic like your Social Security number is public.  But whether journalists in those countries have used or tried to use those databases to solve these same sorts ever problems.

> Here's the other thing, where are they going to get pissed off and how are they going to prove it right so the issues with things like plotting people's addresses who have gun licenses is the fact that somebody can just share a URL and everybody can go there.  So I me like there are ways to thinking nefariously tamp down on possible objections to these sorts of things, right?  And I think that, you know, having something like the subscription thing and anybody who's --

> Command line interface.

> Yes, makes it a lot easier to say, you know, can you actual search be if you stick your name in Google is your tax return the first result.  This is the problem the document cloud has people search their name and people say where did this document come from.  I think this is a search problem in that regard, as opposed to whether it's successful.

> If I know all the players who are contributing, that makes me more likely as a journalist to feel good about using that information.

> I think that's --

> I guess part of the question is is it enough of a problem.

> Like, is this enough of a pain in the ass?

> What, the --

> the problem of all of us us doing this siloed work of name cleaning year after year.

> I think it's expensive.  We all have things that better journalism not necessarily journalism, but other journalism we'd all like to be doing rather than spending hundreds and hundreds of hours a year.

> and I've been working with campaign finances and I'm fooling myself if I say, yeah, I'm an spirit in broadly geographic, I mean like I don't know who these people are.  I mean like I you know, I think it's very difficult for us to pretend that like it's the both the best use of our time and that we're really that good at it on a broad base.  I feel like you know, there is some precedent for developing something that helps us out broadly and maybe it's possible.

> Maybe we could talk a little bit about just sort of how you hold onto your accumulated knowledge, like what would be a system that would allow you to basically keep track and sort of connect in new data into old data.  I so I mentioned at the knight lab we're doing some stuff with campaign finance so there's a library actually Al knows about this, there's a library that some guys have made called dedupe, which is a statistical tool to try to identify basically names that look different but should be the same.  And one of our -- we have a summer intern whose goal is produce something at the end for journalists a document that says here' how you use this for campaign financing.  But one of the questions then is if you get new data from the next stuff, how you link that back into what you've already done, so I guess -- we'll try to break this down into smaller pieces so that no one is too big so one would be a statistical method for identifying linking names, one might be a method for cleaning names so that they match preprecisely because they've been cleaned, rather than the other way around.  But the other is where do you put that.

> One of the things that we do with campaign finance data is essentially we do have a sort of a master set of transactions that are then sort of augmented, that it's the base data that we get from the FEC, but then there are essentially standardizations or corrections or augmentations to it that make it easier, some of it is sort of a practical, like, denormalization kind of thing where I don't want to have to join tables on a 9-million-row database so I'm going to add a column and populate that.  But some of it is fixing no, is this a committee mismarked or whatever and there's the stupid old way that I learned which is that you make new columns.  You know, like name, clean name.  Or whatever you want to call it.  Like there's a -- again, that's like a -- that is a lot of, there's a certain -- there's a manual aspect that is not totally appealing.  On the other hand, I can very clearly see what has been done, and what the differences are between sort of the original and the improvements or changes in augmentations.  But I can also see essentially, there are probably other ways to layer that on top.

> One thing I remember and it's really a question for the room is what tools are we using or what tools are we comfortable with.  Because making some system that's going to help all your problems if you only change completely and do it this way is not going to be maybe a win.  But I guess what would be the smallest possible thing that would work.

> I don't think you warrant want the smallest thing that can possibly work.

> You don't.

> No, but identity is such a complex thing that basically it's mostly possibly work with a CSV with name, canonical name and done, and that sucks in so many levels that it's not funny.

> Why?

> First of all because names aren't -- I've done a lot of work on European lobbying data.  Then you want to where you've got this original stuff so you have provenance on all this kind of stuff and then you want to have information that's time sensitive, right, so and there's a rule that green parliamentarians coming in, the females they all get married after like one year.  I don't know why that is true, but it seems to be a rule, so you know that they've switched names and you can kind of therefore improve the accuracy of the guesses if you kind of know when they got married, right, so all this kind of stuff you want to catch because otherwise you just kind of produce a lot of weird overlap.

> Here's the other thing that we do in certain -- like there's a project -- a group of us who use congressional legislative data in Washington have put on GitHub with the United States organization and there's a crosswalk that we built for every lawmaker, current lawmaker that crosswalks like 14 or 15 different ID systems for them.  It's a total pain in the ass to do for everybody, but on the other hand it's useful in the sense that it hooks you up to a wide variety of other systems, so it's the official canonical ID that Congress gives each member of Congress, but it's also the ID that C-span gives each member of Congress, because they have what amounts to a crappy API of their appearance on C-span or on the floor of the House or on the floor of the Senate or whatever.  And so this doesn't probably -- it's probably not the -- like as useful for donors, I mean most states don't don't assign like canonical IDs to donors.

> Unless you're talking about PACs.

> Unless you're talking about committees, right, and the committees they actually do that in a lot of places whether it's on a form or simply on their website they use a sequential ID or whatever ID you can pull out and say no, that's how this state or whatever authority refers to this thing.  I think that the least -- like, sort of public relations problematic thing we could do is -- that's still useful is to build crosswalks where they don't, is to essentially fill in crosswalks where they don't exist or to publish like here's how you know, like if you do a project like the center for investigative reporting did from California, and here's how they're known in our system, like in the California database and here's how they're known at the national institute for money in state politics and here's how they're known in the FEC.  Like already that's useful in the sense that they're the people we're probably likeliest to write about if we're writing about political donors in California, anyway, so simply if it was name, ID, ID.

> Donors don't have identify fires in FEC, right?

> Well, there could be that, but also in the FEC they don't, but like for instance, the National Institute of money in state politics which goes in and standardized, they generate IDs for people, and the center for responsive politics does generate IDs for individual donors, it's not obvious from their website that they do this, but they do do this, they're not always right, but I mean they're very, very good.  They don't make a lot of mistakes, because they've been doing this a long time and they employed an army of interns to help them.  But there is an ID.  There are systems out there that would probably help a little bit.

> So I'm kind of thinking that a combination of something that is automated and also is manual, like I could upload a dataset, compare it against something else and then manually checkmark, like I have being looked at these two names and they're the same.  I could go back to ancestry.com in sort of how they're doing it is sort of an elegant way.  Like you can edit the data and it goes back.  So they're kind of using your knowledge to build the confidence in that, and if what we're building is, as a reporter in Allegheny County and maybe there's someone at other papers and we're all contributing and we keep checkmarking and saying this record and this record is the same person so we as a group can all feel confident in that so we're helping build that locally and then building it up in that sense.

> the basic idea, this John ... suggested this in his class, how can you take multiple datasets, use something algorhythmic and update images when they're actually checked or whatever, right?  But you can do something like that for this, where you give a governance to as to like we know this person, actually probably knows who this is or whatever or some other way that you can track linkages, but that is a sort of system where you could account for some of this in.

> There's one other thing I didn't mention at the outset.  I knew a large portion of this would steer back to campaign finance because me and there's a very common people dataset.  But there's a guy at Stanford who has built a classifier for 20 years of FEC data.  It's pretty good because I think it ignores suffixes, which is a bad problem in campaign finance, but like it is something that I feel like there must be other sets like that out there that various academics have worked with just either to test out their algorithms or to solve a domain-specific problem that there might be datasets as journalists that we're not paying attention to or we could get our hands on that could provide the foundation for things that we do, in other words, that could form like a, you know, like I said, a foundation for like hey, you know what?  This dataset isn't perfect, but this person has done a certain amount of work on it and I can actually take it from here and improve it to a certain extent.  Rather than compare it to the raw data it itself.  Where essentially I'm replicating 80 or 90 pers of what these researchers did and I feel like to some extent we're not always taking advantage of.  Put it this way, it's easy for me after 15 some years of, working with campaign finance 2 just to go back to the FEC and every Monday morning and grab the new data and run it through the system and I feel like maybe I should be looking around at what other people are doing, particularly with publicly available datasets, because in some case, even if their problems aren't the same problems as mine, like perhaps they have at least done things or developed techniques or tested out algorithms that have resulted in a pretty good useful usable basis.

> I'm kind of drawing parallels to like this problem that just for a second not thinking about like the privacy or the security aspect, of do these people want their names online, but something like a Twitter verify check or something, where multiple people have uploaded the dataset like you said, someone went and manually said this is the same person and adding a time stamp of when this was last verified or something like that, does that make it more legit?

> Like date, time, and who did it kind of thing and I work a lot with like OpenStreetMap, so there's like a record going back in time for like when a certain place is edited, so it's similarly to a name like if names change or people's addresses change or like it's a living, breathing kind of document.

> I can easily see why OpenStreetMap and Wikipedia and other places do that, because it's the easiest way to figure out what happened to it even if you are somewhat suspicious of it or skeptical of it, but that sort of thing implies that there is a -- that there is some sort of system that's built to handle that kind of input, whether it's behind a subscription or password or whatever or whether it's out in the open.  Which again, may be fine, but I do think there are some concerns that folks would raise, whether we would consider them to be like oh, that's totally legitimate or not.  You know, I think folks who have mentioned that there might be concerns about privacy and search availability, I think we have to acknowledge that, and kind of deal with it as best we can.  So we've been talking for wow, almost an hour and a half how.  Which is good.  I think we've had a really good discussion.  I'm curious to know sort of where people want to go from here to the extent that it doesn't involve leaving the room, because I know that's not only a possibility, but eventual the ultimate likelihood, but I am curious if what people what do you guys want to do at this point?  Are there things that we haven't discussed that are really sort of gripping people?  Are there things that we could do in the remaining time that we have that would actually leave us with something to show in addition to what we've already sort of talked about and put down?  Somebody mentioned at the outset, you know, even going through like some of these libraries and sort of describing them and be like, this is valuable, this is not as useful, like I don't know if it's a ranking system that we have a checklist, does that, doesn't do that.  Are people interested in that?

> So I guess in that sense I probably should have put that stuff on a wiki rather than in a repository.

> Can we add a new event page?

> Well, what we should do is we should check to we should add an etherpad page or we could start the wiki on the repo and go from there, but we should also figure out if we're going to do that, what we're going to add, like you know, free text is great, but I think we should probably have some common basis for how we're going to describe these tools. ... ... :
[group activity]
 

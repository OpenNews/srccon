This is a DRAFT TRANSCRIPT from a live session at SRCCON 2014. This transcript should be considered provisional, and if you were in attendance (or spot an obvious error) we'd love your help fixing it. More information on SRCCON is available at http://srccon.org.

Captioning by the wonderful people of White Coat Captioning, LLC
whitecoatcaptioning.com


7/24/14, Session 8:  

Hitchhiker's Guide to Datasets
Session Leader: Ryan Pitts
Guest Presenters: Joe Germuska, Derek Willis, Jacob Harris
--


RYAN: All right, it's 12:30 by my clock.  Hello, everyone, welcome to the Hitchhikers Guide to datasets session.  I'm Ryan.  I have a few people who are going to help me out during this session, but let's talk a little bit about why we're here, first of all.  So it will probably not come as a shock to anyone in this room if I were to tell you that data is a pretty awesome source to do journalism with.  Probably a lot of us in here who have done this kind of analysis ourselves, whether looking at crime data and a reporting on that or analyzing census data to talk about the way that demographics of our city are changing over time or maybe we write a bot that tweets out anonymous campaign finance donations. Or maybe we become once with the FEC dataset, and we just sense anomalies and we tweet them manually.  A lot of us have probably participated in the News Nerd Super Bowl, which is election night, delivering stories to our readers and there are probably a lot of people in this room who are very comfortable with doing journalism with data and we've been doing it for a long time.  I think it's also fair to say that over the past two or three years we've seen a real surge in interest in this type of data analysis.  There are a lot of reporters working now who wouldn't necessarily have identified as data analysts before, but they're definitely working data analysis in their beats.  There are entire sites launching with data analysis kind of the core of their DNA.

If any of you were at the last NICAR, it was like the biggest one ever.  There were like a thousand news nerds there, so data analysis is really of high interest right now.  So in thinking about SRCCON and getting together a bunch much smart people it felt like it would be cool for us to collect some of the knowledge about all of these datasets that we know about.  For a couple of reasons, both so that journalists know what's out there and what's available, because I run across interesting datasets that are interesting to me all the time.  You probably do the same thing.  So that we all embark into this kind of analysis that we're doing the right kind of work and that's something that's kind of worrisome, because it's true that the first time you look at a particular dataset it's kind of daunting.  You may not be real familiar with the meta data that they use, you might not understand the way one agency classifies certain things versus another agency.  You might not even know how the data is collected and that's pretty important before you actually start describing it to other people.

And so the risk that we have, if we're just kind of doing something for the first time, is that we'll make mistakes, so we ought to try to help each other avoid that.  I was trying to think of a good analogy for this, and the best thing I could come up would be, it's like trying to read an essay that's written in a language you took a couple of years of in high school and so you see these are letters on the page, I know that there are words made of these letters and maybe I understand a few of the words or phrases, but never in a million years would you turn to a person next to you and say, and here's what this essay actually means.  You would want to understand that language before you were trying to tell someone else what it means.  That's what we do as journalists.  

So that might be a terrible analogy.  Probably a better analogy is one I heard first from Derek Willis, who talks about interviewing your data, getting familiar with what columns are available to you, how are the numbers distributed, what does an outlier look like, so when it comes time to identify what is actually interesting in this dataset, you can do some good reporting.

So in this session, I want to kind of take one step backward from that.  We're going to try to talk about doing the backgrounding before you actually do the data.  If you were going to sit down and you were going to interview a person you would not start before backgrounding a person. I called it hitchhiker's guide, because like The Hitchhiker's Guide to the Galaxy is designed to give you the context you need to go out and explore the galaxy on your own, so we have a repository on GitHub already and we'll come back to that later.  There's a few outcomes that I have in mind for this session.  Some of which I know we can achieve and some of which will actually take your participation for us to achieve.

What I want is for everybody to walk out of this room having learned something new about a dataset that they didn't know about, and so in a few minutes we'll do a walking tour of the American Community Survey, some FEC data, and then election data. And I want everybody to have the opportunity to share something about a dataset that you know something about that we might not.  If you have a cool dataset in mind just over the next few minutes, just kind of think what's the background that somebody would need to have to understand this dataset and to dig in and start doing reporting out of it.  And then if we have time to break into small groups, we'll take a look at that repository and let's actually start doing some work and building something together and doing something that journalists who are not in this room or at this conference can use going forward.  We want it to be a resource that lives on.  There's already a couple things in place.  If you haven't done data work before, we still will have jobs for you to do.  If you have done data work we will have other jobs for you to do.  But that's kind of what I have in mind for this session, so I'm going to turn it over to Joe to talk about the American Community Survey.

> And this is participatory, so absolutely pepper with questions.  Participate in whatever way makes sense to you.

> Just briefly in five minutes.

JOE GERMUSKA: So the US Census Bureau is a great provider of open data so that journalists can know about the world around them where they're reporting.  They do three big products and a lot of other ones.  The three big ones are the decennial census:  They vary in degrees of precision and timeliness.  We did sense reporter based mostly on the American Community Survey because we think it's the sweet spot in terms of timeliness versus precision.  First, the American Community Survey is a survey so you have to be aware that there's margins of error, talking about precision.  The more geographically precise you want to be, the more risk there is that the margin of error are problematic and so one of the things you need to come to terms with is what level of accuracy you can deal with and also just how to talk about it so when you write about data from the American Community Survey, rarely do you want to say one is the most or the least, but with the margin of order, the lists might change order.  But you can still get a lot of out of it as long as you're careful not to treat it as extremely precise data.  So every table has a different universe that is sort of what's being counted so most of them would be talking about these are all the people and of all the people, this many are men or women, this many are this age or that age.  But some tables have a different universe, for example there are tables about how people get to work and the universe for that is workers and specifically workers I think between the age of 15 and 50, and so when you compare numbers from a table like that to another table, if the universes aren't the same, then you have to be very careful that you're comparing apples to apples and not apples to oranges.

So I mentioned a little about about geographic precision.  One of the things that census data users have to come to terms with is what's called a summary level.  So summary levels are basically class of geography, so the obvious ones are states, counties, you may have heard of census tracks and block groups.  I think there's like 200 summary levels but some of that is overly complicated.  What you really need to know is there's about 20 of them.  A lot of the rest of them come to do with how those shapes are broken down and you can usually separate those out:  One of the sort of caveats that is a good one to know early on is that a lot of people want data for their city.  In sometimes that's called a place, city or town.  But sometimes it's like a town that doesn't have a government.  So there's a whole bunch of those called places but in certain parts of America, places don't really cover everything and there's another level which is called county subdivision which is a better way to use if you're doing things especially New England, Michigan and...[inaudible]

If you're using analysis just within those places you'll get more of the places that you're trying to think about if you don't use the summary that's called place.  Again, this is something in the repository so you don't have to get it from me trying to make it concise in five minutes.  Another kind of interesting wrinkles is in ever any year they actually do three different releases.  For big enough places they release data on them every year and big enough in that case means 65,000 people or more, so in that data, you can do year by year comparisons going back to 2005, but for places that are less than 65,000 people, the bureau doesn't believe that the margins of error and the sample sizes are good enough to get good results so they collect data for three years and use that for places that are 20,000 or more.  And they also have a release that collects data for five years and they have to use for ... again at the block group level you run a decent risk of margin of error problems, especially if you're trying to get a very specific sort of subculture, so the numbers of men versus women in a block group are pretty reliable estimates, but the number of, you know.  15- to 25-year-old men of Ecuadorian heritage is less likely to be a number that you can trust at the block group level and you need to get a bigger aggregate for that.

Another wrinkle to now about is a lot of people like to do data analysis by county across the whole United States, but actually only about I think 25 percent of American counties are big enough to be in the one-year dataset and only about I think it's 40% are big enough to be in the three-year dataset.  But a decent number of counties are too small to be in anything but the five-year dataset in terms of population and so you just have to sort of be aware of that when you set out to do things.  You get these giant counties that have no people in them and they look really important on a map.  It's important to be careful not to cross compare data across one year, three year, five year datasets.  You should get all your data out of the same datasets.  So if want to talk about Chicago and also towns around Chicago that are not in the dataset.

It's also comparison over time is tricky with the ACS, for a couple of reasons.  One is that for smaller geographies, so that because the time periods overlap, the census bureau generally discourages people from using comparisons from releases that do overlap, so they want you to have adjacent releases so that you're doing 2010 to 2012 for the three-year dataset, you are and you want to compare that to the 2007 to 2009 dataset, not the 2009 to 2011, so you don't want them to be overlapping because you have mixed numbers in there that cause confusion.  But for the various geographies, there are not always data adjacent five-year datasets.  The other trick there is that the maps are redrawn at every decennial census.  the real point of the census is to figure out how to vote for representatives in Congress, the maps get changed and so the data from the 2000-2010 period are for maps that are not the same as the data for 2010, and I actually don't know the proper state of the art for correcting in the change in the maps for the survey data.  We do it for decennial census level, but for ACS it's complicated.  But I was at a seminar and I was surprised that the Census Bureau was put on the seminar.  ... it's still a pretty new thing and the best practices are being defined all the time.

So I think those are the main kind of points I want to talk about.  I could go on and on and if you get me the a the bar and ask me the wrong question you might get me to do that.  But for now that's kind of a brief introduction.  This and a lot more is in the repository that Ryan was talking about.  For now, I'll yield the floor to the next person.

DEREK WILLIS: So hey, I'm Derek Willis, I don't have any buttons to give away to you, so but I'll advertise the census reporting buttons.  So I want to introduce you a little bit to the Federal Election Commission data which is available, and the good news is that there's a lot of data.  The bad news is that there's a lot of data and it covers different things.  You wouldn't day it like a circle, you would draws it as like a house that you bought and then added the rooms on and then other people got to design some of those rooms or pick many so of those rooms and then maybe you leveled them off and there were different architects representing different styles that built onto that house so that it ended up looking like crazy town basically which is sort of a decent way to describe it because the Federal Election Commission covers House, Senate and presidential races, that's it.  And all the politics that goes along with it.  So automatically there's a stratification level of not all elections.  We don't do state elections.  So that's not there.

And then of course there are varying methods of how you get that information in, and schedules, and times that people file, and you can choose to file, and so it is not a -- again, like thanks to the constitution, it's a federalist system, it's more of an opt-in system for data than it is a required system for data in some respects.  So just to give you some brief example:  Candidates can choose to file, at a minimum, every quarter.  Every three months. But they also can choose to file monthly, and now monthly is better for us, I think as journalists and folks who build things.  

Quarterly might be better for people who frankly don't have a large campaign staff and who don't want to pay to have somebody type stuff every month, or it's not important to them or frankly they'd like to remain in a little bit of a stealth mode for a little while for strategic political reasons.  So there's sort of disclosure, there's like degrees of disclosure, but there are also degrees of like tactical degrees of disclosure that you have to get in the mind set of thinking, well, what would I do or how would I do it?  

A really sort of good example of this that you might have heard of recently is this project by the Harvard law professor Lawrence L. Lessig, to fund this super PAC to end all super PACs, which is both ironic and clever at the same time, and because of how they structured their fundraising drive, it actually fell over two reporting periods, and so some of the money that they raised, we know that they have raised a total of $6 million from individual donors, some of that money was reported on the 15th of July, because it was raised before June 30th.  Some of the money was raised after June 30th, so technically they wouldn't have to tell us anything about the money they raised after June 30th, until after October 15th, which seems ridiculous in a lot of respects, but that's the schedule they've chosen to file upon.  They could choose to file monthly but they've chosen not to.  Now, they are going to release stuff every two weeks on their site which is another whole weird layer of disclosure.  There are a lot of choices here.  I'm not going to say that the census and ACS are not complex, because they are complex, but they are fairly consistent about how they release data, when they release data, there's a nice schedule it's not like we're releasing data for 49 states, one of the states opted out.  But with campaign finance, that can happen, at especially at the federal level.  That makes comparisons pretty tricky in a lot of respects, because if mostly all the candidates in a race will file on the same schedule, but, you know, sometimes you have some variation there, but if you wanted to compare across candidacies or across other things, that makes it difficult, as well.  

So the repository is essentially a guide to the things that the Federal Election Commission makes available.  There is bulk data that covers the entirety of a two-year election cycle and that is cumulative data, essentially every time a new candidate comes in, every time a new transaction comes in, it all gets shoved into cumulative files, we download all of the individual contributions all at once.  And then there is episodic data, which is to say that each individual filing is available -- well, unless you're a Senate candidate, each individual filing is available electronically, so you can look at it in that respect, you can be like I want this filing and I want that filing, or I want all the files by a particular candidate.  

The Senate, in its infinite wisdom, as the world's greatest legislative body, they file on paper.  And I don't know when they're going to stop doing this. Because if it took them 80 years to really come to conclusion on the one-person-one-vote theory, it may take them 160 years to come to the conclusion that computers-are-a-better-way-to-do-things theory.  So there's a huge time lag for the availability of Senate data, but for House data and for the committees, the political action committees that kind of work around election there's not it's not exactly real-time data but there is a lot more data than you would think of in terms of just these filing deadlines, whether they're monthly or quarterly.  Committees and candidates file every day and you know, including amendments of previous filings so it's worth sort of coming up to speed and looking at things and how you find out about the FEC data is you just look at it and keep looking at it.

The problem is that unlike the careful, the really careful folks in the Census Bureau, the FEC folks, it's not that they're not careful, but they're not careful enough and there's too many filings for them to deal with, so there are mistakes or people make mistakes in filings and everything has to be greeted with or approached with fairly abiding skepticism that well, if something looks wrong, yeah, it probably is wrong.  So on again in the FEC data section of the repository, I'd love for people, you know, whether it's in here or outside of this session, to take a look at it and be like this part doesn't make sense to me or that part doesn't make sense to me or can you explain this a little more and that's sort of the way I feel that we will get kind of pushed forward on a larger front than simply me looking at findings all the time and tweeting out weird things.  On the other hand, if you enjoy this sort of stuff, maybe we can schedule shifts where can you tweet weird stuff from findings when I'm on vacation, which starts in 48 hours from now.  So thank you.

JACOB HARRIS: Ryan invited me to be on the panel, and he wanted me to give information on the AP.  Which I actually pushed back on a little bit.

> For a newspaper of 70 to 80,000 circulation, they were charging $5,000 for access.

OK, per state?

> I believe that was the -- I think it was probably national package, and I think they quote different prices to different papers.

Yeah, so anyway.  Well, you know, it's also -- sort of also the point is they're not the only sort of game in town anymore.  It used to be the AP was the only organization that collected sort of national election results because they would basically put stringers in every state's, you know, even down on various county levels reporting to a national operation.

I mean there's also other people, also, in the state, in the sort of space, of probably like election results, so you can obviously go to the states themselves.  States run their own election, it's in the constitution.  That's not ever going to change.  There's no sort of federal election, you know, commission controlling, they don't control, as Derek said, how elections are run in each state, so you have to go to each state and that's usually where the problem happens.

You know, and so what I want to talk about is not so much the specifics of working with the AP, but just the specifics of working with election data.  I mean how many of you have actually reported on elections before?  Just a quick show of hands.  How many how many of think you would ever want to?  I mean because the fun thing about elections is actually the data model itself is really simple compared to say, like, you know, the census data or the FEC data.  Because it's really just three tables.  You have your races, right, which is just like these could be statewide races, could be county level results, it could be results rolled up congressional district.  It could be precinct.  But those are all races.  You have candidates which, unlike the census, you're not rolling up data from millions of Americans, or unlike the FEC data you're not reporting every campaign donor with their address.  

You know generally who the candidates are for a given election, and you can say, OK, I want to copy that they're named or something like that.  It's not going to kill you to go through all those names and they're joined by a table which is basically the results which is basically this candidate got this many votes in this election, simple, done, you know?  And usually there's one other table that you care about which is C, calls.  And those who won this race because we don't want to say who got the most votes, we want to say this will be the next senator from Mississippi or whatever.  The challenge is not so much the data that goes into this, I mean the actual data of these tables, it's just the process that goes into sort of creating this data and sending it to your database and that's where things basically get fucked up repeatedly.

Because every state runs their election in their --

> Don't sugar coat it, Jake.
[laughter]

JACOB: Sorry.  And usually there's just generally a slider of I mean the process of this whole thing this data is collected usually varies based on the laws of that state, the process in which the votes are tabulated, things like that.  The one thing I would say if you're ever with going to work with election data is you should acquaint yourself with the two concepts.  Which is one, you should assume nothing, you know, about the data unless you can sort of guarantee it, so a lot of people say, oh, well, I have a race one, there's only going to be one race winner for a given race, right?  Only one person can win a race.  Oh, you poor naive fool.  You know, sometimes you have races that have two winners, California has open primaries, for instance, OK, where the top two winners go on to general election, certain assembly races in New Jersey.  Sometimes states have these rules, well you have a winner if someone gets more than 50% of the vote, otherwise, we go to a runoff, OK, and then you have to say, OK, these two top candidates go for a runoff, so you have to flag for that.  Sometimes the race is literally too close to call.  You can't really put it that a race is called either.  It may not be called while you're still counting votes, OK?  It could go to recount later.  

People also assume, well, candidates, these are people, right?  No, not always.  You have ballot initiatives, right, so those are your you're actually voting for two fake people, yes or no, affirm or reject, things like that, those aren't really people.  Some allow you to say none of the above.  You can vote for that.  And I think actually it was a Nevada where for the democratic primary "none of the above" won.  Now, under state law, that actually meant that the first candidate underneath actually won the race, but none of the above actually had the most votes.  They don't actually send nobody.  This is more of a protest thing.  But that's what they want to do in Nevada, so you've got to live with it. And similar other sort of things like that.  

Results also, people think this actually represents the actual votes of the election and normally that's true except whenever you deal with basically presidential primaries or caucuses, your results may actually be like, you know, delegate allocations and stuff like that, so the other sort of point I would probably make about this is that you know, primaries themselves can be complicated and vary with rules from states to states, but presidential caucuses and presidential primaries are the most insane collection of edge cases and weird rules you will ever see, and so I hope if you ever find yourself doing election data, you don't do presidential primaries, because that's just nuts.

> I don't know how much, you know -- Yeah.

JACOB: OK.  I mean, you know, and that's pretty much it.  I'm working on trying to sort of collect a document like the ones that are on the GitHub for now.  But I think it's just going to be a long listing of various ways in which you have to sort of be prepared for, you know, various exceptions arising, so we'll look for that.

> Awesome.

RYAN: OK. Does anybody have any questions about census or FEC or election data that you want to get out right now?  Sorry.

> Is there a way as an individual person that you could get AP election data?

> I kind of doubt it.

> Yeah, you have to be a member anyway, I think.

> I think that's right.  You have to be a member organization.

> I'm pretty sure they would sell to somebody else at the right price.

> They sell to other people.

> At the right price.

JACOB: I mean the real question I guess I would ask.  If you were reporting the election that night, if you were more interested in analyzing a prior election, you could go to something like open elections you know, which is a good resource.

DEREK: It will be when we're done.

JACOB: You know, or you can scrape -- yeah, I don't know.

DEREK: And academics, as well.  I mean like in the course of an open election, we found there's a professor at ivy state that keeps results of elections since 1967, like I don't know why.  It's probably his Ph.D., but he has it.

> Did you ask him why?

DEREK: Honestly I think I'd never get out of that conversation.

RYAN: All right, who else came with a cool dataset that you don't have to spend five minutes talking about, but that you at least want to throw out there and let us know that this thing exists and maybe give us a little bit of background so that we might be able to tell stories with it.  Anyone?

Jeff?

> JEFF LARSON: NASA has two satellites, Landsat 7 and Landsat 8, and if you ever need relatively quick raster data, satellite data, the picture is not super high resolution, but it's really available and it's the largest dataset we are currently working with.  Al Shaw on his work computer has 320 gigabytes of raster data.

RYAN: When you say raster data?

> JEFF: I mean pictures of the earth from space, so ProPublica used to do investigative journalism, and now we do investigative space journalism.  That's right, motherfuckers!

> Are you going to try on one of the space suits down in --

> I already have one. It smells kind of bad.

RYAN: What kind of stories are you going to tell with this -- with pictures of the earth from space?

> JEFF: Uh, think about it.  Sorry, we don't talk about stories, but we do like playing with it, so we can show you a demo.  The fun part of this data is -- well, not for me, but for the designers in our crew -- is it's the only data that you get to play with in Photoshop, because you can do many things, most people think raster data is images, right, and it is imagery, but the other thing that you can do is you can create false color images to look at things like vegetation growth, because the way -- Here, I'll sort of draw it on the board.  Because the way that Landsat works, it's for a lot of scientists, but the way that Landsat works, is there's sort of this spectrum of light in, you know, the electromagnetic spectrum, and Landsat sort of picks up sort of like this stuff, right, so it picks up, there are these different bands.  It has like actually 8 different cameras or something like that, and it will pick up like the red band, the green band, and the blue band, and then you can also get ultraviolet, so you can do things like pick up vegetation, you can get infra -- a little bit of infrared, although that gets a little weird, and the way that you combine all of these different bands shows how you can, you know, defines what the picture that you're showing is.  And it's actually a dataset, right, when you think about a picture, it actually is, if you add geo reference coordinate to it, you're actually dealing with little itty-bitty grids of data, right, so this is maybe, you know, a gigabyte, so would that it be, you know, like 1,000 by 1,000 grids on the earth that contain like actual emanations of data.  People do all sorts of things like flood modeling with grids like this, where they'll just mask out all of the blue stuff and there's your water, and then all of a sudden you can feed that through, you know, like GPUs and things like that to do analysis on it.

> And it's just like a really cool dataset that I don't think we've done much with outside of just plain imagery of you know, plane crashes and war zones, and I think there's a lot of talk about investigative space journalism but I think we can do a lot with this and I'd like to see people fiddling more with raster data.  Because it really is true, you know GDAL and Photoshop, you're just dealing with.  

> What's GDAL?  

> JEFF: Geodata Abstraction Library, which is actually this great library.  There are a million, you know, different proprietary file formats for this, because meteor -- the weather guys, were around long before we had freely available satellite data, right?  And the weather guys all came up with their own grid-based data, so what GDAL allows you to do is take all of these weird formats that maybe an academic likes one sort of format and translate it to geo TIF that you can then edit and Photoshop or do, and the other thing is you can do spatial statistics on this, right so there's a great raster dataset that classifies these little grid images by these little grid pixels by land cover, and I forget what it's called, but it's on NASA's website, so what you can do is you can run classifications based on these colors, so if it has this much infrared, if it has this much blue or something like that, this much of this spectrum, more in the violet range you're looking at water, right?  You're looking more brownish, you're looking at cities, right, and so you could do things like you could look at the south side of Chicago and see that it doesn't have the same sort of -- you could quantify that, I don't know if everybody saw it, but someone did sort of like compared the south side of Chicago and there's like no trees and the north side of Chicago and it's all trees, you know, sort of like urban renewal kind of projects, so you can classify -- you can correlate between like wealth and tree cover, right?  Actually sort of works in some places and you can do that just by running statistics on these colors.  So there's tons of great ideas on using satellite data.

> Wetland mitigation banking is a term that you're familiar with in your state, where developers have to set aside preserve wetlands and they can destroy wetlands in order to build stuff like Florida, for example. You can use this stuff to compare where the wetlands went.

> One of the dark sides of this satellite data is there are companies out there who will do basically like corporate.  It's maybe not a dark side, I shouldn't say, who will do sort of corporate fact-finding is what they do call it, so they take all the satellite pictures and they look the at amount of oil in an oil tank, and then all of a sudden you have like actionable intelligence, right, if this oil is really, really low, then maybe we should hold onto our oil reserves, you know, the futures that we have, if it's really, really high, you would sell them off.  So things like that you can also find out, which is a lot of fun.  So anyway, that's my dataset that I think we all should work with.

> One specific example of how we used in addition to the imagery, you can get elevation titles, raster elevation titles from NASA, so that's a great thing if you want to use it to see rising sea levels or that sort of things.  Like we used it in the Philippines last year.  If you open up an image editor, just look like black and white, but each pixel is a different shade depending on the elevation and there's free software that will process that.

> In the United States it is called the national elevation dataset and it goes in some places, especially wetland areas, the United States department of -- the army Corps of engineers will fly planes over and shoot lasers at the ground like it's so cool, this stuff is so cooled and they call it LIDAR and build digital images with it.

> You can say it's 10.5 feet off of the ground, not RGB, right, so again, right, like it's the future.

[laughter]

> So, yeah, and I think --

> I was going to say that Al Shaw talked about this at length in the earlier session and he talked about the project you're working on about Louisiana land loss. 

> JEFF: I didn't want to say that, but I guess he's not as close to the chest.  Yeah, the Louisiana land loss, so what we're doing is looking at cities that no longer exist because of soil erosion, using these same sort of methods that we were talking about.

> How far back does the data go?

> JEFF: Landsat, so the problem is, we had this great -- Landsat go back to the 80s, the problem is like since 1996, something happened to Landsat 7, so a lot of the data in the beginning of 2000, you'll get these weird bands of no data that look like that, and then here will be data because the sensor got misaligned somehow, I mean it's in space, so you can't go up there and jiggle it a little bit ...

> But Landsat 8, has this great layer which is black and white.  It's very high res, so you can like see people walking around ...

RYAN: Anybody else who's got cool data?

> DAVID YANOFSKY: Yeah, so I'm David Yanofsky.  My dataset that I always go back to is an an endless fount of stories for me, is this international trade databases, the [US has a great one](https://usatrade.census.gov/) that you have to pay for.  The International Trade Centre—which is a joint agency of the WTO and the UN—provide free access to journalists to [their database](http://www.trademap.org/), and in the international version you can get trade flows for very specific commodities, all categorized under the system called the [harmonized system](http://hts.usitc.gov/) and everything is in a hierarchy. At a high level is something like [petroleum products](http://hts.usitc.gov/Table%2027.xml) and all the way down to, you know, [soccer balls](http://hts.usitc.gov/Table%2095.xml#9506.62.4080) if you want to, you know, or I guess from soccer balls to toys, most generally.  And if you get access to the US dataset—which is really cheap, it's like for one seat it's like $300 bucks a year—you can get port level data at even more specific levels, where if you're doing local stories, you can see all of these items that are leaving, not just from your city, but from specific ports, you know, in this -- people, if you're familiar with the way that people talk about trade, they talk about the oh, the port of Los Angeles and long beach as like this one thing.  They're actually two separate ports, and the data shows it as two separate ports where like this is the stuff that's going through long beach and this is the stuff that's going through Los Angeles and that's a business story and you can talk about who has control of who docks where, if you know who's getting the tax revenue from those things, from the workers that are at those locations, the US data is anonymized, in that the census tries to protect business interests of the exporters and importers.

> So you know, you can sometimes see these things that, you know, are -- stories that I've written range from this is [everything that the US exported to Iran](http://qz.com/91152/), and here is why that's important, that led to a story about that -- so that's kind of a serious thing about sanctions and that you know, the US is providing a lot of you know, humanitarian aid, but that also less to this really silly story about bull semen that Iran is one of the biggest importers of US bull semen and then I did a story about [all the other importers of US bull semen](http://qz.com/91718/).

> Why?  Why?

> DAVID: Why not.

> Why would you not?  Who wouldn't read that.

> DAVID: First off, who wouldn't read that, and second off, the miracle of the American cow.  The reason -- just to explain this story, the reason why it's so popular is American cows are really productive.  More productive than cows around the world, so if you know, if the US has bred cows that make thousands of gallons of more milk a year than here countries, so people want the special sauce.

> It seems like the least possible interesting explanation.

RYAN: Awesome, thank you for ending on that note.

> DAVID: You're welcome.

RYAN: Who's going to follow that?  Anybody? Somebody else got cool data?

> JUSTIN MYERS: Not that cool.

RYAN: All right.

> JUSTIN: So one that I tend to use a lot at chronicle of higher education is called IPEDS.  It's the Integrated Post-Secondary Data System.  Basically if you're an institution that participants in federal student aid at all, you have to give them all of this data, and even if you don't participate in federal student aid, if you want to get listed on like at department websites for possible students other families, like college navigators, that they've been promoting, then in order to get in that, you have to participate in IPEDS, at least a little.  So they collect a bunch of stuff on really weird schedules throughout the year.  It's like nine or ten surveys spaced throughout the year.  Some of them are optional in different years, the schedules are weird:  But you've got things like tuition, professor pay, degree breakdowns by field and level, really narrow fields even, they have like these progressively smaller codes they call CIP codes, I forget, it's like classification of instructional programs or something.  But, you know, so if you want to see how many people in Arkansas got Ph.D.s in, you know, microbiology, like, you can do that, and you can get it by school.  And you know so there's attendance, there's all kinds of stuff.  So they have their own really weird online tool that takes some getting used to to access all of this stuff and they also have big CSVs broken down by year if you want to dig in.  They're a bit crazy to work with, I'm trying to start writing something up for Ryan's repo, but if you're interested hit me up.

RYAN: So this seems like a really good opportunity to talk about this repo.  Can we come full circle here?  We have about ten minutes left, so maybe not enough time to actually do small group work, but let me write this address up here.  This is where this thing -- this is where you can get to it right now.  Bit.ly/dataset guide.

There's a readme, and then there are two guides that I think are in a state of doneness, one of them is on American Community Survey, Joe and I teamed up on that one.  Derek has one in there about FEC data, like Ryan said, Chris Chang has already started on one about IPED data so we should totally hook you two guys up to work on that, and Jake who was going to work on something for elections.

I mean I just want to listen about people talk about cool data.  I do want this ideally to become a resource for people who are not here.  And so one thing that we kind of talked about leading into the session was, if we had had time to do small groups, if any of you are unfamiliar with some of the datasets that are written up there, it would be fantastic if you could go through them with an editor's eye.  Does the writeup on ACS data tell you enough that you would feel comfortable about going to census reporter, looking something up and writing a story, do you have that kind of background?  Same with FEC data.  The other thing I was hoping we might be able to do is to have people identify datasets that you wish we had guides for and we can probably actually do.  We have enough time to do some of that:  And I kind of wrote down the ones that got mentioned.

> So the processes people should also, if they should fork off the dataset guide and --

RYAN: The process, yeah, whatever is easiest for you honestly.  If you feel like e-mailing me and saying I can write something and I will email you, I will totally do that.  If you use GitHub and you can fork and do a pull request, that obviously is awesome, as well.  If you see a mistake, something like that, just get ahold of me, I will kind of try and carry this torch forward.

> Is that the same thing you people to do with I don't get this.

RYAN: Yeah, whichever way of communication is easiest for you.

So we have ACS, FEC in progress, is it IPEDS they have system in it. And elex is kind of in progress, as well.

Is it actually called Landsat?

> JEFF: Yeah, I mean yeah, sure.  Space, space pictures.

RYAN: I think Jeff entered into a binding contract to write a guide on this.  We talked about, is it NED?

> JEFF: Yeah, National Elevation Dataset.

> Landsat's Twitter is awesome, too.

> DAVID: International Trade Centre trade map, it's trademap.org, and it's center with an "r-e," and the other one is USA Trade Online is the census database.

RYAN: OK. All right, so those are the ones that people kind of talked about just now.  So we have a few minutes left.  What -- yeah?

> Probably UCR.

RYAN: UCR?

> The crime center.

RYAN: For people who are not familiar with UCR?

> Uniform Crime Report. The FBI gathers it from local police agencies.

RYAN: Is this a dataset you are familiar with and are you volunteering to write a guide?

> I hate that dataset.

RYAN: You're the perfect person.

> I don't have a dataset, but I was thinking there's a collaborate source and I've been taking notes on what people have been saying so we could put those and people could flesh it out ...

RYAN: What datasets frighten you that would love to tell stories from?

> The CDC Wonder dataset.

> The aptly named Wonder.

> And I don't know anything about it, but I've tried to fool with it, and I need somebody to write one of these guides for me.

RYAN: CDC Wonder?

> Yeah, it's probably an acronym, but I don't know what it's for.

RYAN: Oh, that's even cooler.

> Time use dataset from BLS, which is like how Americans spend their day.

> JEFF: Actually everything on BLS.  If I could get a dummy's guide to BLS, I would give you so many space pictures.

RYAN: Does anybody in the room know who should write that.

> I could write that.  I have it from BLS. send me those space pictures tomorrow.

> JEFF: OK, I will.

> NAA Fisheries.  So they'll tell you like what fish imports and exports of various countries are.

> There's tons of stuff on OSHA.

> Are you also interested in any state-specific ones, as well?

RYAN: Absolutely.  I was kind of thinking if we divided up in small groups, something probably worth talking about is how is this going to end up being more useful from an architecture kind of perspective.  I don't know if it needs to get divided up.  Probably the thing to do would be to get more of these articles in and then a structure will just emerge.

> Well, the one that like I would be maybe able to do is Texas campaign finance, Texas ethics commission.

RYAN: I know that there is a -- that California recently -- they have basically their own FEC dataset now for at the state level, but Dan Welsh isn't here.  There might be somebody from --

> Yeah, I'm actually not familiar with it.

> NYC Pluto dataset.

> Yeah.

> Is it's a building lot level shape files of New York City.

RYAN: Cool. Yeah?

> I would love more information on the Federal Lobbyists Registration Datasets.

DEREK: It's actually a pretty simple guide to write:  "Don't use it."  But --

[laughter]

DEREK: That's actually useful information.  There's a lot of datasets that look legit, but stay away from them.

RYAN: Yeah, the ACS has datasets on health coverage but there's a lot better information than that.

> Federal Reserve Database.

DEREK: They have an iPad app; have you ever seen it?

> The Center for Medicare or Medicaid, or CMS, has a ton of data on hospitals.  There's a ton of stuff there.

RYAN: Awesome. Cool, we have a couple minutes left if there's more stuff to get on this list.

> SEC filings.

> This is kind of more like a wishful thinking thing, but the new government startup ATF for technology innovation for government.  I wonder if they're making these kinds of lists and if they would share.  Do you know anything about that?

> I don't know, I mean I've seen them exist on Twitter, but that's --

> Yeah.  That's an interesting thought.

RYAN: Just like hitting them up and showing this kind of thing in progress.  Can we assign someone to do that?

> I can do that, yup.

RYAN: OK, these things are on there, any of you who are willing to be editors, did we tell you enough so you feel comfortable actually doing analysis?  These are in progress, these are ones that we will endeavor to recruit writers for, some of whom are right in this room.  Jake?

> Are you going to put this list up on the actual dataset guide.

> I can add it.

RYAN: And if you can write the etherpad link up there, yeah, keep adding to it.  Maybe by next SRCCON, we'll have a much more fleshed-out guide.  That will be awesome.  So cool.  Anybody have any last thoughts before we free everyone up for lunch?

JACOB: I totally forgot most of my presentation when I was giving it, but if you interested in elections or you just want to hear me just complain about caucuses, just feel free to talk to me or email me or whatever.  That's it all.

DEREK: When Jake says complain, he means say really smart things.

JACOB: Yeah, caucuses are the worst.

RYAN: Awesome, all right, well, I think we're at the end of our time, so make some coffee, eat some lunch, stretch your legs, all that kind of stuff.  Thank you for hanging out.

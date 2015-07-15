---
layout: 2015_layout
title: Session Transcripts
subtitle: A live transcription team captured the SRCCON sessions that were most conducive to a written record—about half the sessions, in all.
section: docs
sub-section: interior
background: books
byline: Nate Bolt
bylineurl: https://www.flickr.com/photos/boltron/3212284622/in/photolist-5TRNiC-4VkeqM-4VpqGm-4VkcGz-4Vpr1S-4Vken4-fmXRof-2YtFPR-fmHB44-dFxkXG-7yv4t7-4VnnAn-5A3XSn-4Vnnmv-4VnnqK-9uup4n-4Vnnv6-3ViP2v-4VnngF-4VkgVa-4VkeuZ-4Vkg5R-4VpmbC-4VpnDu-4Vk9rK-4VpqRL-4VpsPb-4VpuU3-4Vkf5D-4Vkdj6-4Vk8uc-b1TXEz-4VkhcX-mF5DPa-fmHXAB-r8mgB3-s5i4Mz-7i3R7t-og8qB5-fmXSCf-7i7Ky9-92YNnD-fmHDut-5C51hV-rMM8b3-k639ok-8FDPAB-apFhiP-rL2vRV-4VptiN
permalink: /docs/transcripts/databasedifferences/index.html
---

# Wrong on INFILE, Wrong for America—What Do You Really Know about Your Database Software?

### Session Facilitator(s): Michael Corey, Jennifer LaFleur

### Day & Time: Friday, 11am-noon

### Room: Minnesota


Good morning!


Good morning.


How is everybody?


Great.


Coffee?


Yes.


Oh, no. I scared people already. This is not good. Okay. Well, this is understanding your databases through political advertising. I'm Jennifer LaFleur. I work at the center for investigative reporting/reveal.


I also work at the center for investigative reporting/reveal.


Most of the session will be you creating things, but we have a little bit of an intro to explain what our plan is, and then some video by our director, Michael Corey. So I just want to go through kind of why we did this. Oftentimes we'll be arguing about which database is best for what. And, you know, what we found out when we were talking about this is—we learned a lot about how different database programs allocate memory in your machine, how they index things. Just kind of the inner workings of each database program and why one might be better than the other for certain reasons. So there's a lot of them out there. That's FoxPro. Yeah. And ILENE is probably the top database program. What do you really know about your database software? So that's why we dug into this. I will admit I use SQLServer quite often for our newsroom database archive. But one thing SQLServer does is track your every move. I wasn't as creative as Michael.


I'll translate. Did you log onto the server at 10:23 a.m. on June 2nd and fail?


So we decided to look deeper and compare them. You know, and what better way to make any kind of comparison—is through political ads. That way we can dig up information and dirt on all of the different databases.


And the great thing about political ads is they don't really have to be fair. So we can just have fun. They can be based in some kind of half-truth. And I come into it from the postgres world, which is sort of the opposite end of the spectrum from the SQLServer world. I was doing pesticide data, millions and millions of rows, and running it on a small SSD drive because I wanted it to be fast, and I would run an update query and the query would fill up my hard drive and fail. I couldn't figure it out. I kept looking around and found that postgres has transaction management, which is good, because you don't lose data when the query fails, but if you do an update, it makes a copy of all of the data, finishes, and substitutes out the data that it did. I was used to thinking of a database as a CSV that lives somewhere deep in my computer and that's not how databases work. But I didn't really know that. So we have two pre-made ads that we're going to show you. Microsoft Access and postgres. And then we're going to turn it into you guys and you're going to storyboard ads using your own expertise. Because I don't know much about MySQL or SQLite but I know a lot of you do.


Microsoft Access. He says he's the everyman database, but who is he really looking out for? Is your database bigger than 2 gigabytes? Nope, not you. Do you use a Mac? Nope, not you. Linux? Nope. Not you either. And did you actually want to deploy your data in production? Sorry. Access isn't for you either. So who is it for? If you follow the money, and you'll be paying some money, it's clear who Access works for. Don't get penned in to a proprietary GUI mess. Vote no on Microsoft Access.


Classic.


Okay. The next one is targeting postgres. If you're sensitive to flashing lights and things, I just wanted to warn you. Shield your eyes.


Not joking.


There's a lot of psychedelic business going on in this.


Is postgres ready to lead your news app? Let's look at the record. Postgres was created in Berkeley at the University of California. It's an Open Source project that's free to the public. Cut your hair and get a job, postgres! Sure, transaction management sounds great. But if your database is big enough, running a simple update query can fill up your hard drive. And if you cancel, postgres will save a copy of everything, leaving millions of deadbeat tuples in its wake. Vacuum? Who wants a database you have to clean up after? Call postgres and tell them we don't need a Berkeley socialist on our servers.


Okay. So your job is to pick a database. Gather in groups where you might have a common interest. Pick it apart. And storyboard your ad. You can do whatever you want. We tried to find play dough this morning. If you want to do claymation ads, we can't do that. Sorry. But we do have paper. And post its and markers. You can do video or audio. Whatever you want to do. But somebody be a leader. Pick a database. And recruit folks to your political committee.


And we're going to have some kind of presentation at the end. Either a pitch for an ad or a live action acting out of the ad. Just throwing it out there.


And there will be fabulous prizes.


There will? Bacon and muffins!


I just like to say fabulous prizes.


But yeah, we've got lots of markers. Who has MySQL? All right. There's MySQL team. Who wants to do SQLite? There was a lot of chatter about it. I know you're out there. All right. Sweet. FoxPro? Anyone? Anyone? I don't know. It's up to you guys how you want to break it up.


Just relational?


No, you can do crazy NoSQL leftist craziness if you want.


You can even go non-technical database and do QuattroPro. They look at me like I'm...


FileMakerPro?


Oh, I forgot about FileMakerPro. It doesn't have to be... It has to be something you can target. Not something you love.


Yeah, that's the other rule. It has to be a negative ad. It can't be a positive ad.


Mongo?


This is the SQLite table.


Who's doing Mongo?


Come on! Mongo! He might need creative genius behind it.


I'll do Mongo with you.


Political ads are always negative.


I've never used it.


This is how you learn.


You can bring your ad skills to bear on MongoDB.

(breakout sessions)


If you have questions, just yell medic. You probably don't need us.


Don't forget you have to have a committee name too. Your ad committee has to have a name.


So you have about 15 minutes, just so you know.




You've got, like, three minutes left.


Will you be offended by any derogatory reference towards Sweden?


No.


And if you want to do anything on the monitor, you can plug in too.


You are in Minnesota, so that's risky.


True. Although I think there are more Norwegians here.


Right over there!


There was a name that had an umlaut in its name, and the department of transportation didn't put the umlaut on when they put the sign up!


The governor said—if I have to go paint them on myself! That would have been such a wonderful sight.


Okay. 30 second warning.


Okay. Time! I have put all of your team databases on these cards, which Michael has not seen. So he's going to pick first.


Up first... Mango? Mongo!


MangoDB!


MongoDB, you're up.


Who's holding the paper? I'll hold the computer. We have to do a theatric version.


Are we recording any of this?


I don't want this to leave this room.


Respect the team's wishes.


Can we dim the lights? Seriously.


Let's see what we can do.


Wait, we'll do a cue when we want the lights back up. All right, all right. We're ready.

(thrash metal)


Terrorism. MongoDB. There's a new problem with this country. It's a new database invaded our school with our kids. Teenagers aren't going to church anymore, because they're using Mongo. They live by no schemas. They're writing JavaScript, the language of communism! They're using BSON, like BS! No transactions? More like terrorism. It's web scale we don't want our kids using the internet, because it's evil. Vote for a company that you can trust, like Oracle!


I love "they live by no schema!"


All right. Since you guys already went, pick one.


MySQL.


What was your committee name? Sorry.


It was the Data Purity Coalition.


Do you guys need lighting?


No, we're not that fancy.


Hey, don't you worry about the kids?


Do we have a name?


ByeSQL.


Like bye, SQL!


This is all good.


Awesome.

(imitating ominous music)


ByeSQL. Do you want a database that was born in Sweden? Sweden is cold. Do you want a database that lacks empathy? Of course not! You want something that's community driven. Not controlled by a man named Larry Ellison, who's more interested in sailing his boat than attending his own company's keynote address that he was supposed to deliver! Do you want a guy like that controlling your future? He may not even allow MySQL to be Open Source past 2015! Then what happens to your data? Does that look like the face of a community you want to uphold? We say no! We think things should be about...(cracking up) kids pulling wagons? It reminds me of that William Carlos Williams poem about the wagon and the chicken or something.


Now it's gotten weird.


Kids love pulling wagons!


Say ByeSQL!

(applause)


You guys are creative.


Extra credit for that William Carlos Williams reference.


That came out of nowhere!


I'll do the refrains.


All right.... Got to get in my voice. Chris Amico once said that SQLite was the honey badger of databases, but is it really? The honey badger is loyal to Africa, Southwest Africa, and India. SQLite has no such loyalties.


It looks like SQLite just don't care.


Yeah, it's public domain. They support free and Open Source software, but ask. Dusnax. It's not associated. It's a criminal!


Looks like SQLite just don't care.


Cracks under pressure. Yeah. Big data for SQLite? One user. No multi-users. No network access to the database. It's self-centered, like its fellow snake people. Created in 2000.


Looks like SQLite just do care.


It's everywhere. You didn't ask for SQLite. It's in your phone. It's in your browser. It's everywhere. It was this innocent app you installed. Basically we all have it. Like herpes.


The database you think you needed, not the one you deserve.


Brought to you by real databases for real Americans.


That's about it. Thank you so much! That went way better than we thought it would.


Yeah, you guys are fantastic! Any burning questions, issues, things you need to discuss? Tony?


No. Not publicly.


What was your company name again?


Real Databases for Real Americans.


You haven't heard of us?


Expect us!


So where is the land of the wagon children?


Yeah, where did that come from?


There was a lot going on, guys! We had some girls playing volleyball too.


It's over the rainbow.


We cannot award a prize, because you are all winners. These are all fantastic. But we will buy you coffee if we see you in that room later.


Free coffee over this way.


Wow.


Thanks, guys!


Thank you. If anyone knows how to draw a fox...


We were trying really hard. We were going to do FoxPro but we couldn't draw a fox.
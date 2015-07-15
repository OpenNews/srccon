---
layout: 2015_layout
title: Session Transcripts
subtitle: A live transcription team captured the SRCCON sessions that were most conducive to a written record—about half the sessions, in all.
section: docs
sub-section: interior
background: books
byline: Nate Bolt
bylineurl: https://www.flickr.com/photos/boltron/3212284622/in/photolist-5TRNiC-4VkeqM-4VpqGm-4VkcGz-4Vpr1S-4Vken4-fmXRof-2YtFPR-fmHB44-dFxkXG-7yv4t7-4VnnAn-5A3XSn-4Vnnmv-4VnnqK-9uup4n-4Vnnv6-3ViP2v-4VnngF-4VkgVa-4VkeuZ-4Vkg5R-4VpmbC-4VpnDu-4Vk9rK-4VpqRL-4VpsPb-4VpuU3-4Vkf5D-4Vkdj6-4Vk8uc-b1TXEz-4VkhcX-mF5DPa-fmHXAB-r8mgB3-s5i4Mz-7i3R7t-og8qB5-fmXSCf-7i7Ky9-92YNnD-fmHDut-5C51hV-rMM8b3-k639ok-8FDPAB-apFhiP-rL2vRV-4VptiN
permalink: /docs/transcripts/datflatsheet/index.html
---

# Fork and Merge Some Data with Dat and Flatsheet

### Session Facilitator(s): Max Ogden, Seth Vincent

### Day & Time: Thursday, 12:30-1:30pm

### Room: Ski-U-Mah


The session will start in 15 minutes!


The session will start in 15 minutes!


So our format is going to be a little weird. But we're going to do, like, some quick introduction of the concepts. And that'll be the main speaking portion.


And then we have a workshop people can do on their computer. And so there'll be kind of intermittent periods where we—when we think people are at a certain point, we'll do a reference demonstration. So it won't be a continuous block. And then we're hoping to have some discussion at the end. So for probably half an hour, there will be discussions.


Hello? Okay, cool. Just testing. Carry on. Carry on.


Just making sure you guys are well taken care of. Need anything? Everything good? All right.


Can you have three more people check on us?


I guarantee at least one more person will come in and ask.


The session will start in ten minutes!


The session will start in five minutes!


So if you want to get started... Or actually... Talk in the mic. If you want to get started five minutes early, you can go to the URL, on the top there's two options, but to get started early—the requirement, if you want to run it on your own machine, which is one of the options, I think it's the more fun and ambitious option, and I encourage it—the only requirement is that you install the latest—you have to have the latest version of either node.js or a fork of it called io.js. And there's instructions in the guide, but I'll add the URL right now. I recommend going to http://iojs.org and then just downloading the installer for your operating system, and get that installed now. If you want to do it on your own machine. If you don't want to install anything on your machine, we have an option for that too, but if you're feeling ambitious, and if you succumb to peer pressure—I'm looking at all of you right now. You should install the latest version of io.js on your machine, and then you'll be ready to run everything.


Is it the latest major of io?


Whatever the download link gives you. I forget. It's like two point something.


We need some music.


I know. It's pretty quiet now. I love transcription.

MIRABAI: Transcription loves you.

(Remix of Believe playing)


Okay. That was a remix of the Space Jam soundtrack with Cher's Believe. So let's get started! My name is Max. Thanks for coming, everybody! This is Seth. We came from the cold Northwest of the United States. It's cold and the rent is really high. And the infrastructure is terrible. And it's... Nobody should move there. So... I work on a project called Dat, and Seth works on a project called Flatsheet, and we're both funded Open Source projects, and our goal is to kind of build data tools. So we've been working on some data tools, so hopefully we have a room full of some data geeks to test out our data tools. And a little bit of background—I wanted to give the context—has anybody ever put a dataset into git before? Like a CSV or anything like that? That's a thing that a lot of people do, but there's a lot of use cases where it breaks down. Like, git doesn't talk to databases, git can't talk to your MySQL database, or export an XML file, so I've been writing a tool called Dat for the last year. We mostly work with scientific dataset publishers so they can publish their data and other scientists can install their data, and we want to support a lot of different file formats and support a lot of really cool automation work flows, but what we have out now is basically a basic version of our tools for downloading datasets and working with them and it's a version control tool for datasets. So the status of it is very alpha. We're about to publish the beta version very soon. So don't expect to take this back and deploy it into production right away. It's more like an early preview, and we're really, really excited to hear use cases and get feedback and know what we can continue working on, to make it relevant to you in the future. And like I mentioned, the whole thing is Open Source. And we have a team of three on Dat, three full-time Open Source developers on it, and we are on IRC every day, and we don't want it to just be a scientific dataset tool. It started out as a project working with open data, in cities. I think cities, science, and newsrooms are the three big frontiers for open data or at least collaborative data. So I want to make sure we can hit all three of those use cases really well. So with Flatsheet, I want to let Seth describe kind of the background of Flatsheet for a moment.


Sassy Flatsheet background is... I kept using Google spreadsheets and getting the JSON from it and hating it. And the additional goal was just like—hey, I wonder how long it would take me to build a prototype that does something similar but a lot simpler and the API is better and easier to use. And that's what Flatsheet turned into. Sort of the end goal now is to provide something a little bit like Google Fusion Tables, only better. I'm not quite there yet. Getting closer and closer. It's simpler than Google Fusion Tables, currently. It'll let you do the basic things you need to do. Editing values. Adding and deleting rows. API. To get it the data. And the version that we have today is an even more stripped down version that's sort of representative of—it's like a sneak peek at the new version that's going to come out. So you'll see that it's really limited. But it'll let you do some basic functionality of, like, bringing in a CSV, making edits, and then getting a new CSV back. What am I missing? I don't know if I'm missing anything.


That's probably good.


That's probably good.


So... Yeah. Both of our projects are kind of—our goal is to make tools that solve problems that data people have. So again, we're going to have some time at the end to talk about frustrations with existing tools or frustrations with our tools that you found out today. So the two ways to do the workshop—it's the same content. It's just either you're doing it on your computer or you're going to do it on a web environment that we have. And let me show the guide first. So there's this URL here. Which is for the transcription—maxogden.Github.io/get-dat/guide. And it's the same URL for the online version. You just take guide off of the end. So it's just maxogden/get-dat. And it's a tutorial—kind of a choose your own adventure style tutorial, that has 7 or 8 different sections, and each section is pretty lightweight. So it's not going to take the whole hour, hopefully. And it kind of just walks you through from the beginning, and the only requirement, if you're doing it on your computer, is to have the latest version of either node.js or io.js installed. That's the dependency that both of our projects require. And we—so I want to take a couple minutes to just get set up and make sure everybody can get to the content. And if you can't get it on your computer, at the same couple of minutes, your table is now your team. So there's a couple people solo tabling. Or actually... No, you're the only solo tabler. So if you have any issues, I'll be on your team. I'm also on everybody else's team. And Seth is on everybody's team. If your team gets stuck, raise your hands, and we will come help you. And so for the team, just take a minute and introduce yourselves, and then—well, actually, I want to show you the version that's on our servers. So this is a thing that we've built, a tool for running the workshop, and apologies if it's a little small. But... When you go to the URL, without guide on it, it will give you this, hopefully. And this is logged into a server—it's a real server—we're using a technology called Docker to give you a little sand box that you can play around with Dat in. Has anybody used the command line terminal before on Linux? See a show of hands? So it's one of those Linux terminals. You're logged in, and it comes in pre-installed with Dat and this tool called Data Editor, which is the version of Flatsheet that's going to be used today. It has everything installed already that you need to run the workshop. So when you run dat -v to get the version, you should see something like this. 7.0. And what's cool about this also is that down here at the bottom is a basic, basic text editor. So there's this welcome.txt file that comes with it, and I can go into there and I can type a bunch of gobbledygook, and then if I go back to the terminal and I cat that file, then I see my gobbledygook at the end. Hopefully. So this is dependent—yeah, here it is. So it kind of syncs the files that you're working with, with the files in this editor. So if you need to edit a file, you can do it really easily. So that's two parts of this. The third part is on the right. And this is just the guide from the /guide URL. In this pane on the right. Feel free to run the workshop in either one, using this web tool or on your own machine. When you get to step 5, it actually has you install it on your own machine, so you can replicate a dataset from here onto your own machine. So even if you do it on the web, you'll eventually have to install io.js to do the entire thing, or node.js. So I would recommend doing it on your own machine if you want to get a sense of what it's like to install the tools, so you'll have them when you leave. But if you have any issues with that or you can't get them installed, feel free to use the web version. So for the next three minutes, introduce yourself to your team. You don't have to have a team name. But it's optional. And then let's just have an install fest, really quick, for three minutes, and if anybody has issues, we can help them. And you can start going if you're ready.

(breakout sessions)




Is anybody stuck at the moment, that I can help out with? Wow. Okay.


So some people have had an issue with getting the wrong version of Dat when they install. And I think... I'm not sure what's going on. It might be a weird NPM thing. But this highlighted yellow command will definitely get you the latest Dat. It should work without the @ sign, but if you don't get the 7.0, just run this. And you'll get the latest one. Thank you, thank you.

(breakout sessions)




I swear I updated this yesterday! I don't know what happened.


Merge conflict.


Yeah, probably, actually. That's probably what happened. Live rebase. Okay. So if it says dat cat, that's wrong. It should be dat export.


Ohhhhh.


Thought I fixed that yesterday. Sorry. I just pushed a fix, so if you refresh in... Maybe now, maybe in, like, 30 seconds, it should fix it. But dat cat is my favorite command, but we renamed it to export. We're going to put dat cat back, because cats are awesome, but it's just not there right now.


Isn't there a song about that?


A song about...


Like, dat cat came back the very next day?


Oh my gosh. I think that's a slow clap.

(slow clapping)


If you put that data in there, if you had data on cat droppings, dat scat data, dat cat... Dat cat dat scat... Let's not go there. I think I just did.


If you get an error on picture tubing, here's a fix right here. I just pushed that up. Picture tube didn't work. But if you split it into two commands, then it should work.

(breakout sessions)


So I want to take a moment and show the actual forking and merging flow on the screen. We don't have it in the docs yet but I want to walk through—it's kind of complicated, because first you have to create a conflict. Which is like—it's hard to make non-contrived real world examples. Most examples are contrived. So I'm about to make a contrived example. So... I'll just say... Make a new empty folder. And if I clone... So first I'll clone the one from the server. And then I will make a second clone of it locally. So then I can have, like, an A and a B version, kind of. So imagine that this is happening between two people, and each person owns one of the folders. But it's all on one computer right now. So I can say—dat clone the testing folder into testing-2. And so that'll just make a copy of the first repo into the second one. So now I have two copies of the same thing. So I can go into testing, and I have a status, and it has the data in it. I can go into testing-2, I can do the dat status, that also has the same inits, so... I have the same version of the same thing. So now to create a conflict—and this happens in git all the time—is two people edit the same thing independently, and then when they go to push, then there's conflict. So I'll just do that really quick. I'll basically go into testing, and I'll export the first thing from the organisms dataset. So you can add a limit if you don't want to get everything. I'll just say get the first thing from the organisms dataset and it just gives me this piece of JSON, and I'll just save that as... Or, like, 1.JSON. And then I'll edit that file, so I could edit with Flatsheet. I'll just open up this file, and I'll change the organism's name from its nice Latin name into... What's a name that people like? I'll say Kanye. So now Kanye West is now in the... Somewhere in this genus. So I'll save that onto the disc. But now I have to import it back into dat. And I will import this one row back into Dat. And so you'll notice now when I do dat status in here, it has a different version, and instead of one version of the dataset, it has a new version of the dataset, and it has the same number of keys. There's... Well, that's wrong. It should be the same number of keys. But I just added a new version of the dataset, so I'll do actually the same thing in testing-2, but I'll do a different name. So I'll do the same exports. I'll call this 2.JSON, and then I'll name this one to... Let's name it Bob. And if I import that, back into this... Remember, this is the second copy of it. I'll import Bob in, so now we have a conflict, where one person updated the name to be Kanye, the other person updated it to be Bob, and so if I'm testing the original repository, I can pull. I can do a dat pull from testing-2. And the pull takes either an SSH URL, an HTTP URL, or a file URL, if you're local. And we have a bunch of other transports we want to do. One is bittorrents, the other is from S3. But for now, it's just HTTP or SSH or just local. So if I pull in the changes from testing2, it is... I think a dash. Then... Now it says that I have some forks. And I can view dat forks. So—right now it's these really long ugly things. But we're going to add pretty names. My fork is the F one. Theirs is the 4 one. So if I do a diff against the 4 one, which is the one that I pulled in, you can see a diff here that it gives you. So it says for the row that's called 1, there was an edit here. So they changed Kanye to Bob. And that's the conflict. So this is like our human readable diff format. And you can also get it out as JSON and feed it into a tool to do your merging. So this JSON we pretty print it. It's kind of hard to read. This basically just has the two versions. So you have the version... Don't write that. You have for this key—there's two versions of the thing. My version and their version. And so you can write a merge tool, kind of—our API for merging data is: You get given two versions, and then you either do an automated merge or you have a UI pop up to the user so the user picks the version they want. So use cases I'm really excited about are things like geographic data merging, you could have a little map pop up. Since we're built on the NPM ecosystem, you could have people install your virtual from NPM and have a really domain-specific merge tool. Or if it's a file where you're importing the Bob.png, you could even merge the file, so you could have dat read the binary files and put those into some sort of merge tool. So we're excited about people writing merge tools for non-text so we can stream large files into merging. So actually, let me just take this... If I wanted to merge it, it'll be a little bit cumbersome, because there's adaptive format JSON. I'm not going to do that right now. But to resolve the fork, you just write the version from here that wins, and then there won't be any forks anymore. So it's similar to git. You can have two versions of the same row, have dat show you diffs and then you can merge them, but the merging is all streaming and designed for data. And it's designed for custom merge utilities. So that's the forking and merging part. So Flatsheet is one example of a merge tool. We want to add in the future, like, a thing that Flatsheet can read your diffs for you and kind of show you the diffs nicely. And be able to have them be a visual diff tool for a spreadsheet. But... So yeah, that was the quick merge demo. And... Do we have 15 more minutes? Right? Is that the time? Okay, cool. So does anybody have questions at this point? Or need help? Yes?


How do you get started writing a merge tool for Dat?


So that's a good question. It was: How do you get started writing a merge tool? We're working on the beta release, which will have a bunch of docs for that. They're in the works. But it can be written in any language. It just has to take JSON in and do something and spit JSON out. We have a couple built-in merge tools. One is called right, one is called left, and one is called random. So you can look how we wrote those. They're built into the Dat (inaudible) tool. The random will pick one randomly. Right always does right, left always does left. I want to do some crazy ones too. I want to have one where—when you merge, it creates a Mechanical Turk thing, and whatever the Mechanical Turk people decide should be merged is what gets merged, or it posts to Twitter and whoever favorites the version they like more, that's the one that's merged, after a 24-hour period. Crazy stuff like that, just to be demos. Other questions from the crowd?


Can you talk about sort of the work flow that somebody might go through, to import their data into Dat and how they would update it and just maybe a use case or something?


Oh yeah. So kind of a work flow and use case for Dat. The main kinds of use cases that we're working with are data sets that—they don't have a nice change feed. And Dat is really designed to add a change feed to a data source, so that you can get diffs of the data. Mostly just because it's annoying to download the entire dataset every time a dataset changes. One of the use cases we're working on is the full Wikipedia history dataset, and it's like a terabyte of XML every month. So this month it's about 950 gigabytes, next month it'll be 955 gigabytes, the month after that, it'll be 960 gigabytes. To have to download that every month is really annoying and it takes a really long time, because they host it on one server and the server gets kind of pummeled. So one of the work flows that we have is somebody on the internet can write a thing that puts Wikipedia into Dat as metadata. You can clone the history down, and then you can figure out where to go to get the files separately if you want. So you can kind of use Dat to just track changes to data and you can also use it to literally store the data. But one of the cool things about it is that you can separate those if you want. And that's something that git doesn't let you do easily. You usually have to put your files into git and there's a thing called git lfs that they wrote recently that—you can put your files on S3 and Github will host it for you. But we want to write a bunch of modules for making databases talk to each other, or we want to have one that's like bittorrent, so anybody that clones data and has the bittorrent plugin installed, they can host the data for everyone else. So the use case for Wikipedia would be—if you go to download it, you should be able to download it from everybody else who has a copy, so you get really fast download speeds, but with Dat you also don't have to download the 950 gigabytes every time. You just get the difference. So we want to encourage people to write data changes streams on top of data sources. Sometimes that has to be really brute forced. With an he Excel file, every time the Excel file gets saved, you just have to read every row in a file and check if it's in Dat. But the cool thing is you only have to do that one time. Because when it's in Dat, Dat can figure out the efficient diff to transport that data. So datasets that update that are super annoying to download new versions of is our use case. You can get data efficiently but also download really fast. Because you're not downloading the entire dataset every time, it should be really fast. And something we're working on for scientists—I don't know if it's interesting in this context, but the reproducability angle. You can put the exact version of the data and other people can get the exact version and know they have the same version you did your experiments on. That's similar to what things like Docker are doing. So one of the use cases we want to do is—you can have your code and your data at the exact versions and somebody can download and run them and know that they're running the exact same thing as you, because in science, at least, it's super difficult to get somebody else's code to run. They'll publish the paper and they're on to the next grant and they don't respond to emails and never put their data online. So that's kind of what our main focus is, is that problem. But I think it's also a problem with Open Source in general and I think it can be a problem in any organization where somebody didn't document something enough. So if the tool can just lock the version down when you publish the thing and somebody else can run it, that's kind of another angle to it. We're going to have docs on writing changes too in the beta release. Examples of data change. It's like a side project to Dat. It's going to be like—if you have Wikipedia and you want to expose it as a change feed, we're going to have an example of how to do that. So you could wrap postgres or PostGIS in a change feed, or Google Drive, and once you have the same kinds of change feeds, you could imagine Dat pulling or pushing directly to or from any of them and doing diffs on any of them and using the appropriate back end for wherever the data lives, and moving things around. That's the philosophy—you're not going to be querying the data in that. It's like your data sherpa that moves it between all the things.


I have a question I'm trying to wrap my head around. Where is the data—like, who else is doing what you're doing? Is there any other way out there? Is it just that it's super expensive because you have to get a proprietary—what's the state of data auditing?


The question was what is the state of data auditing or versioning out there? There's not a ton of tools that are focused on data version control, from what I've seen in the research. There's a lot of tools for hosting data. Like FTP sites is very popular still in science. And there's APIs and put your stuff up on S3, but the problem with a lot of those is that they're not very archive oriented. They're very brittle. If you get a 404 and everything breaks—one of the philosophies we take is what we call content addressable data, where you don't just have a URL that if the file goes away, you can't find the file anymore. The URL in it actually has this long hash which represents what the file is. So then if it disappears from your university's server, you can at least take that identifier and ask other places on the internet—do you have this copy? Because whenever you have a version of a file, the version string is unique. So places like Internet Archive are really interested in this kind of thing, because they want to be able to host every version of every website. But it's also kind of— Internet Archive, if they go down, it would be really cool to ask other people—hey, do you have this version of the file I'm looking for? So it's not a centralized point of failure. So our project is pretty unique, because we're trying to focus specifically on dataset management. There are people that are trying to make git work with larger datasets, and the best one is the git lfs tool that I mentioned, and there's another one called git annex, and that's been around longer, but there are limitations tied to git which have limitations with realtime datasets or integration with different kinds of databases. So that's the closest thing. And the other thing we're interested in is peer-to-peer file sharing, but for legal data. Which is also a very small community. But it does exist. There's a lot of use cases for sharing data amongst peers that don't involve hiring (inaudible). And we hope to be one of them. Because it's really cool. If somebody has Wikipedia on their laptop in this room, why would you have to go to the conference Wi-Fi and download it? So we have a bunch of crazy stuff. We have plans to make—just moving data around smarter. And peer-to-peer is one of those things. But I would check out—if you want to critique Dat, I would try out the git lfs tool and see if that works. But right now the state of Dat is kind of like—we want to be able to not be encumbered by the limitations of git and really try it build something that feels really natural to work with datasets and that also is very Open Source friendly so people can write these change feed adapters or database adapters and file format support. Actually, the last session was about—can we use Github as a database? And it was a really cool talk. And there were a lot of ideas about using Google docs or Google spreadsheets as a database sort of thing or using Github as a database. So that's an area we're really interested in, is being able to move data around between different services and not be locked into just one thing. So hopefully that helps.


Yeah, very much so.


So any... Scathing feedback? Any reviews? Or ideas for us, for me and Seth, to take forward with our project?


Yeah. I have a question. So datasets are plain data, right? Is there a way to add metadata to the dataset?


So the question was: They have the datasets in Dat, but what about metadata for datasets? And we had in the alpha version a metadata file that would literally get written into the Dat folder, and you could kind of put your metadata in there. And we were trying to figure out the best way to do that. So we added this, like, datasets feature, and so you could create as many datasets as you want and have one dataset—the idea behind datasets is you have a repository, which is everything, and it's organized into datasets. So we were working on this one project, which was a bunch of astronomy data. And they have a bunch of pictures of stars and a bunch of measurements they did on the stars. So they wanted to have the ability to just download the pictures or just download the measurements or both, so they wanted to have two different datasets in the same repository. But we were thinking we could have a metadata dataset. Maybe that would be a use case. A dataset for the metadata, or maybe we can make that easier from a User Experience standpoint. But also in there we have a commit message like git has, where you do an import—anything you do that touches the data, you can add a message that gets stored. So that's a human readable message. And so there's also the potential to put metadata. If you have a tool that's generating the change you could put where the change came from in the version of the data. But I'd be interested later in what kind of metadata you have. Because we're interested in supporting that. In the back?


So one of the features of git is that you know who made changes and when and you can, like, call them up and blame them for making mistakes. Is that something that you guys have? It seems like one of the things that might be kind of interesting, especially with scientific data is—if you don't understand why the change was made, maybe having some kind of way of contacting the person that made the change.


So the question was about tying an identity to the change in the database. Or, like, when somebody makes a change, you want to know who did it. And scientists are also very interested in proving that the data came from a reputable source. So that they're making sure they're not getting hacked and getting fake data and that it was actually published by real people. So we don't have that in the beta, but the plan is—you can associate, like, essentially a key with your user. And then everything you do can be signed. Which basically means everything can be kind of—your signature is on the data that you put into the database, and that gets synced, so that people can verify this data that I got actually came from, you know, my key. Like, for instance... This is a cool feature that, like, Github does. Is... You can go to anybody's account, and you just add the .keys to the end of their user name and it shows you public keys. We had a couple demos—they're not in the beta, but we have demos where you can sync to people and they can only receive your synchronization over Dat if you're a user that they're using the key of. So it's kind of like encryption, sort of, but just signing. So we definitely want to figure out, like, the right way to do it. And there's lots of ways to do keys and signing and everything. But I think the very first thing we'll do is you'll just be able to type in your own name. Just like with git. You can put it in an email. But later on we're more interested in trust and auditing. All right, cool. We're right on time for the end. Feel free to continue to use this at home. The URL at the top is unique to you. The ID and URL at the top. And that will persist for at least a few days. So any of the files you have in your session you can continue working on, if you want to just remember that URL and open it up later. And you can also, like, on step five, it has you clone down a copy of your data down to your laptop, if you want to do it at home later. And keep an eye on our projects. We're both working on refining these tools and continuing to support the use cases, and both going to be doing kind of releases, like, formal releases with better docs and everything soon. But I just want to thank you so much for your time and being guinea pigs. I learned a lot about User Experience of our tools in this very brief session. So just... Thanks, everybody.

(applause)
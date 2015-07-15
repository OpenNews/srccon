---
layout: 2015_layout
title: Session Transcripts
subtitle: A live transcription team captured the SRCCON sessions that were most conducive to a written record—about half the sessions, in all.
section: docs
sub-section: interior
background: books
byline: Nate Bolt
bylineurl: https://www.flickr.com/photos/boltron/3212284622/in/photolist-5TRNiC-4VkeqM-4VpqGm-4VkcGz-4Vpr1S-4Vken4-fmXRof-2YtFPR-fmHB44-dFxkXG-7yv4t7-4VnnAn-5A3XSn-4Vnnmv-4VnnqK-9uup4n-4Vnnv6-3ViP2v-4VnngF-4VkgVa-4VkeuZ-4Vkg5R-4VpmbC-4VpnDu-4Vk9rK-4VpqRL-4VpsPb-4VpuU3-4Vkf5D-4Vkdj6-4Vk8uc-b1TXEz-4VkhcX-mF5DPa-fmHXAB-r8mgB3-s5i4Mz-7i3R7t-og8qB5-fmXSCf-7i7Ky9-92YNnD-fmHDut-5C51hV-rMM8b3-k639ok-8FDPAB-apFhiP-rL2vRV-4VptiN
permalink: /docs/transcripts/interviewingmap/index.html
---

# Interviewing the Map: Simple Analysis for Web Maps

### Session Facilitator(s): Gerald Rich, Jue Yang

### Day & Time: Thursday, 4:30-5:30pm

### Room: Ski-U-Mah


The session will start in 20 minutes.


The session will start in five minutes.


The session will start in five minutes.


The session will start in five minutes


The session will start in five minutes.


We will be getting started very shortly. If you just hang on. We're getting set up.


Testing testing.


All right, guys. I think we're going to go ahead and get started. This is the... Let me just pull back. Yeah. This is the interviewing the map session. I'm Jue. I'm the technologist at CUNY Journalism School.


And my name is Gerald. I'm an interactive graphics producer at Vocative. I had the—we kind of talked about this after NICAR this year. Lots of sessions have this idea of interviewing data, doing regressions, things like that. And so we wanted to kind of have a bit of an open session discussion about how can you do analysis, but instead of doing it with spreadsheets, doing this with maps, and what are the cool kinds of things that you can do to go beyond just making a map and making it look pretty. But really telling a good story with it. We wanted to get first a quick poll here. And see, like, where everyone's at with their mapping and everything. How many of you have created a map? Good.


Awesome.


How many of you have done some kind of GIS work too, on that map? Okay, okay, that's a good level and everything. That's good.


Yeah, so... We have prepared some examples, but I think it'll be best if some of you start talking about, like, your work flows, the tools that you use for analysis, type of maps... Who would like to share their experience? If you have any project in mind, we can pull up the URL as well.


And just kind of for reference, for those of you who are, like, not really sure where we're going with this, so here's sort of a few things that we were kind of liking, that people have already done, using GIS. So this is Jessica's law. Which is basically—sex offenders cannot be within a certain... Oh, it's not loading. Within a certain radius of schools or playgrounds. So basically getting a listing of all schools and playgrounds, drawing a big circle around them, and figuring out from these sex offender registries how many people actually fall within them. I think the Wi-Fi is a little slow, so I'm just going to talk you through two of these. The other one I really liked was done by the daily news, recently. Mayor DiBlasio in New Yorks that been trying to reduce traffic deaths, so on certain streets he's reduced the speed limit. So in this case, the Daily News actually took all these streets where there have been reduced speed limits and plotted out where there have been accidents and you can see—even though this was reduced by 20 miles per hour or however many miles per hour, there's still a lot of accidents on this street. And so that was a really, really interesting use case for it.


Is that working?


Let's see. Yeah. That one is a good one. Yay. And this one was very simple. You can see...


The developer for this is here. She built it.


Hey, yeah! I went to college with (inaudible). Yeah. I love this one. I thought this was a really, really cool way to sort of do something that's a map, but also kind of really tell a story with that map. So you can then filter by location, to see that even though there's some streets that are still accident-prone, that they're still... And have been policies enacted to change it, it really hasn't affected the overall safety on that street. So I wanted to kind of...


Are these just magnitude? Or are they zeroed out for total traffic as well?


We have the developer here, so...


Are these just straight up numbers of accidents? Or numbers of accidents—


That's the straight up just number of accidents. Yeah.


Yeah. So have you guys come across any sort of similar—these were just two that we wanted to see, that we wanted to sort of get a sense of. If you've worked with GIS, some of the fun things you've done, some of the hard things you've done, and then we can dive more into it.


Sure. Go to QZ.com/400606. So this was two maps that I didn't—I kind of made, but it was basically taking—this is another thing to consider—it was basically taking people at NASA and people at European Space Agencies' maps and making them better. Annotating them and making them more useful and less technical, to talk about how the earthquake in Nepal affected the land, the land shape in Nepal. So this was... The colored regions that you'll see in these are raster GIS files that were provided to me by scientists that I got in touch with, at the German Space Agency and the Jet Propulsion Lab, and I recolored them, put them on the map, added the cities, and on the first one added the contour lines as well. And this was a bunch of work that was in QGIS, which was Open Source GIS software.


Anyone else want to share?


Mine isn't really that complicated, but I mapped rat sightings in New York City. It's kind of a long URL. It's MeredithMMeyers.com/ratmap.


I love it.


That part is great.


Going down 10,000 sightings, so it might take a little while. It's usually pretty fast. So it gets the 10,000 latest sightings. There's a one-day lag on the database.


Who collects this?


311. You can phone in your latest rat sighting or use the app. If you so desire.


A rat heat map, if you will. There are a lot of rats in New York, if you guys did not realize.


So yeah, you can come around and see the sighting, where it is.


Very cool.


So... I guess can you tell us a little bit about the tools you used to build this? We also want to share the work flow and the pipeline. And the kind of work that goes into making a more analyzed map, if you will.


So this is built using Angular JS. You can use any framework or no framework, actually. It's hitting Socrata's open date API, for the rat sightings. It's hosted on there, so that's pretty nice. And then I use leaflet for the map and a couple of leaflet plugins for the markers and heat map.


What about for the traffic map? What tool did you use?


That's CartoDB. So we started the project in CartoDB. And customized other features that we didn't want to use from CartoDB.


We also have a few other ones that we wanted to sort of talk about. The toxic spills one in Brooklyn that's kind of interesting, which was using toxic data that Jue found.


I came across this site because it got picked up by CityLab and DNAInfo in New York, and I looked around the map and I thought—first of all, it's built on—she scraped the data from the DEC database, and then made the map with D3. And Leaflet. Oh, just D3, actually. No Leaflet. But I was looking at it and I thought... This was interesting. Because she's basically just symbolizing different points with... Or marking different points with different symbols, and sort of scale the symbols, based on the gallons of spill. But as I was going through it, I thought it was a little bit misleading, because then you could have a 32 gallon spill, but since it's overlapping the geographic ground, people might confuse it with distance, or the extent of its effect. So I was wondering if there's a better way of presenting this information without misleading. And one GIS tool that you can use on the front end—so if you're using JavaScript already—is a tool called turf.js. It's another Open Source JS library built by Mapbox, and I was... So I basically used the same dataset, so as... These are just the points. The same dataset that we showed on the other map. And I did a few little aggregations, based on neighborhoods. So rather than seeing... This is a bad one, because it has an error. So, for example, you can see this particular—in Bedford, there's three spills, and the known spill amount is 105 gallons. So I also did—so neighborhood is good when you're talking to neighborhood associations, when you're trying to connect with local agencies. You can give them these concrete numbers. And in the back end, this is just the turf.aggregate, which is a method it has. And then also on census tract, you can get a better sense of how many... Yeah. Just, like, a more granular level of demographic level. And then I also tried out the buffer one. But somehow the algorithm has holes in it, so you see it's not—I'm buffering this by 50 meters, I believe. But it's not buffering all the points. And I checked the Github issue queue of this project, of turf, and he think he's still working on it. Why are these ellipses rather than Euclidean circles? It's pretty complicated. So I'm just throwing out turf.js as a possibility for you to play around when you do GIS analysis. But it's definitely not perfect.


And then... So I also have some data here. It looks like we have a nice big crowd, and a lot of you have laptops. So if you guys want to play with your own GIS analysis, I'm going to introduce a few other tools, just... Because this next one is going to be a little bit bigger. Pardon me, while I switch out this for a second. So... I don't know how many of you guys play video games, but there is a big announcement for the next Fallout game. Which takes place in Boston. Basically it's set in a post-nuclear world, and so it sort of got me thinking about nuclear activity that's been going on and what-not. And so let's see. Where is it? And also it is the election season. So I sort of wanted to pull a couple of interesting datasets related to nuclear activity and sort of ways that you could kind of double check this. This is kind of a funny perennial political ad that I always sort of think of, when everyone says political ads are terrible this year. If you haven't seen this, this is LBJ's ad.


Four, five, six, six, eight, nine... Nine.


Nine, eight, seven, six, five, four, three, two, one, zero.

(blast noise)


These are the stakes.


So as you see, LBJ has unfortunately nuked a small child. So if you actually go into this Github repo, we have done a lot of interesting—gone through a lot of interesting data that you can start playing with. I'm just going to quickly walk you through what I've done with it. So if you go to Github.com/JueYang/interviewing-the-map, you can pull that down. There's a data and a shape file repository that I'm just going to quickly step you through what I it. And I'm going to sort of point out a few interesting datasets and data sources that you can use, if you want to tell your own story. So the operating reactors is actually an interesting case, wherein I was able to locate them. Let's see. When I was looking through this really, really crappy website. That's built by the government. As most of them are crappy. And it has all of this—that has this map over here that you see. And everything is hidden behind some XML data. If you go into the JavaScript for it, you see data file is this variable, and it pulls operating reactors.xml, and here it is. Facility, latitude, longitude, and what-not. I have included a really rough Python script, depending on—if you are uncomfortable with XML or comfortable with XML, you can parse it yourself. And then I also pulled in... Where did it go? Okay. Also pulled in some schools data from enigma.io. Up here. And so that gave me all primary and secondary public schools. And so from there, I was able to do... Is use a few... I think the Google Streets one is a little slow on this. But you see it's a lot of schools. If it loads. Pinwheel of death. Is everyone able to clone that repo? How is the Wi-Fi in here? Eh? Eh? Eh?


It's coming at about 400 kilobytes a second for me.


Not bad. So you see it's a lot of points on the map that I sort of zipped up. And then you can go in, you can also view—a tool, if you have QGIS, if not, you also have these options in turf.js that you can then sort of see... Agh! I'm trying to get a sense of this. This is very weird, to crane my neck.


You can do the mirror.


Oh, okay. Yeah. So you can create all kinds of interesting things here that will help you combine with the spatial join, which is basically—I'll show you that in one quick second. But what I did was created a buffer of five miles around each of these. So you go in, have a fixed radius of five miles, and this is all in QGIS, and there's a plugin, and there's links in the repo too, if you're able to clone it, that sort of points you in the right direction. You can see when we zoom in, everything has a nice little radius around it.


Can you talk about how you knew that was five miles and not five something else?


Yeah, actually. This was sort of why I was—I love—I wanted to point out the symbol tools. In the repo, I started pointing out about PostGIS and a lot of other nerdier things. The point of this is that there's a couple of different tools that you can use, and really it just sort of depends on how many points you have on a map. As you saw the pinwheel with the schools data—this is one that you definitely—it might be painful to load into a browser and do in JavaScript. QGIS is really nice for this. And then if you're really doing this at kind of a national level, I was very tempted to write a quick SQL script for this too. Yes, sorry?


Finish what you were saying.


Yeah, go for it.


I was going to say... So for dealing with some of the things that you were saying that were a problem before, like zooming and not being able to control the size or the zoom of whatever you're plotting, you can do conditional zooms in CartoCSS, which means you can set a rule which is like—if it's the C level, adjust the thickness of your lines and those sorts of things.


But I think if you're doing tiled maps, then you can create those based on CartoCSS. But if you're doing it directly in GIS, you have to write those directly in the JavaScript.


You can write an HTML template in your JavaScript that says when you hit this button or when you get to this level, you can trigger that CSS custom template to trigger. So you can totally do it in JavaScript. And I'm sure you can do it in turf too. But for the PostGIS functions and the cool things you can do in QGIS—because QGIS has awesome dropdowns for that, which is rad. But in CartoDB, we have a little SQL tray where you can write your SQL statements and use all those PostGIS functions. But we also have a button now for buttons and for convex hull, which draws a polygon loop around points, so if you want to create a polygon of several points and you don't want to write the SQL query, you can do it with dropdowns now.


So I think it's really—when I was hearing about the New York Daily News project, it was sort of like—and I've had this same problem too—oftentimes you'll find this head scratcher of—how do I go from map degrees to sensible units? And this sort of—before we sort of let you out in the wild and hopefully you guys can download some of this—if not, let us know and you can figure it out. It looks like there's a good mix of people here. Some of you may already have QGIS, some of you maybe not, and you can download and put turf.js onto your laptop, which is much smaller than trying to worry about QGIS or anything like that, but I encourage everybody to sort of mingle in the next few minutes when we do a little bit of a break here, if everyone at your table is a complete Carto nerd, please spread out a little bit to those who might have a bad connection. But anyway, so I wanted to quickly show—so did the buffer. So you can draw a line around it. And then once you also go into it, you can do a combine, which is a spatial join. And so you say—the output shape file, this nuke zone, contains the 2011 public primary and secondary schools, and then you can join on these fields in it. So much like a data join, if you guys aren't sort of familiar—you take two spreadsheets. You have one similar column in both of them. Let's say that is state names. And you have populations in one table and it's like... Texas, TX, Arkansas, et cetera, et cetera, and maybe an ID for each state. You don't really want to join on a string. That's not great. And then you have another one that has let's say... Income, or let's say voting percentage for the 2012 election. You can then take those two and throw them together, so then you have a big column of state, population, and then what was their voting percentages. So in that kind of sense, you take the buffer, which has gotten all this information about the particular nuclear reactor, you join that to then the school, which has everything from school name—it has all these kind of cryptic things—you see phone, ZIP code, streets, types, is it unionized, all kinds of interesting bits of information here that you might be interested in. Please be advised—the more stuff you select, the slower it will run. So especially if you're on a deadline, you do not want to select everything and then hope for the best. That is a bad, bad idea. There is another kind of—a few other things I just want to kind of briefly go over, since I know we're bucking up against the cutoff point to break up—but you can say how many schools that are near reactors, the average number of schools near a certain place. And this is a sort of general idea. Toxic sites, all these things—you can really do these buffers not only in circles for points, but in the Daily News case, you're taking lines and you're expanding the line out, so it's more of like a full polygon. So you're just sort of saying what is near the intersection. I think with your particular dataset, it was like traffic accidents were sometimes in the median of the street. Sometimes a few yards away. And so this is sort of really trying to capture some of that information that is a little more complicated, or a little—is sometimes bad data. Proportional sum. Which I'm blanking on at the moment. But five points for Gryffindor, whoever remembers proportional sum. Going once, going twice?


That's a point for Google.


Point for Google. We'll get back to that actually when we reconvene. We do that and then we get a lovely set of points that have been joined together, and you can do schools within five miles that have the name of the reactor near it, as well as phone numbers and all the tools that you need to go to work, if you are giving this off to a reporter, or you are reporting it on yourself, to basically then go and contact some more people. So I think that sort of wraps it up. I wanted to give you guys some time. Is everyone sort of able—are there enough people to sort of clone that repository, know Github, able to grab that? Or are we negative on the Wi-Fi connection here?


I was able to grab it.


Grab it? Grab it? Grab it? Okay. All right, then. In that case, I will say break for 15, 20 minutes. And then, you know, I encourage you to sort of play with this dataset. Maybe grab anything else that you might find interesting on enigma.io. They have everything from US prison facilities with latitudes and longitudes, which is really fascinating, you can work with that, you can show what prisoners are near nuclear facilities, and who are really close to them, or anything like that. Is there any questions...


Can I raise a concern about that? With national datasets? I can tell you for a fact that the California schools data is very wrong. Because there is no good map of California school locations. So you have to be really careful about doing that at a national level. And it just depends on how high of a resolution you want. When we did data projects before, we had schools in the wrong county. It's a big problem in California. They don't know where the schools are.


Yeah. The idea is to let you guys go off, explore, discuss it, poke around the data, and at the end, we want to come back and talk about war stories and where this has gone really, really wrong. So this is sort of the fun stage, and then we're going to go to the sadness and we're all going to cry and drink together and have a good time. All right. Break for 15, 20 minutes. Just gauge and see how quickly you guys are doing. If you feel like you want to jump into it sooner, that's absolutely possible. But yeah. I'll get back to you.


I just have one thing to add to turf. Because most of the analysis—all of the analysis you can do with turf can be done in QGIS. It's nothing different. The GIS concept is the same. But there might be occasions that you want to use turf over processing your dataset on the desktop, which would be if you want to emphasize interactivity. Like, you know your dataset really well. Maybe you only have 10, 15 points, for example, that you really want to let a user dig—like, click around, for example. I think if you go to... There is just a very basic example on the turf introduction, and it gives you... It was using a very, very small dataset. But it sort of gives you the sense of... So basically it's showing the relationship between hospitals—the distance between hospitals and the libraries. Oh. Whoops. Okay. Perfect. Yeah. So... If you go to the... It walks you through how it's made. But basically if you... This is using turf nearest, I believe. So if you click around the library, it shows you which hospital it is. So in this way, it's a pretty effective way to show this information. But of course, it's not great for doing batch analysis.


Yeah. It's turfjs.org, if you are interested. All right. Have it. And we'll reconvene shortly. We'll mill about and see how you guys are doing.

(breakout sessions)


How is everybody doing so far? Are you getting close to maybe sharing anything or talking about things?


Or problems. The knowledge pools—because I realize that we just threw a bunch of names on you, and you might not actually... It might not actually make any sense. So I would like to see if there's more things that need to be included. We might add to the repo later. So cool things you've made too.


Anyone feel brave enough that they want to sort of talk about what they've done in this very brief amount of time? Or have any kind of interesting ideas about, like, what they could do to go beyond just, like, a simple mapping of points or anything like that?


You have a question?


I have a question. So what are the use cases for tile maps over SVG maps? I feel like SVG maps are better displayed on the phone. If you have a tile map, it's hard to do navigation with your fingers and it's a longer loading time. So I don't know if it's true or just my assumptions.


Tile maps might be faster than... Tile maps might be faster than SVG maps, just because SVG maps are rendered in the browser and tile maps are rendered by the server. But there are different—like the way sometimes I would prefer SVG maps because they have better interactivities. But if I can batch process everything and make them into tile maps, I might do that.


But it just depends on how complex your tiles are. If they're just doing state boundaries, that can be really small.


SVG maps for boundaries is also fast too.


Yeah. It just depends on the size and how much interaction do you want. Do you want somebody to zoom into a street level? And see their very particular street and everything? And then you would have vectors for, like, every road in the United States? Or are you doing this like—you could go to Canvas, and that might be a little bit different. And you'll still have a lot of the—same moveto, lineto, arcs, and paths that you would have with SVG, but just on a canvas. And then if anyone wants to talk about WebGL, go with God. You should talk about that.


There's an Open Source JavaScript library called VecNik that does vector maps instead of raster maps, and it's based on HTML5, and that means you can do interactivity and edit the geometries, and it's very fast and you can have click events and highlighting and that kind of stuff. So it's pretty cool. And super fast. If you want to not do raster and want to do vector maps.


What's that called again?


VecNik. It's like MapNik. But it's vectors.


Would you like to talk about stuff you could do or cautionary war stories right now? Quick straw poll. Show stuff? Anyone, anyone? War stories? Okay. Michael, you want to kick this off? You were saying about California and the school system?


This is a problem we run into all the time. Is that like—there are datasets that have latitude and longitude for schools but they are basically all very wrong. We did a project a couple of years ago on how many schools are near earthquake hazards. So we have to be relatively precise. Especially if you want to say they're inside this—what's called an AP fault zone. Like they're within a quarter mile of a fault. You don't have a lot of margin for error. We just found—we just did a quick comparison—is this school in this county? We found tons of cases where they weren't even in the right county. And we found out that schools move all the time. One year the school will be here, the next year the school will have moved to another building or they've shut this building down, there's temporary buildings now, and especially in California we know it's really bad. I think in other states it's better.


I included that Google street layer in the QGIS file. There's open layers—to MMQGIS—there's links in the readmes. But that one is really good. You can pull in a satellite layer, so sometimes I'll just spot check it. Is this school in the middle of a lake? I don't think it's an Atlantean school, so there's something wrong with this data, probably. Any other... Yeah.


A while ago, Colin and I were trying to map food deserts in LA, so we were trying to find all the grocery stores in LA. So we went to the county assessors data and tried to find the filings for all the grocery stores and threw them into QGIS. And it looked like a lot of grocery stores, so then to spot check it, we put the Google street layer on it, and I realized that the grocery store I go to every week wasn't there and Colin's grocery store that he goes to every week was not there and we kept trying to find various grocery stores that we knew and we found, like, half of them. Half of them were just clearly—the assessor's data—it wasn't on there. So we're still looking.


Yeah, that's my favorite thing to do. Stuff that I know is there. That should be there. That's the first thing that I go and look for.


So I get this map—series of maps about all the Starbucks around the world, and I did do this spot checking, which was really—that's a fun use of Google street view. There's supposed to be a Starbucks here, and oh my God, there's a Starbucks in Google street view. And it's somewhere in Japan. Whoa. But speaking of Japan, the problem that—the thing that I ran into—was I did this analysis on the cities that have the most Starbucks in them. So I knew—okay, in this database that I had, it was Starbucks by address. Okay. I know New York City is going to have addresses that are Brooklyn and Queens and Staten Island and Manhattan. If I do a New York City analysis, I can combine all those things. And I knew that was the case for a couple of other cities. But I didn't know that was the case for Tokyo. Because Tokyo addresses... Tokyo listed address in Tokyo is very small. It's a very small part of Tokyo, but there's all these other places that are part of what everyone knows is Tokyo, so I missed that, and it screwed up—I made a chart that was like—these are the top Starbucks cities around the world and Tokyo was supposed to be in the top five, and it wasn't in the list. So... Things like... Make sure you check your assumptions about what you're using to qualify these things. The way around that, which is—I had another thing, which was—these are all the Starbucks—this is just a map of, like, 50 miles around city centers. Tokyo was full of Starbucks in that.


It's kind of interesting that Google street views kind of got me thinking about the interactive developer at Firstlook, who's got this really neat script to fire off and basically capture images from Google Street View, and it would be really cool. Pie in the sky thinking right now, but just checking your data by running a scraper and seeing all these street views and looking at them on a page or something like that. Rob? How are we doing on time? I think we have...


A few minutes.


A few minutes. Anyone... Questions? Things we didn't cover? Comments? Concerns?


When you're working with turf, what's the best way to, like, visualize your data? Step by step, working with turf?


I would say... So I would actually put the data in QGIS first. Or onto CartoDB. That's actually how I did my... How I processed my census tract data, for example. So I would always use some other tools before I pull things into turf.js. Because I know that's the—


That's the last step?


For interactivity. And if the dataset is really big, I wouldn't use turf on it.


I think that gets us... Are we close to time?


Yeah, I think we're...


You have drink tickets and everything. I don't want to stand between journalists and a bar. I understand. But thank you guys for turning up and everything. It's awesome.

(applause)
---
---

# Session Transcript:<br>Let's build the data journalism textbook we need, and break academic publishing while we're at it

### Session facilitator(s): Matt Waite, Sarah Cohen

### Day & Time: Thursday, 4:30-5:45pm

### Room: Ski-U-Mah
 
Sarah: I guess we will get started too. So, thanks for coming. Some familiar faces, some not. My name is Sarah Cohen from Arizona state university. 

Matt: I am Matt Waite from the Harvard of the plains. 

Sarah: I guess we have the Harvard of the desert. We started talking last spring -- I just started teaching this past year. I ended the semester thinking I am putting way too much work into this. This is way too hard. Other people have done this. Even borrowing from them became difficult. I talked with Derrick and Matt and we all disagreed on what ought to be in a class but I think we all agreed all I want is the ability to go to chapter 3. We don't know what chapter 3 is but we know there ought to be a third chapter in there somewhere. 

Matt: One and two even. 

Sarah: Then Aaron joined us and we started talking about how do we build a set of materials that any journalism professor, instructor, adjunct can take and build their own course out of it. We can get into all kinds of philosophical arguments about whether we should teach Excel or not but that is not useful when some have to teach it and others don't or some choose they want to teach it. We wanted a technology agnostic but conceptually consistent set of materials where there are certain values. Journalism above all, replicability secondly and activity making sure that everything is related back to journalism in some way and it is not a programming class to make that clear. 

How do we put that kind of thing together and start thinking about -- and let people make their own textbook and their own course out of it. 

Matt: So we started that discussion and we started to even sketch it out a little bit.

We realized pretty quickly that we had some commonality and differences. This issue of agnosticism was tricky but surmountable. We have created a beginning and it is on GitHub. 

If you are in the Etherpad I think I put the link in there too. 

We have taken general ideas and started down a road. 

The idea was to create modules. 

The more modules we can create I think the better off we are going to be. The modules would be things like grouped by. Group by is something you will do in data analysis and probably every data analysis you do. It is so common and data analysis 101. We need to start there. We need to have those things for people. 

What I have done over the last week and a half or so is created a couple of modules. One is group by replications but it isn't done so don't know there. 

Sarah: It is just a rant. 

Matt: The introduction. 

What, Matt rant? 

Matt: But it is ranting with reporting. 

Sarah: Yes, it does have some good reporting. It is reporting with a point of view. 

Matt: This is the group-by stuff. We have created a series of documents and done it in specifically technologies. If you are a faculty member that is going to teach or an adJUN -- 

adjunct or whatever teaching Excel or even SQL. We have done it in pandas, not willingly, and agate which is far easier to use. Not to be religious or anything but... 

I wanted a rant, Matt. 

Sarah: I made him do the ExExcel one. 

Matt: I was explaining this earlier to somebody. We can have our own religion and we can show what excell does and then not use it and I can believe I am right and Sarah can say we can teach Excel and be wrong but it doesn't mean I don't need to include it. 

Sarah: My guess is he will we including many things that are wrong. 

Matt: That is why this is on GitHub and why you are here. 

What we are starting to puzzle through now is what is a module and what should those modules be? Group by is pretty obvious. 

It is in pretty much every data analysis library. The sort of basic pattern and template we have created is we want each module to have a lead. Brent Jones was gracious and reached out over Slack when I said anybody tell me a story you used group by and he responded and I said I will make him the lead of this. St. Louis Public Radio did a story about how crime in St. 

Louis ticks up as temperatures tick up. There is a leap up in the number of crimes reported and violent crimes reported the hotter it gets. It is a common antidote you hear all over the place. They grab the data, did some group by on date, and poof, done! 

Their analysis is online. They did it in Agate then there is a story on there and the links are there. We create a lead that is about a story that uses this technique and results in something you can go read and students can go look at to get an idea. 

Then we have a net graph which is what it is. It is explaining why we are doing this. Why is group by important?

Well, for this group that is not tough. It is pretty self-evident. Let's go ahead and explain it to maybe someone who has never heard of group by and where it it comes from and why it is important and how it is foundational. 

Then we begin the walkthrough. This one particular uses R and Dipler. We go through it step-by-step, word-by-word, line-by-line, and command-by-command and explain it in a narrative fashion. 

If you are intending to join us on this project you should get used to me using really weird obscure datasets from the great state of Nebraska. For group by, I used a dataset of confirmed mountain lion settings in Nebraska. Not an unheard of thing to have happen but it is more possible in some places than others. 

It is a fairly simple dataset. 

Group by county, count them up, this is what you get. We point out that it is not an order. We sort it. Now you get Dawes, Sioux, Sheridan, cherry and Lincoln county. You know where those are. I don't know need to explain why it is important. 

Almost literally nowhere. They are in the northwest part of the state where nobody lives. It is just pine trees and mountain Lions. That is all it is. 

But that is just it. 

The next step after the walkthrough is resources for instructors, things that we can link to, potential assignments we could give. 

Sarah: Offline activities, analog activities like making people go stand in groups. 

Thinks -- things like that that you can do in class that will bring this alive. And a set of readings and other stories you might want. And inspirational datasets that might be easy for you to get or are freely available if you don't like Matt's mountain lions. 

Matt: One potential is get your salary data for your city. 

Show students -- I have this data for the University of Nebraska. I can show students quickly the difference between mean and median when you include the football coach and do not include the football coach. He makes a wee bit more money than the rest of us. 

Put together. 

Matt: But that is the idea; how can we create these resources for other faculty and suggested reading and stories that use these things. A lot of students I find have a hard time conceptualizing stories from data because they don't read data. 

Sarah: We want to put real stories in here. Stories that are not huge, multi-day series but reasonably in depth, 1500-2000 word story. Something more than we got data and sorted it but not something that takes the attention away from what we are trying to do. Those stories are not easy to find because the data element of them are not obvious. But, you know, between all of the people who are doing this and have looked into these kinds of things we should be able to find plenty. 

Matt: Yes. 

The two things we want to do here today is first, we want to divide you up into your groups you have settled in and have you come up with ideas for modules. 

Like what are the building blocks of data journalism however you define that that you think a student needs to know in order to get to that place that they want to get it. 

Sarah: It should be what would you want to teach if you were doing it? We are trying not to have religion on what ought to be included. We have trying to have a fairly comprehensive set of tools that we can put together. Just one other thing is we are not ignoring all of the incredible resources out there. We would like to include them with permission. We have a whole list of them we have been tracking and we will be certainly contacting the folks who have that to see if we can include or edit their work to fit in with this structure a little bit. 

Matt: For example Quartz's guide to bad data. This is phenomenal and voluminous. It goes on forever. 

So does bad data. 

Matt: The eternal enemy. 

Sarah: Or other people that published their syllabus. There are a lot of good syllabus out there. There are commercial tutorials that are very good. 

The other thing we would like to also talk with people is about inviting you to join the project when we are done. 

Matt: We have one other thing. After we figure out modules and go around and talk about that the next thing we want to talk about is if you are going to teach that module how would you do it without computers? One thing that I have found really helpful is to try to take these sort of concepts and make them real and tangible.

Several years ago now I had heard of someone else doing this and I ruthlessly stole the idea of using Legos to teach data visualization. Build charts using Legos and make turning data into physical evidence tangible and real. I clear shelf space off in my office for professor of the year every time I bring a giant box of Legos into class and I am like here is what we are playing with today. 

But those kinds of things I found to be really, really helpful. 

A colleague who is joining me in the fall, Olga Pierce, she uses "Avengers" movies and tokens with them on there to keep the data concepts. Grouping them together by which movies they appear in and connecting different avengers in different ways and grouping them in different types which I found absolutely brilliant. 

Sarah: And another activity that I started including is this idea of breaking up people in pairs. I forget what it is call.

You give them a prompt and each person has to come up with three questions or thoughts. They each have to listen to each other without interrupting and then decide on the one best thing they came up with. I have been suggested to do this because it is a way to take away some of the privilege in the class, it is a way of forcing people to listen, forcing people to speak, forcing everybody to be equal. 

I started using it and it is really interesting the people who all of a sudden become brilliant when you start doing that who you didn't even know were in the class before then. 

We would love to hear things like what kind of prompt would you want for something like that. 

Matt: To start with. Let's start with modules. For the next about 15 minutes we want you to discuss among yourselves the modules. You would use the sticky's on the stable and we will stick them up here on the board to help us out later on. 

Sarah: And think of a module as one conceptual item. We are not convinced that group-by isn't too small but we are pretty sure sorting is too small; right? It is like filtering and sorting may be together. At first we started thinking about what would a week look like and then we realized some people would be able do that in two hours and some people might take two weeks on the same concept. Try to think of it as an isolated concept or even an isolated task if necessary that you think would be crucial to include at some point during some part of this, you know, three or four month class. 

Matt: Okay? 

Is there like -- in terms of scope and what fits into the definition of data-journalism --

Sarah: Whatever you think it is. 

Everything from programming and that track all the way over to car skills? Subject 

Sarah: Yes. And Aaron has talked about wanting to get more into the business side of stuff too. We are trying to do this without the religion of what the words data-journalism means. The minute you start getting religion about that you are not going to meet the goal because somebody is going to look at this and say that is not what I am teaching as data-journalism so this isn't useful to me. We are trying not to have religion on that stuff. Instead we are having religion on the fundamental values of journalism and the fundamental values of data analysis. 

Matt: Data visualization but plots versus whatever else. Yes.

So modules. Go!  

[15-minute group work]

Matt: We have reached the end of our 15 minutes and to rob you of maximum creativity before we get out of here and go eat dinner we want to move on. 

First, I want to talk to everybody about what you came up with. Sarah and I both went around and the conversations that were going on were great and the more we do this the more excited we get. This could get really terrible when we get home. 

Sarah: We could have an awful lot to do. 

Matt: We might have created a monster here. Some of the modules you came up wit... 

anybody want to volunteer? Or just pick on a table? I will pick on that table mostly because Derrick is wearing a West Indy cricket jersey. You have to have reasons. 

We have a lot of suggestions.

Matt: Fantastic. 

Okay. So they can kind of be grouped in like -- so, you group them in a couple basic -- one of them is essentially creating structured data from unstructured data. 

Matt: Interesting. 

Examples. Here is a web page of text, what do you think is important, put that in column. 

There is like importing, like sort of the technical task of importing and exporting various formatting. 

More on the journalist side or essentially you talk about group by, I think I went ambitious and said it fits under data which includes filtering, sorting and aggregates which I think is a mouthful. 

Sarah: That is a question. 

How small -- 

How big or small do you make them. 

Matt: After doing group by I am convinced group by and aggregates go together and sorting and filtering can be part two of that. 

In your example, you sorted -- 

Matt: I did because it was ridiculous not to. 

Sarah: It is not that everything has to be in only one place. 

And then like basic text analysis like frequency indices and stuff like that. Counting words and things. Pattern matching might fall into that or I think it is probably its own module. You have a lot of different ways you can express that. Tons and tons of different tools that run from the easy to the extremely complicated. 

Matt: I am going to stand before you my right hand of God and say I will not be the one that writes the reject. 

Sarah: I have done that. I will do it. 

Matt: You have have a problem that needs a rej-X you know you have two problems. 

I will use the pattern matching using word because word has pattern matching. 

Matt: And it is actually not bad. 

It is only useful thing about Word. 

Matt: In the back. 

Talking about motivation, possibilities, expectations early in the event. Like really early on. Class number one. 

Matt: Syllabus day. 

Rather than trying to jump into any concepts. 

Matt: Absolutely. 

Also easy data stories so things you should be able to do about halfway through the semester as compared with beautiful, intricate ornate things you will be able to do in a few years. We got theoretical so asking good questions, a lot of ideas about how to lie with data and assess data for truthfulness. 

Sarah: Do you mean sourcing or do you mean actual dirty data? Or both? 

Yes. 

Or methodology. 

I mean failing to recognize that data was created by people and too much credence. 

Sarah: So both. 

Like the easiest way to stop saying the homicide rate is growing is stop calling it homicides and call it something else. 

Like Philadelphia did. 

And New York did. 

Canada did with sexual assaults. 

Matt: I wish police chiefs would realize that is not going to end well. This group here. 

We also got sort of theoretical. We had a similar point to theirs about questions mostly around framing them precisely. 

Sarah: And you mean like research questions or questions about how to go on staff overflow or both? 

Questions like if I am asking, the example I gave earlier, what is the typical temperature in Minneapolis what does that mean? What do we mean my typical? What timeframe are we looking at? What do we mean by Minneapolis? The academic thing is operational. How do we do that? 

Another thing is different forms of theory and how you pick the right chart and map and what does that mean. 

Matt: When is a map a map and when is it not? 

You said that. The other big one I don't think we have heard is joins. Sorry to steal your thunder but joins. 

Matt: Front group, talk to me about joints. 

We just added it just before he came to you guys. We have a few and a couple I added. I kind of took the liberty of sorting them out into two groups which are the theoretical stuff and the really practical, you know, scraping, visualization 101, joining datasets, machine learning, cleaning data -- 

Sarah: Machine learning by itself? 

Matt: One-day module. 

Sarah: That has to be Jonathan. 

Matt: Would you like to come teach this? 

A couple that haven't been mentioned. Documentation and future-proofing for yourself in a year of how do you know what you named that thing still means what you think it means. 

Matt: I call this the you get an F if you name a single-letter variable. I don't screw around with that. Your variable is A you are out. 

AA you are okay. 

Sarah: If it is a 1 then no problem. 

Matt: Yeah, cool. 

I added at the last minute ethics and when not to publish some of your analysis or asking questions of what is ethically okay. We also talked about exploratory data and origins like questions did a person enter this into a database, how did it get there, and that kind of thing. And I added without consulting the group, sorry, how to explain your analysis to the audience and whether that is visualizations or in a story, making that approachable for people who are not data journalists. 

Matt: I have a really rant-y lecture about writing with numbers. 

Let's hear. 

Matt: I am not going to get into that here. 

Sarah: I have a rant in my book about it. 

Matt: Yes, you do. I am singing from the same sheet of music you are. 

Sarah: What is interesting about everything we are hearing is it is less specific skills than it is conceptual. You get this group together and we are more concerned about whether they understand what they are doing than that they know how to do any particular manipulation. 

We did have scraping. 

Sarah: That is even almost a little conceptual. 

Unless you have to do it. 

We played around with should we include how the internet works. 

Yes. 

Sarah: Definitely how the D OM works because you can't do much without it. 

Matt: I have thought about an entire 100 level freshman general ed class that is just how the internet work. 

We have a one credit required class that is basically how the internet works. 

Matt: So that was fantastic. 

Next thing we want to do, if I can find my cursor, is now we want to talk about how do we teach these things. I know a lot of you in here have taught, I am going to assume all of you have been a student, so you will have some idea of how this might work in your head. Specifically what we want to talk about is how do we teach these sort of technical concepts to non-seck -- 

non-technical people? If you get a student who is just not a computer person -- I have students that come say I am not good ad computers and I am like you are not good at life. Like stop saying that out loud to people. 

Sarah: In my class it is required so I get a lot. 

Matt: I have the ones who voluntarily come along. How can we teach these to non-technical people? If you had to teach this without a computer how would you do it? While you are doing that for the next 15 minutes, I will grab these and stick them up here to absolve you of that. 

Sarah: Maybe choose one thing from the list and say what would I do analog offline to talk about it. 

Matt: The more embarrassing you will make it to students the more it sticks. Making them dance or wear funny hats. 

[Group exercise]

Matt: We're starting to have time issues. Let's talk about what you came up with in terms of making this real. The discussion about how the internet works, we have a series of courses we call our visual communications classes. They are basically how to take a picture, how to shoot a video, they are skills-based and the first classes you take in college. The first couple of classes are met as a group and in the first one they act like I am request. They are like I am the server. I respond to the request. They are turning nine shades of red doing this and everybody is laughing. 

I am like perfect! They will never forget what a request was.

Picked on that table and I will pick up on the front. What did you tackle? How did you tackle it? 

We came up with a data cleaning exercise on paper. 

Start with two pages, both of which are lists of names, one say from a voter registration database, another is campaign financefinance, you give them to students and match them up and you do this thing. Then you get everybody into the room to take a piece of paper, another blank piece of paper, and write down the address of their favorite establishment in town, bookstore, restaurant, pub, whatever, and then take all those pieces of paper and hold them up and read them to the class and look at how many address formats were written down. Look how many did road versus RD and different ZIP code formats and capitalization or not and whatever. Then using those rules that, you know, seeing there are different formats, going back to the two sheets of paper and saying cross out all the matches where the addresses or names are in different formats and I bet more than half of them disappear. 

Wow. 

Sarah: That could be a lot of fun. 

Matt: I like that. Address matching. 

Welcome to feel that pain. 

Then we started taking about date formats and that is a whole other thing. 

Sarah: That is a great idea. 

Matt: Next table up. What you got? 

Go for it. 

I am trying to think of which one to say. Somebody else.... 

We were talking about the data visualization things and pitfalls and thought of small exercises you might be able to do. One might be you give everyone a simple set of data and have them come up with four different -- chart it in four different ways. Use four different chart types to talk about the positives and negatives. 

Sarah: Just draw. 

Talk about the positives and negatives of each one. Another suggestion was find examples of charts that were done, maybe not so well, in other publications or books or things and have them correct them, have students correct them and maybe redo them in a better way and talk about why they made the choices that they made. 

And then I don't know what was another one? Oh, a map.

Maybe give, say, decide we are going to make a map of some data here and hand everybody a printout of the United States or of your state with the counties and a dataset. Have people create a color scale, like all on paper, and fill in the counties or the States or, you know, whatever, something that would not take a ridiculous amount of time to do with something like noise or pollution or crime or something like that. Then simply walk around the room and hand every table or every person a population map of the same thing and just say here you go. It is an example of how everything shouldn't be a map because it is a population map. 

Sarah: If your class is pretty geared toward visualization you could peer that are "Dear, Data" the book that has the idea of drawing and sketching. 

Matt: If you don't know about viz.wtf. How not to do it is fantastic. It is -- 

Sarah: Whoever is doing that, don't forget to put that in the resource section. 

Matt: Viz.wtf. Nothing makes sense at all. It is just fantastic. It never gets old. 

Okay. In the back. 

Okay. I think we have to go with our guess who example? I think it is modification on your method. Go ahead. 

We never got to how we get to -- basically we had two -- 

using human fore loops. Let's tally up people who wear glasses and people who wear collared shirts and using that. 

Sarah: And they would actually walk? 

Yeah, they all stand up and sit down. You have people stand and sit. Sometimes you can really screw around and for each student -- if they are wearing a collared shirt they need to turn around and if they are male they need to sit and sort of build loops and so how the order of operation changes where people are left, but it also sort of demystifies the idea. I think we came up with ideas about how you could do that with guess who. 

Just because it would help standardize how this exercise could be executed, right? Then you couldn't have to try to scan the room and see do I have people wearing glasses, do I have people wearing hats, but instead you could give them identities who look at. 

And Guess Who is a game for people that don't know. 

People know that game? 

We played it without a board.

But the board is weird. 

They have different things on the website like marshes or soccer players and you can download that. 

It is a bunch of identities you can ask questions about like does your person have a hat and you knock down the people and figure out the person. 

Matt: I taught loops and conditional logic in a FRAM  -- 

freshman level class. I had one person as the iterater andand they had the leave the class. I asked who was an Ohio state fan and one person raised their hand. I brought the person back in and said find out who the Ohio state fan is and I said how would you do it? And he said are you an Ohio State fan? And I told him to go around and ask everybody individually and I said when you come to that person we will all boo. Yes. Boo. There you go. I love that idea of making people guess and teaching loops that way. I think that is great. 

I don't know if you know about this but this site called CSunplug.com which is doing exactly what you have talking about. There is a bonus. 

The other couple things, getting back to talking about creating structured data without a computer. There were a couple other things like students describing a common object like a car, with its make and model, which works reasonably well to explain orient objects in programming where the car has attributes like color and different methods like drive and such. Is this your exercise? 

I don't do it with printing it out. 

Course descriptions or something narrative and have them circle and highlight structural information and put that in a structured form. 

Sarah: Like balding? You can't count on people knowing parts of speech. That is the only problem. 

Sarah: I am not sure I would know what an adverb was anyway.

anyway. -- adverb. 

You could do like nouns and things. 

Matt: I think there is real value in doing these sort of simplified, conceptual ideas as the non-technical challenge to reach a lot of students. 

Sarah: Always means people are not sitting around all the time which is deadly. 

And they have to close the computer and stop checking Facebook. 

Matt: Exactly. One of the better days when we booed the Ohio State kid is I have them play shoots and ladders which is like three and up. I have a copy of it because my kids played it and I brought four more and bring them to class and have everybody play the game and then I have them create a simulation in Python using if-else object. 

If you land on this square go to this square. If not stay here. 

Teaches state and flow control and a few other things. Then I show how you can simulate millions of games of shoots and ladders to find out if you want to go first or third or whatever. It doesn't matter. 

Yeah, you can sort of scale up from there. I am a big fan of using like crayons to do this and childhood games and things like that. That is a lot of fun.

The last couple questions we have before we get out of here is -- the two thing things we want to talk about is sort of wrapping up but we will wrap up by talking how should we deliver this? Let's pretend that Sarah and I go absolutely bisserk and get this done. 

Sarah: Because we have to. 

Matt: August is coming. Sort of the inverse "Game of Thrones" fall is coming. Let's say we get a bunch of this done. What is the best way to deliver this? 

How do we make this available to the most people? We're doing it on GitHub because we are semi-comfortable doing that and using a platform that allows for others to join in and collaborate but that is going to come at a cost. There is going to be some people who probably won't collaborate because they are not comfortable with GitHub.

Other thoughts on that? 

pie in the sky version is it is a web page that generates it based on modules you select. 

Sarah: That is what Aaron said. It generates a read the doc kind of thing. 

Matt: I have $8 American dollars I will give to Who want to try to build that website. Go ahead. 

I think Sarah mentioned this toward the end of the last set but some way of rendering that out to a printable format that doesn't look like a GitHub markdown render. 

Sarah: No, because that is in intimidatng to a lot of people.

A lot of people would like to print their stuff out. I see a lot of students printing out a lot of stuff that is easier for them to read it offline. 

Matt: Go ahead. 

In my intro stat class I used the open book which has freely available PDF and a kindle and they have a paper print version.

It is $9 and almost all the students buy it and write all over it and they would love having the physical thing. 

Sarah: How does that work? Do they make just one version of it? 

They just have one version but I think through lean hub you might be able to generate the one you want and get it printed.

That will be cool. I don't want your $8 but I will talk to you about it. 

I think have some markdown rendered scripts I used for some things. 

Matt: I thought about wanting to script this. I cannot believe I am the first person that wanted to turn markdown into something else. 

Bookdown. 

Sarah: What is Bookdown? 

Just what it says it makes books. 

Sarah: Does it already exist?

Yes, it does. 

Does Jupiter have a book? 

Matt: Yes, you can render them out as PDF. 

Jupiter renders in GitHub also. 

Matt: We talked about using Jupiter notebook for this and for no good real reason I went ahead and went with Markdown even though I was copy and pasting stuff out of the Jupiter notebooks to make this. 

Sarah: I think with Jupiter notebooks you are limiting what you are using. It is hard to do Excel. You are taking it into a technology that people are not comfortable with at this point. 

I just mean for formatting. 

Matt: I love Jupiter Notebooks but their support is horrid. Beyond the stuff they have to install, if you want to install something that is not in their core, it will break everything. It is a crap shoot of whether or not it will work. 

I went through that nightmare this last semester so the scars are fresh. 

The other side of that is there is this technical side of how do we put it together and we really like this idea of yes, click, click, click, poof here is your syllabus, here is your stuff, go forth and do good works. 

Sarah: And do chapter 3. 

Matt: Your chapter 3 is your chapter 3 and it will automatically number them however you want to do it. How do we spread the word about this? How do we get this in the hands of faculty? How do we get this to students? How do we broadbroaden this beyond a university setting? Ari Icar has done great work with these things but I think there is a large number of people that can't go to the conferences and want to get there and learn this stuff. I am happy to take their money and give them a graduate certificate in this but it doesn't make me extra money. I don't want to do that if they can pull this up and use it. 

What about high schools and high school journalism teachers?

Matt: If we do that then I have nothing to do at the university so I would like to keep getting the sort of I know what journalism is but I can't write kid because then I have stuff to do so my mortgage lender says no. But, no, that is -- I think -- 

That is what this looks like.

This doesn't look college level.

Matt: You been to college lately? No, actually, I think there is a sort of a limited place that we can go with that of sort of pneumeracy. I asked students if they have used a spreadsheet and it is a business class. They never thought of it as a tool for journalism so there is stuff we can do there. 

I think one option is just like start talking to folks who do, like, it is related to JSON and folks that teach programming classes and six week courses or whatever because they have at least worked with this idea of how you can do ad hoc classes outside of the college environment. I forget all the names of them. We talked to them and talk to maybe whoever does, like, you know, I am sure Nebraska has a satellite or continuing ed thing and how they set them up. 

Matt: Indeed one of the things I am doing this summer is building an online 8-week graduate course in data-journalism. So if you want to take a data-journalism course with me online something like spring 2019 it should be available. 

I think it is probably good to do both classes in the same trek. Sort of the folks who do, you know, whatever, Flat Iron or these training things to see how they structure a course, to see what makes criteria for yes, we would do this or wouldn't do this. 

Sarah: And also probably the knight center of Texas. 

O'Rielly spends a lot of time thinking about publishing and what publishing can look like. 

As a resource for thinking about what if we did publish this and do they have any creative ideas or tools about publishing something that includes some mechanisms for that kind of, like, customization. 

And then you get to pick an animal. 

You can be a mountain lion. 

Matt: Definitely a mountain lion. We are out of time but if you are interested in joining me on this foolish crusade. We would love to have you. We would love to involve you. We would love to sponge off their labors.

Please talk to us and let us know and we will figure this out as we go along. 

Sarah: If you have passion for one of those topics, it is yours. There is plenty of room. 

Matt: It is all yours. We have a template going on. 

Sarah: We forgot to mention that somebody had great idea to add to the template at the bottom of every section and how it would all go horribly wrong.

Matt: I have examples from my own career for you. Folks, thank you very much for coming out here and for all the help. This has been wonderful. 

Sarah: Thank you so much. 
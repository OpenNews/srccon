Tools to securely search millions of documents remotely and across borders
Session facilitator(s): Miguel Fiandor
Day & Time: Thursday, 4-5pm
Room: Classroom 310 

MIGUEL: Okay. Let's start. I'll leave this open. Somehow if someone wants to come in. Sorry. I wasn't watching the time. Okay. So I'm Miguel Fiandor and I'm a data apps developer at ICIJ. And I'm going to show you what are the tools we have been using, some of them, how has the communication been for the Panama Papers, how is the thing working, and how is the link a little bit, and I prepared two posts that it would be nice if you could answer, so we see the opinion about us. We discuss about it. And if we have time at the end, I'll show you some data, and stuff we use, and I also prepared a fake leak of data so we can simulate what you would do if you receive some kind of leak, similar, and what kind of things we can start doing with it.

So yeah, this is a small thing we're going to do, the link, the index we are searching, which is one of the biggest parts of the activity in this project. Graphic relationships, and the security and the communication. This is our team. Small, young, diverse, especially remote. Like, we were almost one of each in different countries. And we both are staying in Madrid and this is one of our guys that's always traveling around, that's complex times, with communications but it's fine. And that's it. I think there are some two missing people but they will join us a little later. But we have now, system admin, which is good to have, and put on him, all the tasks of system administration. Very nice. He's also in Madrid. We have another guy working on other projects because ICIJ is not only Panama Papers. So we're hoping to do other projects, a few other projects.

Okay. And the Consortium, this is continually growing. I think we have something close to 400 in numbers, because the whole project took a year. They continue publishing stuff. They continue getting funding and people working with us. And this way, we've been all connected in more than 65 countries. These are the countries where the previous staff members I showed you are living, USA, Costa Rica, France. So daily meetings is a little tough. And trust, this is what I want to say, this is where I'm willing to say, if something I make that happens in the project in one word is trust. How—if there were no trust at some point between 190 journalists, it would have never happened during a year to be silent. Not tell anything. Security and whatever, you know, you would need to trust to everyone, to everyone in the team, I mean, in the consortium. Our leak, some of the leak. We found some interesting people, we found politicians, 140, approximately. And prime ministers, I don't know if you heard about Iceland's prime minister, and there's also the President of Ukraine and so on. Inside the leak there was information on over 200,000 countries and companies created. Divided between 200 countries, more or less. And that's it. And about the size, this is more of a percentage of a thing we go—compared to previous leaks before, projects that we handle in, this has been, by far, the biggest.

It has—it does have—makes every process depend on it, no? We've had to decide on this. This has been—this is the type of data we got on it. And, of course, when they're bigger than this, the more leaks you can find in the data, you know? And and another special future of this is kind of full. We tell pretty much, in HTMS. There was pretty much all this type, all types of websites happening and it made it a real pain to get the data from it.

And you guys paid everything as they were from inside that. The thing is that they say that it's time. We're going to get bigger leaks. So we should expect anything in the, like—the projects, the projects will last longer, and there will be more finance, more funding, probably because more people will need to work on it. So one of the main future areas that we have been working on is indexing and on searching. So what we consider probably the most important thing that you can do in a leak, it would be searching, no? Searching and finding. That's the most important thing. Like, we could have get rid of some type of documents we got, focus on the database thing. Try to construct the database and work on that. And we'll have missed so much information—so much that I heard journalists saying that, probably, the most valuable, you know, the journalists—the most valuable documents probably were the emails, and some of the videos.

So without linking the structure of the database, HTMS thing, and you look at the email thing, they were talking to which, it was the search system. And what was the worst problem. Because I found out, I know that—before, I didn't have experience in the newsroom. So what was the biggest problem I found on working on a project like this? The biggest thing is the time. And you will have this, and this is like a investigation point when we even had a year to work on it.

What happens if you get a bigger leak in two years? You will need a lot of power to work on a process with a team. And that's why we have people who work on this specifically, right? And I know the future of our work, the daily work is that you need to be fast, and you need to repeat what you do a lot of times. It's not that you do one thing perfectly, and your done. Your tasks are going to be repeated several times. In our case, and not really—in our case, we received the whole leak, the whole 2.6 terabytes at once. We received the whole thing at once. That means that the task that you create on the in the methods that you develop, you probably have to run it later on. So say, you find something with a task that's very difficult to develop, and you can say, okay, I can develop it manually. I can go over these records kind of manually, and I'm not fast this time. But in two weeks, you will be regretting because it will come up, something that has to be run again. So I encourage to automate on most of the process.



PARTICIPANT: Just a question on the time, when did the deadline come from?



MIGUEL: It didn't come at the beginning. It was much less. We were expecting to publish. Like, this was started on April, something like that. And they were thinking, considering to publish on November. And there was no—it was impossible. And then we went—I don't know if it was time thinking of February, I think when we had to do it again. So I think it was, at the end, you end up in a year, or something like that.

So this ends up being the flow, or the stack that we, and the applications that we used, especially for indexing, and also admin. We use a text—sorry for the colors. I'm missing the... no, maybe? So we are using Apache Solr, which is an indexer. And we use Tesseract for the documents, and you almost end up using cool applications like this time, Solr but you'll probably end up using something common line, or you'll evaluate a tool. So that's why we usually end up doing. We end up using a very strong application. We construct a little later, a thing that we can automate, the use of the other one. And—or managed to, we managed to start with Solr on the cloud, and we use Collaborate HQ to send the OCR in, the jobs, and then they construct the indexer of the whole thing with Solr.

If you ever tried Solr, it is, like, a very unfriendly, unfriendly interface. We couldn't deliver this to the journalists, no, in the Consortium. So we needed to created a layer on top of this, and we were quite happy because it exists, something like Blacklight. Blacklight is a web application based on Rails, which is based on Ruby, and the whole thing is super flexible. And what this is, it's super—if you have a layer of user management, and the connectivity to the Solr API, so you can... yeah, go ahead.



PARTICIPANT: I'm curious as to why you chose Solr as opposed to ElasticSearch.



MIGUEL: I wanted to talk about that afterwards. No, I'm not sure why about why my methods chose to use Solr instead of ElasticSearch. I was actually looking at the comparison about them. They are pretty similar. Like, very, very pretty similar. I wouldn't say, I'm not sure, that choosing Solr, it would be also because it goes well with Tika, which, Tika, is, is another tool from Imagine. And it gives you a lot of more information about the files that are being indexed. Also, `it was easy to pass through the Tesseract with Apache. So, and then we have Blacklight on top of it because, on top of, now you'll have any many tools on top of ElasticSearch, as well. But I will say that those could be the reasons. So this is the web interface that Blacklight gives you. Very. And Google works, search works. And over there, you search there. You can custom your facets over there. You can still use proximity search. You can put, on top of it, any section that the custom section that you want, you know? But over there is, we're finding things, so you see a structure laid out over here, this is completely related to Blacklight. You can custom Blacklight as you want. We were handling our structure—the structured data to our journalists, using management. We can call our manuals, PDFs for internal use. But this we created on top of Blacklight to run batch searching. So our journalists get a list of name, instead of going one-by-one, instead of saying, all politics from Spain, we get that in a CSV, and we run it over there, and we run a batch search in Solr, and we return a CSV to you with all the findings.

So you receive a leak. What do you think you would do first? What do you think would be in your first tasks. What you would do is a leak?



PARTICIPANT: Count how many things we have?



MIGUEL: That's good, yes.



PARTICIPANT: Security?



PARTICIPANT: Check it for viruses?



MIGUEL: Hey, that's good. That's good, too.



PARTICIPANT: Just how to understand how to open that safely in the first place.



MIGUEL: That's maybe very good to start. Um, yeah. I'm not looking for the best answer; I am looking for many answers, you know? So you need to get an address. That would be nice. At least when we're working on that kind of site. So you need to come, you need to organize it. How is it organized? It's not normally one folder thing. Inside, you get into a folder app, it probably has a minimum of documents, and then you freeze your laptop, or something like that.

So it is not a very simple task to just say, search only that, and then trying to find only that, how it is, no? And then also to look for identifying and looking for names. You will look for dates. And you will look for structured data like a CSV if you're lucky. Or if you're searching HTML, you should look for tables, you should look for headers for fields, dates, whatever. And then you should also load them, what kind of files are needed to make OCR because OCR is other than management, the most time consuming task: Processing the data. And that's very important, if you have many documents to OCR. About OCR, again, it's good to know how many languages. Do you have your documents that your documents have. Why? Because the OCR is super expensive. You tell it you could get different languages. And in this way, we have it at least in English and in Spanish. So it's more likely, or it's a lot easier to find.

So if you have fairly good connections, it would be nice that we could go to a—this is a very bad color. There's a link over there. and I will make a poll that would be really nice and we could have everyone play with it and see what are your opinions. I have it over here. But can you open it, someone? Do you have the connection? Is it fine? It's bad?



PARTICIPANT: No.



MIGUEL: Um...

 I wanted to gather our opinions. And I wanted to see if we could get statistics but if we don't have good connections. I also tweet. I tweet it. So if you answer later, I could publish a tweet with kind of your most frequent opinions.



PARTICIPANT: You can put it in the etherpad, and I can put it the link into the polls for whoever wants to jump in.



MIGUEL: But yeah, otherwise, if you're going to—I will tweet whatever you're going to say later. Because it's not working, no? It worked fine.



PARTICIPANT: Yeah, it is working.



MIGUEL: Oh, it is. Fine.



PARTICIPANT: Whoever's connected can do it.



MIGUEL: Okay. So I will go to this. What do you think would be the most important actions on that data?



PARTICIPANT: Search.



PARTICIPANT: Link or connect?



MIGUEL: Would you consider that, when you get a leak, that you would need to link items? Link documents? What are you thinking about that? Good. About sharing. Sharing might sound stupid but I mean sharing among the people you're working, and I would consider this quite powerful, and it has been super used in our communication platforms.

We probably end up finding a lot of things that you need but someone is good. And the good point here is that we have so many colleagues. I have Spanish colleagues saying to, Argentinian, saying, or from other places saying like, I got this. We would probably look at that. It's good for you.

Okay. What do you think would be best for you on the platforms and applications like you would use for searching? What kind of helpful?



PARTICIPANT: Seamless search because it's very hard to do—do the search, and it does similar things.



MIGUEL: Yeah, like the auto-completion thing.



PARTICIPANT: Yeah.



MIGUEL: Good.



PARTICIPANT: Sharing searches so that you can collaborate with others. Two more and then I answer. Give me two more. You get a leak, or did you work with some kind of leak before? Batch search or batch search, it is—it has been quite—it makes us quite happy when publish that thing.



PARTICIPANT: Can you describe what that is, a bulk search?



MIGUEL: It's like searching a lot of things at once. Or you submit a list of terms that you want to search, and you don't go one-by-one, you know?



PARTICIPANT: So several search terms—so several searches all of them?



MIGUEL: Not like they use to—they would need to be all together. But, you know, you normally, in a search application, you would have, like, an input box, like the Google search input box here. And so we did this here, we did a section where you submit a CSV with a list of terms that you want to search. My term would be, like, all the political parties of Spain, or all the major countries. I don't know how many parties in the United States it would be. Sometimes you found what you want but sometimes you found something that you don't. So it was pretty interesting to do bulk search.



PARTICIPANT: Okay.



MIGUEL: If you are answering over there, it is very... let's say, ah, yeah. This is kind of interesting. They ask, how do you trust something. So would you trust an external service provider? It's not like...



PARTICIPANT: It depends more on what's the leak about, right? So if the leak is about some politicians in the UK, I would trust them with something. If it's something that's a leak about the United States, I wouldn't be sure about, right?



MIGUEL: So you also would consider political facts like where he comes from and what is the extent of service from them?



PARTICIPANT: Against the politician.



MIGUEL: That's a good point.



PARTICIPANT: Would you—could you say more about data custody and where—yeah, you used Amazon.



MIGUEL: Why we chose Amazon?



PARTICIPANT: Or more specifically, where in Amazon—what—where within Amazon's jurisdiction.



MIGUEL: We have legal contracts that you would get with Amazon. And they will consider that we will be free of risk storing it there and, especially, in terms of load, in terms of let's say getting these data, okay, and then the other risk that you could get is some technician of Amazon will find it, and they will—or with that, with Amazon, it's pretty easy to encrypt a disk. You just take a disk, and say I want this encrypted, and everything in there is encrypted.



PARTICIPANT: But also, I mean, have you considered the Amazon region? Would you say U.S. west one or...? Do you consider Amazon?



MIGUEL: Legally, that hasn't been a reason. The reason to choose over another about that, one has been, we're putting it on Amazon. There's one we choose one over the other is the proximity and the latency because we were uploading a lot of stuff. And sometimes, it takes days, sometimes, it breaks the connection, and...



PARTICIPANT: But for your purposes, but within—or the equivalent?



MIGUEL: Within the U.S., I don't think they didn't care which jurisdiction.



PARTICIPANT: But just as opposed to putting it overseas, do you think the legal conditions are more favorable. I don't know if it's really—who knows, it's all on the Internet.



MIGUEL: Yeah, you know, I mean, I think we considered that it was secure enough. Yeah. And it will, also, if it was the best option. So what is it we can do, not much more, right? Not too much more.



PARTICIPANT: It's kind of hard to get 35 giant servers. Didn't you have 35 large servers working on that?



MIGUEL: But not continuously. Not continuously. So they are all off by now. They are off by now. Okay. I will go faster because we're half the way.

Graph relationships, it doesn't sounds as important as graphing and searching. But we include this kind of technology. Why we use it? Well, the first reason is because our data is super connected the final groups, the final visualizations we made are like this, no? And over here, we have users, clients, companies, banks, addresses, and they usually use different tables. If they will be in a traditional database. And that will be good if we're going to use an external database, it would take quite a lot long. And we have databases that are much faster. And this is the second reason that we graph the database. The one that we're using is Neo4J. And for that kind of queries, it would be much faster, no? It's not only about time, it's also as a writing as a developer and that kind of thing. This is the stuff for—and you don't know how many relations and qualities you will end up writing for the application because you don't know how many entities you're going to find. If you, in the next two months later, you get a new entity, you release that, and you end up making this worse.

In graph elements, this is much clearer, more lateral. And, actually, the presentation of your database looks like it is, like natural looking. It is very similar to the final—the other graph, no? This is, like, the design of the database. This is the company on green, and address, over there, and then in the end, an officer. And just how they are related. And that's how it is stored in the database. And it's—this seems kind of not relevant, but I went to here for a talk, and I said, a good point for this, you would use this for a natural way, the way you use for your model, the way you use your data is not the way that you've designed the tool. And I say sometimes, this is not a point but everyone was saying the same. They use the same viewpoint. So we all feel the same.



PARTICIPANT: So, I mean, in order to do that, you have to do some sort of engineering fashion. Were you using own Open Calet. Or entity extracters. Given the text, you extracted entities, did you use Open Tele for that, or did you write your own?



MIGUEL: For starting this, they say that—by "entities" you mean, like, doing entity structuring?



PARTICIPANT: Yeah.



MIGUEL: No, to build this kind of database, we didn't need to do entity extraction. `we've done entity extraction for other things.



PARTICIPANT: So you're basing that off of structured data?



MIGUEL: We were doing with HTML, to create them, and then from HTML from a CSV database —



PARTICIPANT: So you had this data.



MIGUEL: It wasn't to extract it. It belonged to the database, those HTMLs. It belonged to the database, to the real structure of the company.



PARTICIPANT: So you had to scrape it, but there was no NLB.



MIGUEL: We had to scrape it but we didn't do any NLB process on it. Good point. But we did run entity extraction for another process like finding beneficiary_ofs. The whole point of this, the biggest point was finding the beneficiary_ofs. That was, like, the main task of it. For that, we did run some entity extractors. We created—there was point of the Blacklight, that we could create a separate section completely non-related to the Solr thing.

And we did a section of it for—entity extraction, visualizing the find of beneficiary_ofs.

How we did this, we get—once we get done scraping the data, we output it in CSV and in database format, and he's a very talented guy with the Talend software? It is quite recommended for the ones who don't want to program quite much. It is a very powerful tool to integrate for data.

He built a some offshore databases, designed with Talend. And what you see in a website, is Linkurious? Do you know Linkurious? It's software that runs on top of the database that makes it much, much nicer to visualize the graphs.

So now, I ask you. Okay, I think I normally ask you, do you think that in a leak you would need to connect some stuff? Would it be relevant? You could go without it? Is it important, or not important, or it depends on the leak. Everything will have—every leak will be this kind. We don't know much about any leaks. But every time, I think every leak is more connected, or the original thing is more connected. And I think it gets where, probably you will find interesting people, prime ministers, and things like that without leaking data. But probably you will never find if what they did was legal, illegal, or things like that. So if we had link to companies with beneficiaries, owners, and things like that, you would track the whole way, the other way down to these activities are specific or not. A list in our case.

There are more alternatives on here. And you can choose a graph database, a NoSQL database. And a good point of this is it's not like you design an application, and you program it, and you finish. You get more data, and you probably need to change it, and update it, and do it within a year, the whole project. That means the whole cycle of the development is repeated later, and if you have flexible applications, it is kind of better like modifying the majuscule schema a few times would have been painful, right? So more information on security. We don't need to create a network of journalists, a consortium. The Spanish consortium, they don't talk to anyone else. They call, and come, and that's it. You need to create a community. You need to work with a group of people who works with each other, and even at the same time, when they work, they work for the same company. And that's what we have to do. We encourage that. I have some mates, they repeat these kinds of things a few times like please say with others if you find some things. We need the platforms that we could do these kind of things.

And we have our own social network. It looks like this. We have—we could search. Everything that you could do on a social network, too. We have a newsfeed where you can post whatever you're feeling that day. We have forum, we can create groups, and we can share it, and also, give all the links traced into one place. And as journalists, you can't have too many files. Too many files. This kind of thing, painful at the end because you actually have to fill in, where you start. And this platform, it is—it has been quite a good point to use. It's Oxwall. It's open source and it's in development and we're on the way of publishing it, too. We have added, like, Google authenticator. And now we're getting into security measures. It's not enough—this platform, for us, this is, like, the daily work of the journalist. So it would be also very bad if someone gets in here that is not allowed or they steal the data from here, no? It would be very bad. A very good measure is to add Google authenticator. It's a good step, a list for not allowing users to get in. But this opens the question of: Would you trust Google authenticator? At least in some of the talks, Google, Google, are you trusting of Google?

So this is approximately, you have to decide. I would say yes. We actually have been planning to implement Google authenticator in more systems.

Do you use any of you, encrypted emails? Yup. Good. You have it installed? I mean, you don't have to use it to write to your family, you know. But at least are you ready for using it? And at least, as far as I know is that, if you really want to ever, kind of see leaked data, the leakers guys, they want you to be secure. They don't want to be found out by a journalist, right? So this is what an encrypted email looks like. This is a nice Google app in Chrome that you can install on the browser. And it's as simple as inclusiving your destination or public key, and then you can write the email and encrypt it, and then it will encrypt it with this key and send it. It works with this, and the website that you want to use it, it's quite friendly. So these are kind of our tools we use to talk, no? To communicate. Also in Slack. It's mandatory, it seems to be is Slack. More communication usings Cyan and WhatApp. And at least it's encrypted otherwise you're not saying sensitive things. But we'll do never trust any of these communication channels. Are you feeling that it's not too secure thing, we're risking ourselves and data?



PARTICIPANT: Well, Slack is an encrypted server.



MIGUEL: Totally, but we don't say things we shouldn't. At least we try not. Especially, we have to, for that, doing errors for that. You should write down, shouldn't we say online. And, of course, not usernames and passwords. There's something else important for us, which is the URLs. Same thing but your own Internet applications, URLs, that's also risky, especially since we publish. Once we publish, we also, and especially in the days we publish, it was so popular. And we were afraid of being—having our video found out and this data, no? That's it. I have created another poll over here. And this one... so some of the questions I already did: Would you store your data on Google drive? With the bank? Do you think it's not safe on there? Someone who would never, never put it on Amazon?



PARTICIPANT: What do you mean not safe?



MIGUEL: That someone else will take it.



PARTICIPANT: Depends on your threat. What is the threat level? What is the data, what do you feel? Like, Amazon is probably not a problem if it's a Russian Mafia.



MIGUEL: Well, in this case, for instance, Amazon was already sued—not sued by authorities about using offshore companies long time ago. We will say—what would happen if Amazon is in there? We didn't know in advance. Amazon could have been a potential entity interested in working in there. And actually, they end up calling us for offering more support for free, and things like that. Yeah, the technician service was great with us.



PARTICIPANT: I mean, I wouldn't be afraid of Amazon, the company, probably. I would be afraid of the U.S. Government.



PARTICIPANT: Yeah, the U.S. Government.



MIGUEL: That's a good comment. I'm getting some questions about that. You can do some things with that still using Amazon. So let's say yes, and about putting it on the cloud and this. How about here?



PARTICIPANT: When you do that, since you pressed yes, did you put this on the slide?



MIGUEL: The slides?



PARTICIPANT: About the Panama Papers, did that end up on Google drive?



MIGUEL: The presentation.



PARTICIPANT: No, sorry, the actual data, you pressed yes because it definitely wouldn't go to a Google drive.



MIGUEL: Oh, sorry.



PARTICIPANT: Because the secure doesn't —



MIGUEL: Here... you are right. Good point.



PARTICIPANT: If it said —



MIGUEL: You are right. And that's—opens up another question. For one of our applications, it was called Power Players. We had to document a lot of stuff. Journalists needed to work on stories. And when they work on stories, they create a lot of documentation, and a lot of information. And they need to communicate with a lot of people. Like, we have reporter, we have an editor, we have translator, we have an advocate, and we have many people. And it was a chain of politicians with this story, no? That would create a humungous number of images and, of course, documentation. Because it's not only the platform when you store the data, it's also the platform that you work to work with this. What we end up using is a good site system is Confluence. Do you know Confluence? It's a product of Alasian. It's like Google Docs but from other guys, I think Osis, and I think this software, you can style it in your own servers, we style it in our own servers and it is super powerful. And it is very nice. It stores history changes with documents.



PARTICIPANT: What were you saying?



MIGUEL: Confluence. It's nice. It's not a trivial installation but it's a good tip if you're in ONT, application to go with. Would you host your leak data—this is related to what you were saying you were afraid of American Service, and things like that. For that, you probably would like to go with Tor. My mates they would be like, what the hell, you use Tor? Why not? In Amazon, you can put an instances to work with Tor, and your service behind this. You would be safer against governments because the government could say, give me where is the server with this data and take it down. With Tor, you can create that security layer. Yeah.



PARTICIPANT: Would you also add extra protection like VPN restrictions?



MIGUEL: VPN is—that's—there is a debate on that. At some point, you cannot create all the security layers. It takes so much time this is not our purpose of the time. And finally, users, journalists would get crazy, and never use it, so they need to work on this. You can work with Vivian, you can add client certificates, you could add Tor, too, and Google authenticator. VPN has a very bad design on that. Like, if one of the journalists is hacked, he can get into the whole network—hack it.

So it is not an option. They don't log into our systems with a VPN. Only terminal.



PARTICIPANT: At the end, it's trusting the people you work with. Have you had a case—has it been the case in this project that you have to keep out somebody from this project because something happened?



MIGUEL: No.



PARTICIPANT: Okay.



MIGUEL: No, we didn't have to. Not like locking out forever. No, yeah. We had some problem, maybe... there was one study where we knew we were sure that we needed to repeat the URL. So for that time, for a while, no one could log in into the social network in any of the systems. Things like that. But every measure that you can take is, okay, if you find that this guy, he's sane, and healthy, then you give him access again later on and see, but yeah?



PARTICIPANT: How about phones? Do you have a phone or, like, Skype or something?



MIGUEL: Yeah, we had some conversation with Skype sometimes.



PARTICIPANT: Before do you consider that secure?



MIGUEL: Secure?



MIGUEL: Depends on what you say. They could also listen to you, yeah. I mean, we have it. But only by hearing us, the project is, to me. And even by hearing the conversation, I'm talking to ten people for half an hour, it's very difficult to really get the whole project to be done, or... yeah. I think it is. We didn't have a conversation where if someone is hearing, it would be at the end of the whole point. I think that always happens. So that's why I think that, usually, most of the communication channels are not answered here as you think. Of course, if you give a password but with normalization. Using is like, for instance, we can talk quite a lot about the data work. No passwords, no URLs, no things like that. But when I come to work today, authentication, the project is continuous. It's not so—and we are producing—there has to be a lot of people talking about this.

Okay. I will, I will now remains only five minutes. So I will talk about the data. You have that because you have the questions over there, and you can answer. I give you a data folder with our CSVs from our project, Panama Papers. That is, you can find that on the website. You can play with that. That's if you want to play it, and import it into whatever system you like. Then you have fake leaked data which I cannot reproduce a similar leak for what we have received, that you have structured fake leak data, you have images, thousands of images. So it would be nice if you decide to, okay, how to link the emails and serve them on time. How many there were, send, or who is the most frequent sender of emails. Who received the most, who's the most important guy of those emails, and things like that.

And then, you have tons of experience, too, to try to OCR and index them. That's a good task to go with it. And those belong to, actually, the World Bank website, which, we had a project about this, which was evictum avadnum (phonetic) which, it seems like the World Bank has made people to move to original terms. So this is about recidiments plans because they've made obligations to return. We've made a plan a long time ago about that. And they plan to return to it. So I have over there packages. The guys over—they generate two packets to install their software without data straight ahead. And that's a friendly and good way to get in touch of this sort of work. Like you start the other day, you start with nothing. It's nice to have the optional leaks database you can start playing. By installing it, you get a browser, and by clicking things, you can move around and search them—in the database, and then you get a visualization, which is kind of friendly. I could show you that.

This is what you have. You see. This is when you start the packets for Neo4J. These are the entities, notes for our graph. Like, entities company. And you get a bunch of them.

And this is all the relations between the graphs, nodes in our database. You would look for a certain color, and you get things like that.

You know, this is an installation of the package. You have to, because there is one for Mac, and one for Windows. And I found it pretty nice to have this straight ahead and start like that. It was very convenient to get your hands on. I think that's the whole USB thing I gave you. Any other questions and any other tools that you would...?



PARTICIPANT: This is just a general question: How do you establish who you end up working with? Is it like—how do news organizations become part of this? Do you select?



MIGUEL: What I have, I inherit because I'm part of the IT, the data unit, so I don't decide much that. But I know is, they know from each other, they have work from before. They agree on publish everything on one day. And there was a—I don't have much more left but... there was something—yeah, one of the requirements was follow up on—on months and dates, and trust to share at work. If we find out that one of the parts is, they may be are working, they are not in the whole community, probably, it's not—probably he won't be called next time. Yeah. But... you first?



PARTICIPANT: Have you ever looked into trying to figure out what the dataset is if it's a complete dataset, otherwise from... I mean, is it one server, or several servers, or is it a computer where the original data comes from? And is there any way, because I don't know much about data in that way but is there any way to figure out if it's complete before something is sold out, before...?



MIGUEL: Yes, we try to go and analyze the whole leak. And if we are missing identifiers, missing unique numbers of companies, for instance, and we are missing some stuff, about the data, no? But that doesn't change much anything. Like, we couldn't get more if we want. We wouldn't. We could notice that the guy who gave us is hiding something. That could happen. But we cannot do much about it, you know, if it happens.



PARTICIPANT: No, no. It's more about the —



MIGUEL: And which platform the leak that has been stolen, yeah, like, my main link with the data unit, we look for which kind of server they were using, but that's kind of for fun, okay? Like we have stolen from this platform, mainly if you have it, right? But that's just a curious thing.



PARTICIPANT: Yeah, yeah, yeah. But it might tell something in—yes, I have to be —



MIGUEL: Yeah, probably because they will not use that platform anymore.



PARTICIPANT: So you're saying any sort of technical architecture, you start out with some things and then you fiddle with it, and then you change some things. I'm just wondering in terms of the technical part of this, are there things that you started out and disregarded, and that you recommend that we also don't do because it didn't work for you?



MIGUEL: From experience, most notes, the thing—when we consider where to work on these Power Play stories, all the journalists would be documenting stuff. We were considering using our custom documenting application like using—in the lab. And then we decided to go with a platform. Apart from that, we haven't decided anything.



PARTICIPANT: And if you were to do it a second time, would you change anything if you were using it now?



MIGUEL: We would consider using that for that purpose. But for any other things, it's not convenient. Every time you should reconsider what you would use. Yeah.



PARTICIPANT: When you're going through the initial dataset, how much of it is, like, manual review versus, like, why you're using scripts to parse stuff.

How much of the initial dump is manual, so like opening at files and looking at it, versus writing scripts to try and figure out what's in the data.



MIGUEL: How much has been manually repeated?



PARTICIPANT: Or, like, do you have journalists who's basically looking at file-by-file?



MIGUEL: Well, they're opening when they search for something. We keep track of the results. You have an email system, and also docs, or emails with docs, or PDFs over there, and then they open whatever. I had no idea what they—how much it was—has been looked into automating—well, we automated the whole thing because the whole thing has been indexed. But manually, no idea. No idea. That's a good question I was making myself to on Atom, on our platform, how much have we visited, in opening the whole thing? That, we don't know.



PARTICIPANT: You said earlier that you think you're going to get larger leaks? How do—why do you think that?



MIGUEL: At some point it will beat us. For sure. I've been thinking about that, too. But probably not the next one, and not the next, and the following one. But, at some point, we will get—we will get some heavier things, for sure, yes. But the good point, and that's what I wanted to make with this time. We never came to a workshop with a fake leaked data. And it was—what I wanted to do is like start setting down the tasks that we should do with a leak. Like, standardize this kind of work and tasks. I think we haven't done that before either. And I think it's an interesting thing to do for the next month because, every time, everyone, NSAA will get the leak and we'll have to go through the same job. Yeah. This is over. So thanks.



[ Applause ]
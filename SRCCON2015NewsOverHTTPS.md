---
layout: 2015_layout
title: Session Transcripts
subtitle: A live transcription team captured the SRCCON sessions that were most conducive to a written record—about half the sessions, in all.
section: docs
sub-section: interior
background: books
byline: Nate Bolt
bylineurl: https://www.flickr.com/photos/boltron/3212284622/in/photolist-5TRNiC-4VkeqM-4VpqGm-4VkcGz-4Vpr1S-4Vken4-fmXRof-2YtFPR-fmHB44-dFxkXG-7yv4t7-4VnnAn-5A3XSn-4Vnnmv-4VnnqK-9uup4n-4Vnnv6-3ViP2v-4VnngF-4VkgVa-4VkeuZ-4Vkg5R-4VpmbC-4VpnDu-4Vk9rK-4VpqRL-4VpsPb-4VpuU3-4Vkf5D-4Vkdj6-4Vk8uc-b1TXEz-4VkhcX-mF5DPa-fmHXAB-r8mgB3-s5i4Mz-7i3R7t-og8qB5-fmXSCf-7i7Ky9-92YNnD-fmHDut-5C51hV-rMM8b3-k639ok-8FDPAB-apFhiP-rL2vRV-4VptiN
permalink: /docs/transcripts/newsoverhttps/index.html
---

# Meeting The New York Times Challenge—Delivering the News Over HTTPS

### Session Facilitator(s): Paul Schreiber, Mike Tigas

### Day & Time: Thursday, 3-4:30pm

### Room: Minnesota

Welcome, everyone. Stand up. Hi, I'm Paul.

And I'm Mike Tigas.

And we're going to talk about delivering the those over https. And we're—there's a lot of links and acronyms we're going to give out. You don't have to scribble furious notes. And we're trying to give you a shorter URL so you don't have a horrible Google Docs URL. Sweet.

So last November, the New York Times posted this on their blog, it said, if you're on a news site or any site at all, we'd like to issue a friendly challenge to you. Make a commitment to have your site fully on https by the end of 2015 and pledge your support with the hashtag, #https2015. So Mike works at ProPublica and I work at FiveThirtyEight. And we've been working hard to make our sites work with HTTPS. And I'm going to give a quick overview of what this means. What we want this to be is we want this to be a hands on session and we want to help you solve particular problems that you run into. So we're going to talk for about 15 minutes, talk through the problems that we've solved, talk about what is, and whatnots available and then we'll get you all involved in answering questions and solving problems together

So part of the way the Internet works is your computer has to go to a website and actually ask for the page that it's looking for, right? And the way that websites and HTTP work, HTTP is the protocol that websites are served under. And your browser just sort of sends your request out in the clear and the response is sent back in the clear. So your service provider can just sit on the line and sort of look at what web pages you're requesting and all the data that you've sent out, and all the data that's sent back

Like a roommate, or anybody that's in the coffeeshop that you are in

With HTTPS, the requests look like that. They're encrypted so that only the website at the very end can, you know, see what you want—they're the only ones that can respond to your request and see what your request was to begin with. So normal HTTP website, you not only, does HTTPS get you encryption. But with a normal HTTP website, you click on, like, the address bar, you'll see something like this, where it tells you, "The identity of this website hasn't been verified and the connection is not encrypted." So this is like standard browsing the if you have an HTTP connection, there's varying levels. So the very main one is. FiveThirtyEight.com, you're definitely talking to FiveThirtyEight.com, that's what the first part says. HTTPS sort of helps to verify the identity of the website that you're talking to

Making sure that there's nobody else pretending to be FiveThirtyEight and gives you fake stories

And the other part is that it's encrypted with a cipher suite. Note here it says that no transparency is applied. And there's --

All kinds of details

All kinds of details that can be attached to HTTPS. So if you go to a bank, for example, you might get the full organization name inside the address bar and that's because they paid for a certificate and they went through extra background checks. So not only do you know that this is stcu.org, but also the website is operated by this company and we've seen the paperwork. So these are called extended validation certificates

So what do you want to do all this? There are four reasons, four benefits that you get from using HTTPS instead of HTTP. One is you get privacy for your readers. So they, right now, anyone on their network, or anyone in between, can know, not only the name of the site, but what specific page they're reading, and see all that content.

And whether it's because you have sensitive information, or whether it's because you just belief in protecting people's privacy as a principle, HTTPS gets you that. The next thing is improved security. When I send you a web page, I'm not just sending you the content of the page; I'm sending you a whole bunch of other stuff. I'm sending you fonts, I'm sending you pictures, I'm sending you Javascript and any of those individual items can be replaced and sometimes, what people will do is they can use that to attack your own site. So they can replace the Javascript with some malicious Javascript, and then run a denial of service on your own server so that you can take your site down by running some sort of hack or something in the middle and HTTPS says that I'm going to make sure that the Javascript is actually coming from your server. And the other thing is it's good for SEO, Google wants to reward you for using HTTPS so they will boost your rankings in the search engines. And lastly, this is good for site performance. That's weird because I always thought HTTPS was slow but with HTTPS, and Chrome, and SPDY, you can get so much more done with one connection than before and Mike has a good example of how this helped him on a high-traffic day

There was one day. I wish I had a screenshot to put in here but one article that ProPublica got on the front page of Reddit. And we only have one server and it's not the beefiest server. And so there's this protocol called SPDY that I think all modern browsers support and if you're using Nginx, you can get it for free if you just turn on a flag in your configuration. What this does it makes is so that the images on the page, and all the Javascript, and all the scripts that come from the same server sort of get thrown down the same pipe instead of your browser making different requests to different ports to the website and so we were able to handle pretty significant traffic on the website because the day that we had that article on Reddit, I made it so that everybody who was looking at that article was redirected to HTTPS and our website did not buckle under the load

So we're going to—there's five things that we're going to cover. We're going to talk about setting up your server, and configuring it. We're going to talk about the content on the page and on the site. We're going to talk about how much this is going to be cost you, we're going to talk a little bit about performance is and then we're going to talk a little bit about some problems we ran into making our sites HTTPS and how we were able to solve them. First bit is configuration and part one of configuration is certificates. So the way HTTPS works is your server has a certificate that says, I really am ProPublica, I really am FiveThirtyEight, I'm really SRCCON. And you have to buy these. Someone has to really assert that you have ownership of that. And they cost money. You can buy them for a little amount of money. You can buy them for a a big amount of money. There's no advantage. They start at five bucks. A certificate there will work just fine.

You don't have to spend $250 to get the same certificate. Another way of doing this, which is really neat is a tool called SSLmate and it's a command line tool and you install it if you have a Linux server and it will buy the cert for you, and you install it, and it will configure Apache, or Nginx and it's going to remember when the certificate is going to expire and it can get a new one every year for you. So it can handle this and automate it with your other system tools. They charge you about 15 bucks a year so it's still a pretty good deal. And lastly there's a project that the EFF, and other organizations have made and it's called Let's Encrypt. And it's available to everyone, not just people with newsrooms and sysadmins. People to manage this, but your person with a blog, or pictures of kittens or whatever you need, where you don't have to go through all this half. It's really interesting. I can't tell you how to do it step by step because it doesn't exist yet but this is going to make HTTPS this tool for a few people to a tool for everyone. So what about money? So I talked about this. I said they're about five bucks on the low end. Free in September, hopefully. And you can, the extended validation certificates, the thing with the green bar that Mike talked about, those cost more because a human has to go through a bunch of paperwork and they they can cost a hundred bucks, which if you're a big company like you're this bank, or you're Apple or you're the Washington Post, you can totally afford. And then the other important thing is, these certificates are only good for a year. You have to remember to renew them. If you don't renew them a big warning will pop up, this certificate's expired, do you really want to do this and you'll scare your readers. You want to set a counter or reminder in Google calendar or whatever to say, renew my certificate or else your angry boss will call and say, "Why isn't this site working?

Raise your hand if you fucked that one up

Yeah, so if I buy a certificate, you can buy four different types. Mike will talk about some of the different types of certificates that you can buy

So the regular one is the one that I showed you where it's basically the domain name in the address bar is guaranteed to be the domain name of the server that you're talking to and the data is encrypted. It's sort of the base level of a certificate. There's SAN certificate, which is subject alternate name. It's just a way that you pay a certificate of authority and if you run a few brands but you run them all on the same web server you can just run one certificate and run all the domain names through it. And it will cost you the same as one certificate per name. But..

There's less stuff

You know what...?

There it is. Hey. Yeah. Sweet

And yeah, there's wildcard certificates so you could have, like, all of your subdomains, an infinite number of subdomains have SSL and look okay to a browser. These cost usually a little bit more because I think the break-even point is five or more or something like that.

And then SNI is just—what is that? That's just a way for multiple --

It's like virtual hosting when you have one IP address and you have a bunch of sites with different domains, and you don't want to give them all IP addresses because they don't normally need that. It used to be you were fine for HTTP and if you wanted to do HTTPS, you had to get new IP addresses but they fixed that and this thing's called server name indication. And it says, "Hey, I'm looking for this site. I'm looking for srccon.org, or kittens.io, or whatever." And there are a couple of really old browsers that don't support this. So if you need 100 percent compatibility, you cannot use this. But if you have a—if you are worried mostly about convenience then go ahead and use SNI. It's pretty safe for most people.

So certificates are signed with, like, cryptographic algorithm that you know, it's basically proof that this certificate is legit and was purchased from an actual certificate authority and not, like, one that the Libyan government randomly made, right?

Sweet. sha1 is sort of like the old hashing-out algorithm and it's effing easy to make. So a lot of browsers have been phasing out support for certificates that are generated with this. Usually you don't need to worry about it but if you're using a new version of Chrome, you might see a warning lock appearing and I think next year you'll start seeing that websites will look like they're insecure and give you the big red warning even if you have the valid certificate. So basically if you have SSL and you're renewing certificates, you might encounter this and you might just need to renew my way through the year when your SSL provider allows sha certificates

So if you're making a certificate today, don't make a sha certificate. Again there are some weird exceptions when you have people with Windows XP P with service pack one, but they can't have service pack three. There are some very strange edge cases and that's mostly applicable with people in indicate or educational institutions where they have a userbase where they know the people with a strange thing. If you're using a website, you know, most of your readers are not going to have this problem. So if you have a sha1 signed certificate on your site today, you should replace it with a sha2. You don't have to pay for it, again, if you pay for it, they'll just reissue it

Basically we talked about extended validation where inside the certificate is, like, a thing that says we've looked at this thing's paperwork and it's actually this company

So the thing that we talked about, sha2, we talked about SNI, all these things, they all work with the new versions of all your browsers. If you go to buy a certificate, sometimes they'll say, this works with 99.9%, or 99.999% of browsers out there. Again, anything that's recent and modern will work with pretty much any of these certificates that you buy. This is not something that you need to worry about

And I just want to jump in also. If you're, like, an organization that creates APIs that other people can ingest you should also, like, make sure you look at, like, what Java supports and what versions of Ruby supports, and just sort of make sure the people who use your APIs know that you're making these changes. Yeah

And so, which is a good segue into our talk about cryptography and the server. So this is cryptography. It's messy, it's hard. People in cryptography have an saying that you should not write your own crypto. Because there are a ga zillion cipher suites and what changes as people find new vulnerabilities and say you should turn stuff off. So instead there are other ways to do this. There are great tools. If you have sslmate you can run the mate config command. Even if you don't use it to buy certificates, you can install it and generate stuff. The other thing is Mozilla has a configurer that not only does email configuration but any other kind of server that uses a certificate. It knows the denies between Apache 2.2 and 2.4 and things like that

All these are in the document, in the link and we'll go through and show you this configuration generate and a few other things sort of after we're done

So again, the links are all there for you. And you can—when you say HTTPS is on, it can mean four things:  It can be enabled. So it's just optional for readers that want it, they get it, if they don't, they don't. You can say, it's on for default. So it's on for everybody. And so you are there, and then you get redirected to the HTTPS version. There's a header called HSTS which stands for hypertext strict transport security, which sends the browser, hey, this site is HTTPS. Don't get tricked into anything else. If you see it, ignore it. It's always HTTPS. And it forces, it prevents things from being hijacked or redirected to the non-secure version of your site and then lastly there's something called the preload list and modern browsers will have a list of sites, it's just a big list, it's a text file this long of thousands and thousands of websites that says, these are always HTTPS, even if the user types HTTP, ignore that and always go there. So once you're sure your site's working, you can submit it to this list list and that way you don't have to worry of someone accidentally going to the non-secure version of your site. So now, here is the fun part. We 'eff talked about the server and all that. Now you have to look at what's on your site and how that works

This is usually like the roadblock when people are trying to set up HTTPS on their news site. They set up their server. Now it's listening on HTTPS, right? It's listening on that port. And you try to go to it and you get the yellow padlock warning

Has anyone seen the yellow triangle? We get some hands. Everyone's seen the yellow triangle

So this page is encrypted but it has some stuff like images that might not, you know, that were not sent encrypted. So somebody on your, eavesdropping on your connection or modifying data can change the way those look

And that would be bad

So you'll get two kinds of things that will happen. You can get things, your browser will generate a warning so if you get audio, or video, or pictures it's like ugh, I'll show you them anyway. But you should know that I can't authenticate it. Whereas other things like Javascript, or CSS, or websockets, or SHRs, they say, I can't trust that. So if you're on a HTTPS page and there's Javascript that tries to load HTTP, your browser will block it saying, "Not happening." So you know, for most news websites you're not just dealing with the stuff that you generated, right? One of the big problems with operating a news website and trying to move to SSL is we embed content from other sources all the time, right? We're not 100 percent in control of, like, where the stuff is, you know? But luckily all these organizations, all these, like, embedded content providers from DocumentCloud to YouTube, to whatever, all support HTTPS in their embeds. Unfortunately, if you have a New York Times video, and you embed it into your story or if you have a story from NPR and you try to embed it into your story and you're on a HTTPS version of your web page, these two providers don't support HTTPS in their embeds. So you'll see, like, a blank rectangle in the middle of the page where the video used to be embedded. So if you work at the Times or NPR, we would love for you to make this available to not just you, but your readers. It would be super awesome and we'll buy you a beer. That's great

Comments. All the comment systems. Same thing. Ads. Odessa are usually one of the problems that news providers say, I can't switch to SSL because we run a lot of ads and they don't support it, but honestly, Google, DoubleClick actually do support SSL now. It's getting more and more nowadays, what it now? IEB?

The IAB, in Internet advertising bureau. They wrote a blog post saying, you should all use HTTPS. Soon their own organization is telling them to do it. It's great

So most ad platforms support it. Your code doesn't need to change at all normally. Most social widgets are the same way. So there are, like, very few excuses in terms of embedded content. All the analytics. All the A/B testing

All the analytics stuff, all the A/B testing works already. All of these providers have it out of the box. If you use CDM, they use HTTPS. They sometimes ask for more money for it. But it totally works. Your fonts, if you have web fonts that you use, all the web font providers they all support HTTPS. Those totally work

So as we said earlier, you know, you have to pay for certificates, obviously. And that ranges from, well, it—Let's Encrypt will come out in September, and then certificates will be free, and you can get it through them but normally they cost between five and several hundred dollars depending on what you're doing. and then there's the cost of infrastructure. We use Fastly for some of the content on ProPublica's website. And there's a several hundred dollar charge to set it up

And 100 bucks a month

To have an SSL certificate with them. So like yeah. Using any hosting provider sort of has some implications

And you have to pay, you know, someone is configuring your server every now and then and that's a little bit of their time, and lastly you have journalists and when they're putting together stories you have to make sure that the images and the video and the audio they put together are available over HTTPS, or it will cost some money to train them and check all of that stuff

So as I said before, the historic view of SSL is that it's slow because there's encryption. There's the sort of CPU time. So you're doing less than heavy math for every piece of content that goes through the site. In reality, it's actually not that bad because the connections are multiplexed with SPDY

And computers are faster than they were years ago

And the fact that we have SPDY and HTTP two. Means that even if you're doings fewer encryptions, you end up doing less server work

So both of us have been working over the past six months or so to make our sites work over HTTPS. And we ran into some bumps. It didn't just all work on day one, or else we would have done this talk in January and so we talk about some problems that we ran into and how we solved them

As we sort of like—as we sort of listed previously, like, it turns out that most of the providers that, you know, we have embedded content for most scripts. You know, they all support it. A lot of the problems are solvable, you know, from, like, configuration to --

Redoing

To content

A lot of times when this was set up, these were the non-HTTPS version but it got added when we were not looking. But sometimes it's just there. What happens if I have a provider and it doesn't have HTTPS. Placehold.it did it the same day

Knight Lab. They just did it a month ago

And Outbrain had a product called Visual Revenue. And one of the customers there, they found the right person at the company who agreed to it and five months later it's done. So even big corporate entities will do this if you ask them sometimes. So it's great. Mixed content is, this will typically take most of your time is going through and finding where you're getting these warnings and where you're getting these errors and tracking them down because as soon as you have an embed and an iframe inside another iframe, that's when the complexity comes in

There's this tool called mixed-content that crawls your website and looks for links that are just HTTP. And it will generate a report of all the links that it's found. It's a little slow because it has to crawl your website. An alternative is, you can defeat sort of the yellow triangle warning with this head with upgraded secure requests. It's only supported in the newest version of Chrome right now, but Firefox, they're working on it and I think, like, Internet Explorer is working on doing it. Basically, what this does is it makes image tags and scripts within your page. If they're on the same domain name if I'm on Pro publica.org and I'm looking at it and there's also another image that's to propublic.org, it will just upgrade, and it will upgrade implicitly

So if you have hundreds of old pages and you haven't had time to go through all of them, this helps

This crazy header I think the only important parts are like the content security policy reform only and the part where it says HTTPS and the part where report says URI. This is a header that both Chrome and Safari support and if you as an user visit a website and you get a mixed content warning, your browser if it sees this, it will actually post a JSON data thing that says, here's the web page I'm on. Here's the resource that was blocked and here's the rule that it, here's the rule of this list that it didn't abide by

So you can start collecting all these errors sort of proactively and not waiting for people to write to you saying, this video on this page isn't playing. You've already got that on your airlock and you can jump on and fix it. And this is super handy. Mike just told me about this this week

Yup. So there's HTTPS everywhere browser extension that EFF makes. If you're in your browser, it will try to redirect you tot secure version of a website. If you're using Chrome, it also has these dev tools that tells you which things in the page were blocked by it, or redirected. So this is another way for you to go sort of into the web page and see what's being loaded securely

And it's super handy because as we said, a lot of these scripts are hard to track down and this will go down and follow the links and tell you what's going on, which is really neat. If you use Akamais, and you end up with your host name and then if you tried to go to HTTPS://hostname. And the search result is really, a248.e.akamai.net. You can just stick the path the it end of it and most of the time that works. So if you haven't paid them for a certificate, you can use their certificate which is great. So these are some of the credits for some of the cool art that we have. Excellent. So what we'd love to do now is one, answer questions, and two, if anyone has problems that they're working on right now --

Who here is sort of in a position where they are either like the developer or the decision maker who's trying to make their website secure or, like, at least you've considered it or something like that?

Let's go around the room and say who you are and what site you're working on and if you don't want to tell us that's okay, too

I'm Joey of the Washington Post, we're about to go 100 percent HTTPS. And I don't want to say exact date but in the next few weeks

Some day

But the actual development build out of it. We're very close

That's awesome. Next?

My name is Luigi, and I work with Upworthy. We've actually been HTTPS since the beginning. But a lot of the problems that we have is around embedded content with third-party video providers that are not so popular. So Bright Cove and stuff like that. And also when we do ad pixels for clients, if they have or the own answer, that's not DoubleClick, we have to support it and that's just—and if it's not SSL, that's a problem. And we've also had problems with, kind of, our click stream, our custom click stream where we enabled HTTPS on it a couple of months couple months ago. That goes to our own custom data warehouse and when we enable SSL on it we actually dropped, like, 5% of our events and we can't figure out why, what browser was causing that and there was just a big headache of where that compatibility was, and so we had to go back to regular HTTP

Okay

I'm Mile, and I work at Twitter and a plug for SSL Labs so if you use that against your website, it will give you a grade and it will tell you what you're doing wrong and it can tell you what that thing is, and how to fix it

Yeah, we have this list of tools including SSL Labs. Right there and they give you a letter grade and you can go from F to A+

And it changes over time, you could have been an A plus in January, and you're a B now

You can check recently

So one thing we did recently was dropped our C first. And we had a lot of things that were backed up for data. So we had a lot of people that were not C4 compliant and we had to deal with that and each individual handset. And one thing that we're doing now mixed content will be a new issue for sha256, so even if you're a sha1 not mixed content, you'll throw a mixed content if you're sha1, so looking at your embedded content and throwing sha256

Chrome's already doing that now

One thing that's interesting is that you're such a huge provider that you have tens of millions of people calling your APIs and you probably don't know who everyone is. But for—but when you make that decision to turn up RC4, you have to, I guess put a lot more thought, or look at a lot more data than smaller people who are just like..

We actually looked at our logs and saw who was supported. And serving different search incomes. So you can just and sometimes we can just ship a cert chain. It could be just for an API purpose. When I was at Facebook we did the same thing. So we would just give a CRT that you would bind into your calls and say, that's the trusted chain and we just didn't have an way of changing or updating that chain when switching providers

My name is Cory, I work for Reveal, The Center of Investigative Reporting. Our new site is there. Most of our problems were around getting our S3 buckets set up and mixed content and stuff like that. But most of it was taking dots out of your names

Taking the what?

Taking the periods out of our subdomains, in S3. But we're mostly there. Cool

I'm Geoff from—the thing that's really driving it for us is our Twitter cards

Thank you Twitter!

Yeah, so Twitter forcing us to --

Mixed content talking about. So that's been a

That's how I got the ESPN video to work. They didn't listen to me, but they totally listened to you. Who else?

Scott, I work at Dow Jones, and marchago.com (phonetic). And we're just starting a new redesign of our home page now

Is that sounds like a great opportunity

So that's an opportunity where we can focus on the biggest part

I'm for BBR Boston, Forrest. I just really wanted to lock down WordPress logins but where we struggle is NPR content

Yeah, I work at the Marshall Project and we actually launched with TLS, we just submitted to TLS load and stuff like that which has great loads for information. But we have the same problem with NPR and other providers that don't support it. So I was interested to see the conversation on that

Excellent anyone else working on this? One of the things that's really good about HTTPS is that it also helps you defeat some censorship systems like some countries, which use naive Turing software actually won't understand HTTPS. So I mean, only the domain name is set and there'll they would be filtering the content rather than the domain name, so your website will start to work in countries where it's normally censored. And that's something we've experienced where I work

Penguin Daily News. And we've had HTTPS for admin purposes and we're trying to get the rest of the site compatible. The big thing for us is ads. And we use DFP which is great but none of the ad providers are HTTPS. They're all HTTP

So when I showed them the Akamai trick, we were able to solve two-thirds of the problems that we ran into. But they're so used to typing in HTTPS and we were the only people that asked them for this. So I'm hoping they would switch soon. Google made an announcement that starting the 30th they'll make an announcement. It looks like Mike gets a good report card. He was showing us a minute ago

I got it. I found it

I was going to say, bring your report card back up. Did you show your mom? Is she happy? There you go. Mike got an A, everyone. Good job

When are you turning on HSTS?

It will be a little while. We're not only yet HTTPS only. We're not only just redirecting all traffic to HTTPS. But I'm about to make the switch, too

And on the FiveThirtyEight side we're waiting on a few of the ad folks. As soon as they can guarantee it works, everything else is ready. Like, all of our own content is ready. Our database team made all the interactives work on HTTPS. As we've talked about, we've made all the analytics and all the A/B testing, all of that stuff works. So if you go to FiveThirtyEight.com right now with HTTPS you'll see the same things. Some of the ads might disappear. Yeah

Is that something that you can control in DoubleClick, like, only serve these ads, not HTTPS

I've never actually seen that side of the UI. So I don't know

So it's technically... I don't know how it all works it's somewhat a black box but it's sometimes not really DoubleClick's fault. It's the person providing the ad and that's the last thing that we're scrubbing right now. Because we can't get a guarantee but it's just that there would be no Adobe Digital Additions. It's not going to make anything or cause alerts. But for us, it means that we can't make any revenue off of something that was playing, obviously. But we're figuring that out with them now

Is there anybody here who's got a problem they're stuck on and they want to open up on their computer and help them with

What kind of strategies are there for metroing a bunch of old content

There's a bunch of things. One we talked about the request that's really handy. It's not 100 percent compatible yet but it saves you from going to pages and updating them. And the other is using a tool like mixed content scan and identifying where the problems are. We're just trying to do them one at a time. We wouldn't waste hours. But as you can either, find the tool to go through all of your content before or Mike had the reporting thing which is only in Chrome. Or you can—so you can again force the browser to try and create new things. But there isn't, like, a magic sort of wand that you can wave. I mean, if you have, if you're CMS and you write a script to look through your database and replace HTTP to HTTPS in all the places but there's no sort of you one way that works

So here's an example of what you would get if you turned on that content security policy log. It tells you you know, the document URI. The article that the person's reading. And then what object was blocked. Unfortunately, Chrome won't send you the whole URI if the whole domain isn't the same, including the protocol. So it just actually tells me that I had something on this article that was linking to ProPublica.org. Safari will actually tell me that this article will link to this specific image so you can actually, it helps a lot in terms of, like, finding and replacing a thing that caused that warning

One thing that you hear with this Amazon URL from S3, you can do the same kind of thing I did with Akamai, which is if you don't have a certificate, you can go to https://Amazon, and then slash

And you use the path version

You just use the path version of the URL and again, you can make your S3 stuff sort of just work and at some point, like sort of as a hack, you can do a string replace, like, in your CMS if you have this really large database that's not kind of manageable. So that's another example of where it's kind of—you've got it there

You guys are forcing them with HTTPS. What we did was a stepover approach where we have relatives

Protocol relatives

Because we can't name it because we work with NPR but if you want to force it

That's the same thing that we're doing

ProPublica is currently actually in that phase where you can hit our website via HTTP

Does anyone—or anyone want me to explain what a protocol route URL is?

You can explain it. Let me see if I can find an example

Normally URLs, you think of them as starting with http://, like this. But, you know, sometimes you put HTTPS, like Mike was showing you, you actually don't need this anymore. You can just start with the slash slash. And this has been supported for way longer than people have been using it. We've been using it for four years but browsers started using it a long time ago. But people just didn't use it. So if I'm on a HTTPS page, give me the HTTPS version. If I'm on a http page, give me the HTTP version. What this is most useful for is for iframes. Where if there's communication between the iframe and the parent, it has to match. That stops them from using. Normally it's best to use HTTPS URLs for everything so even if you have an HTTP page if you can load your Javascript over HTTPS, or some of your images over HTTPS, that's still a good thing to do because at least you're insuring nourishing the integrity of those requests even if the overall page itself isn't protected

We're starting to switch over to that now

Let me tell you, the protocolless URLs don't work with email clients so if you get lazy and you are, like, writing a template for something that you can just do that

They also don't work locally, either

Yeah, so if you have—that will not work—if you have a file URL if you're opening up a file in your browser and you see a file, colon, slash, slash, slash. It will try to do a file URL and that will totally not work and you can spend a few minutes chasing that one down

Someone needs to make a browser extension to handle that

All right. Any volunteers? You can maybe put that into Dev Tools or something. We have this document put together. And you'll just scroll through a little bit here. So we talk a little bit about what HTTP does. So HTTP is deprecated. Both Chrome and Mozilla said we're going to stop supporting this. We're going to start flagging this insecure in a couple years and we're going to—Mozilla said, we'll bring content for HTTPS sites only. And Brian Miller who works for the government he was one of the people who helped mandate HTTPS and wrote this nice little essay on it. This is where we talked about buying certificates from. These are different things that we talked about certificate types. SNI. Renewing, HSTS, we talked about the cryptographic hashes. We talked about how you can generate server configurations so you don't have to generate that by hand

I'll show this one off. Slowly. Slowly. Conference Wi-Fi

Yeah, make the font a little bit bigger. So you can pick all kinds of things. H, open, SSL

So just enter in what you have. What server, what version of that do you have? What version of SSL do you have? And it will give you the appropriate, sort of, best practice, sort of most secure with what you have configuration. So if you have an ancient version of Apache, it will probably generate some..

If you click, and watch as you change... wow they even have the tag. Click the older modern things that you can see you can see that stuff change on you

Yeah, this option. Old, modern, intermediate basically changes what browsers you need support on your website

And old is insecure, so I wouldn't use it

So you really shouldn't use it unless you're stacked with

Isn't DH deprecated, too?

DH is fine as long as you actually update the params. In particular it's not turning off the old one is it turning off SSL3? Under and it also keeps a bunch of ciphers that are still not—that are ultimately insecure. I think it's also recommending sha1 as well

Yeah, so that's if you have, like, weird people with IE6 and stuff that you can't fix. So click on modern. There you go

Right

Yeah, so this is super handy. It generates all kinds of stuff. And the SSL make config will not only do your web servers but also your email clients and so on. So go back to the document real quick. Scroll. That's cool, too. You can see more stuff. We talk about content. We talk about so many things that work, things that don't work. Ads. This is the blog posts where Google commits to HTTPS. The IEB call to action. This is a good resource for people in your organization who need to be convinced. And if Google says you need to be able to don't it to do it, you can go back to your ad team and say, your ad overload suggestion, we should listen to them.

And your font, A/B testing providers, protocol-relative URLs, we talk about passive versus active content so what'll get a warning, and what will get blocked. We talked about different CDN's. We mentioned the mixed content scan. HTTPS everywhere Chrome extension. They have what's called an Atlas which is a list of all providers and and what their HTTPS equivalents are under the hood. There's SSL Labs. There's a site called shaaaaaaaaaaaaa.com and this will tell you if it's using sha1 or sha2, which is super handy and we talked about the content security policy. Stuff about costs. Stuff about performance. Oh, someone found a typo, excellent. Thanks, Daniel. And Netflix decided—they told, like, you're going to be like, we're never going to move to HTTPS. It will cost way too much money. We are, like, the third of the Internet. Forget it. And then they sent someone smarter than me, and they rewrote part of the Linux kernel and it's like now, it workings. It's great. So now you don't not need to rewrite the Linux kernel because they did that for you. Awesome, yes! Huzzah! So you can go back to the—did you have sha open? I really want someone who's stuck to help you. So we can, you know, sit down at your table

Does anybody have any particular pain points that you want us to talk about?

If you have a page that you're stuck on we can look at it, whatever

I think NPR's issue is the cost for CDN for audio assets. I don't have this problem, but—I don't have --

Images as well

A lot of stuff the solution is to switch vendors

I think that's part of it. I don't know how much—in doing researching, in doing research for this talk I wanted to see how much Akamai charges, from my understanding, they're way, way expensive and that's part of the problem. Fastly, it looks like they no longer charge a premium for that. CloudFlare doesn't charge a premium up front which is the Amazon one. It charges a third more. So even some of the big providers like CloudFlare and Fastly won't charge you extra. Or maybe they're locked into this long contract and they just can't. But I don't know, shop around. I think Fastly used to charge and in the past couple months it changed the policy

If you do use Akamai, someone from Akamai, specifically said, HTTPS is a relatively cheap way to get good but not perfect privacy it's not that expensive for what you get out of it. So just forward them that

So that is like someone in the business development side is—or whoever handles your contracts. But yeah, it's great to start working on this now because in a year or two when the browsers start flashing red warnings for just an HTTP site, you don't want to just fix it all the week before the next version of the Chrome autoupdate comes out and you also have angry people. So do this now. Start today. Start yesterday. And be ahead of the game

And just try to reach out to—have you tried to reach out to NPR?

I was emailing this guy from NPR a while ago. He asked some questions. He said you guys are great. I totally want to help you

What's the name of the guy?

His name is Jonathan Upsteen. He's not here or else I would try to buy him beers or whatever to fix it sooner. Or whatever he wants. But yeah, I'm a big fan. I'm not trying to bash them

It sounds like everybody wants this

We totally want --

If I can't facilitate that then I want to help

So if they need—if they want anyone to come there and help them, I will type things into their computer, do whatever you need

As far as we were told, it's strictly a money thing

Just get on the pledge drive. Say hi, this is Peter Segal, we would like to—please give me money

Rat out all your friends for not using SSL like they ratted out people who don't pledge, you have to rat out people who don't SSL. Somehow it's your job to get it on the radio

Find someone on the news team to cover a story about HTTPS being deprecated and then forward that to, like, someone to the director, and then they're like our own site isn't compliant. We're going to be turned off by the Internet

So this is not a concrete problem but I'm just interested more in the pace of how quickly the deprecation is actually going to happen

Years

So there seems to be some barriers still

Yeah. I think the idea isn't that—they don't even have a timeframe for depricating HTTP

But they say they're not—new features and browsers won't support HTTP

That's Mozilla yeah. Newer things in HTML, newer things in CSS

Not even ten

What they have announced is the sha1 deprecation timeframe. So right now if you go into Chrome today, and there's a sha1 certificate and it expires this year, you will get a yellow warning triangle. If it expires in 2017 you get a red line through it. It doesn't give you the, "Whoa this site is insecure, are you sure you want to proceed?" Whatever. But it gives you a little red warning and the links to those timetables are in the document. Yeah

So the bigger problem seems to be there's a certain number of people online who know how to buy a domain and point it at something but there's a very smaller portion of those people who know anything about certificates at all

Yeah, and we were talking about this earlier, if you're just a person with a personal blog, it shouldn't really be up to you to learn about this. You should learn about your CMS and how do you post an made the gif of cats and not—you shouldn't be configuring servers. And so, having big providers—like, one of the things that WordPress did, right, if you have something.wordpress.com, you get HTTPS already. And you didn't have to make people opt into it. You didn't have to tell them what cipher suite you need. It just kind of worked. So that's the right thing to do. And that's also something that happens with Let's Encrypt where it's free, and so having this become sort of automatic and free, and built in, as opposed to having to opt in every site. That worked for the first million sites. It's not going to work for the next 98 million or whatever

It seems like the automatic part is just as important as the free part

Even if it's just a dollar. The automatic --

A lot of shared companies make absolutely a ton of money on certs, and there are a lot of it that are public companies. So a lot of this will happen in building pressure. Let's Encrypt comes in September will help. And another thing is, you mentioned how fast things were moving. There was one week a few weeks ago, where Reddit, the federal government, all announced HTTPS all at once. And a lot of those actually were influenced by each other

Yeah

Um..

And the same thing about the Wikipedia one. Their problem was not a technical problem. Like, they had the server stuff sorted and even the mixed content stuff sorted. So it was a community discussion of like, are we leaving anybody out? We're Wikipedia. We want to be super universal. Is there somebody with a phone in a developing country that we're going to block by doing this versus how much more privacy are we guaranteeing everyone else by doing this? So it took them a long time to sort that out

For companies and services that support, like, user content like contents and whatever that have images in them, do you have to, like, proxy those, or just reject things that link out to non-https sites?

Yeah, that's an interesting question. Like Gmail, one of the things is they proxy. Gmail images are all now transparently HTTPS. So the content—so that's something that I think the content provider should fix at their level. It doesn't make sense for any HTTPS site to do that. And I haven't talked to any folks from Discus. Or—is there anyone from Livefire?

I wanted to comment on that. GitHub has this problem because GitHub is all SSL, TLS, and they have issues where people can upload their cat gifs or just send a link to the cat gifs and the cat gifs will show up on the issue. And so they have actually an image proxy called Camo. That's open source

Can you spell that?

CAMO. So it's github.com/atmos/camo. So they solve this for --

So we should add that

So they solve this for images. It's a little server that proxies images. I've thought about if that can be done for Javascript for, like, ad servers

Mm-hmm

That seems weird and definitely weird for audio and video

Well, it would seem more weird for Javascript because you don't know what's going on with Javascript. You don't want to run that off your domain because someone might come steal your cookies

What terminator are you using for your SSL?

So our SSL is all controlled by the these lovely folks here. Since we're WordPress VIP, I don't control that structure

Pro pub can a's main website, www.propublica.org are all served via Fastly. So we're using them all that stuff

As well as static content

Everything on orbitz.com is all served by --

And the proxy thing is sort of an interesting strategy as sort of a last resort

We tried to because we tried to turn ours on and tried to do NPR content and it ended up severely impacting performance. Yeah

Does anything have to do with APIs?

We talked a little bit about that earlier

We've published a few APIs just based on news apps. We have these databases projects where you can query on the website and look at your stuff but you also allow access via an API that we built. And we've had people, sort of, ask us to—configure the H parameter up to something insanely high that doesn't allow old versions of Java to access our website and I had sort of a back and forth with someone who was using our API. So it's a very interesting space to be in

When I wrote an API for turboboat, a few years ago, there wasn't even an on the to do it the another way. So that's the other thing. If you have your own APIs, make sure that they will support HTTPS and they should be—and if you're building new one, you should start today on HTTPS. You have authentication. You've got all kinds of stuff. And that seems like a really important thing to be doing securely

So I can offer a resource for that possibly. If you are doing—if you need to migrate an API, it's a lot different than migrating a website. You don't want to let's say, do redirects or something like that. So when the federal government made this, like, big push one of the things that we did was wrote up a set of guidelines and specifically we couldn't find anywhere else on the Internet that documented how to do this well, and so we wrote one

Excellent

I can say the URL

Yeah, Mike can you type it in?

Sure

So https.cio.gov/apis

So the whole https.cio.gov site is helpful

How many..

We'll add that to the document. Yeah. So any particular thing that you want to highlight from here?

Um, the main one is probably, just the—it's not something that you should simply redirect depending on your API because you're very likely to just break everyone that's using it and you might have to announce deprecation like Twitter was doing. And in this document there's practices as well. But there are a lot of other finicky things that you might want to know

And another thing about APIs that are different from web browsers are things like SNI support. Like I had Python and it didn't work, and I had to install some extra library for some reason and this was on a reason running 10.10. It was running new stuff. So you're more likely to get some weird client than you are—as an API content than as a reader

And some servers don't support communication over TLS, so you can check if it doesn't and you can tell the end user about that. So this API call failed because it's your server's futility; not our fault

Only 95% of self-hosted WordPress sites have open SSL on their server so that doesn't help when it comes no communication. And that 5% is still a big number. So..

Do you guys have the .org stats back on who the hosts are? So you can tell who—them to fucking hurry up

There's a call within WordPress that you can test for HTTPS support and you can relay a message if it doesn't support it. So you can admin notice saying, I didn't turn on this feature I can't do it

But that long tail is ultimately way longer than user customizations. Hopefully everyone here is on a server that has basic stuff along those lines

And somebody is managing and updating it regularly. Like, the open SSL library seems to get updated every three weeks for some new patch. They find a new vulnerability and say, don't use IRC 4, don't use this stuff. So keeping up to date with whatever SSL allows, and Mozilla folks say, whoever the SSL main folks say this is the current recommendation, recommended configuration because as I said, if you run SSL Labs, and it gives you an A, it will not be that six months from now. There's going to be change

And you might have to understand your certs across your organization. So like in Twitter weed periscope.tb. So if you didn't have an understanding of how many domains that you run, or how many fully qualified domains that you're running, this sha upgrade is a good way to figure out. And with each of those, with the outreach, you can figure out who has who can go now and who has to wait and because of that if you can't move now, the warnings will only trigger based on the expiration dates. You can always set a shorter expiration date. That can help you out. There's just kind of multiple ways to stage it and figure out where you want together

So if you have sha1 in 2015, you can make it expire sooner. but in this case, it makes weird sense to have a shorter expiry window

We're working on it

See, every time I click on a link

So the other thing that you can do and this came up in the conversation for us, is you can look in your log to see what percentage of this is going to fail if you do this, so the Windows XP P, and the—so if someone says this will break something, you can quantify what that something is

So one of the things a lot security reasons, we developed to propietr9. You're readers, you probably have more than 1% on 99. But we were comfortable that that was a small enough number for us

You're talking about design wise, right? Not TLS

We did this for a totally different reason that we stopped. It wasn't part of our supported test cases. But having to locate your analytics on a regular basis matters. Android 2.3, if you have a bunch of Android 2.3, they have a bunch of problems with SNI, do they have sha support, or is it just SNI that's broken? So you have to check. There'll always be somebody using a weird browser. So you want to make a firm decision about what your decision is so you don't have to make an ad hoc decision every time. I have a posse to support more than an x number of users in the database

What kind of benchmarks of timeline should you use to go from HTTPS only to enabling HSTS because it seems like the sort of thing that once you're there, you might as well do it but you also are kind of burning your boats

Once you switch, you can't go back. Once you've crossed a certain threshold you can't go back

You can but not easily

Well, it depends on the age of your HSTS

I guess I'm just sort of wondering like what could go wrong, like, once it sort of seems to be working

Well, for instance Google started search results started coming in as HTTPS for a time. And there's no way for us to back that out currently

That's a good thing to mention. Google Webmaster Central if you have an account there you need to make a separate site entry for the HTTPS version of your site. You do. It's weird. So you need one for www, one for without the www, one for HTTPS so you can end up with a bunch of entries all for the same site. Which I would argue is a bug. But that's just the way it is. And for now, so make sure when you do, and you might end up with a different, you know, unique set ID which you put through the verification process again. But when you're switching that, that's something else. You should write that down

And set your canonicals to one scheme or another

So the real tag is canonical

Or the other HTTP. However you do it

But getting back to your point. It's just like depricating support for anything. Even if the HTTPS is your default, the day you decide that you're doing HSTS is the day that you look at your analytics and you're sure that there's no reason that you would ever go back, right? It's sort of a moving target. It's probably a different target for everyone

So even if you're forcing HTTPS, there are some subtle differences between that and HSTS that could cause things to break. Like, form that gets redirected somewhere else. Like, things could actually go wrong. These are really rare and you're not little to find them, nor is it, like, easy to identify a pattern of them. But what I would suggest turning on HSTS for ten minutes, max age. And then if you haven't had any problems for two or three, bump it you mean. And if you don't have problems for a few weeks, kick it up to a year. If you need to go back, set max age to zero. And even if you have this catastrophic issue, max age zero will kill it for any clients that kill it

So any clients that caught the year

Well, you're already forcing HTTPS anyway. So like the site ideally works over HTTPS so if you set it back to zero and then go to that site again then the header will immediately will dropped and then whatever they were trying to do will start working if we know

And once you're on the preload list, that would be, that's even harder

But at that point, you're already max age year and you're never going back

That's an accident. So I really like Andrew's point by testing it get you gradually increasing the max age, we should write that down. What was the other thing? The webmaster central thing. Had

The other thing thing too about preloading is that it has to include all subdomains and a lot of people might not think about that especially if you have a random subdomain that's a c name to some other service like a follow up, or something that you don't control and you forget that you have, like, 20 subdomains that your business department has added over the years. They all have to be HTTPS in order for Chrome to put it in the preload list

So in that header, there's an include subdomain option and preload requires that flag

And that has to be admitted from the apex, not www

The other thing about search and this is—I didn't even write down but someone mentioned that they had multiple dots in the Amazon bin. So if you have wildcard it will go to *.FiveThirtyEight.com. So www.projects, whatever. But if you have something like beta.projects, it would not work. You have to get a second certificate of a star dot beta. So if you have multiple levels of subdomains...—it might not work for you

S3.amazon

There we go. So there. Sweet. Because we have a bucket called cdn.pro pub can a.net and the problem is there you only have a single wildcard, so CDN, Amazon.com so an alternative is to use the path name version. So I'm going to do s3.amazonaws.com. And I'm blanking. That's not working for some reason. What did I do? I don't know

Anyway. Yeah

You're writing to some directory

I think it's the ups

What's the workflow for generating a self-signed cert for a local developer?

You use the OpenSSL command line tool. Does Erik have stuff on that material?

He should

So there's—so one of the things to watch out for is a lot of the tutorials are super old and if you have a super old tutorial and a super old version of SSL, you'll get a sha1 cert, and you don't want that. If you have a Mac, you can drag yourself into a keychain. There's probably a Windows equivalent but I don't know what that is. They generally don't take self-cert because then your browser will start treating those as valid

That was the camo thing

That's the animated under the sea thing. But yeah. Okay. So... that sounds like the majority of the questions. We'll stick around and answer more questions. And if there are people who weren't in this room and want to ask, like, flag either of any time throughout the rest of the conference and I'm happy to sit down in front of a computer and answer questions

We're both very reachable on the Internet

Especially talk about this, if this helps with a news website, go to HTTPS even if it's a Sunday afternoon I'll totally talk about work. Okay?

Cool

Thanks, everybody. 

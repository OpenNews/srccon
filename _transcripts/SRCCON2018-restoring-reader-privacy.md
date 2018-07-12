---
---

# Session Transcript:<br>Restoring our reader's privacy in a time of none

### Session facilitator(s): Michael Donohoe, Matt Dennewitz

### Day & Time: Friday, 11:45am-1pm

### Room: Johnson

MICHAEL: So, do we need microphones or are we okay?

AUDIENCE: I can hear you personally.

AUDIENCE: You're okay.

MATT: In the back.

MICHAEL: Okay, we'll use mics.

AUDIENCE: That's even worse.

MICHAEL: All right.

MATT: Hi.  I'm Matt.  We need one more moment. 

MICHAEL: Go for it.

MATT: All right.  Hi, everybody.

MICHAEL: Just use this.

MATT: I'm Matt, this is Michael, we're here to talk about restoring privacies for our users.  And we are here to talk about tech and secure our user's data.

AUDIENCE: I have a question, what is the trustee's privacy security stance.  Is this sponsored.

MICHAEL: It's so you know the slides are safe and these are not actively collecting your information while you are present at this talk.

AUDIENCE: I was not given a consent.

MICHAEL: We're not in Europe anymore.

[ Laughter ]

AUDIENCE: I was told there would be cookies.

MICHAEL: I was told there would be M & Ms.  But while we're waiting, we're going to pivot to a different talk that is much more interesting.  So, starting over a little bit.  Hi, I'm Michael.  This is Matt.

AUDIENCE: Is that mic on?  I don't think that mic is on.

MICHAEL: Okay.  Okay.  Part of this is well, so we're going to cover a couple different themes here.  One of the main takeaways is this really isn't about your user privacy for the most part.  This is going to get into the heart of the fact that a lot of the people here actually have an impact that can reach either thousands or tens of thousands or millions of people in terms of like what you produce and have the content that kind of goes through your fingers.  We want to actually show you that you can actually have a disproportionate impact on user privacy.

MATT: Tell them how we're going to do it.

MICHAEL: How are we going to do it, Matt?

MATT: We're going through the slides and a couple different websites and then some to show how generally tracking is done around the web.

We built an audit tool that takes a blacklist and pairs them with domains.  And then we use Light House to audit several different sites that Michael has identified.  Spoiler.  To pull out, he's seeing what tracking tech, how many domains are being called up.  Introduce yourself?

MICHAEL: I did.  We got to do it twice now.  But okay.  So, a lot of you actually know a lot about this and you probably know a lot of these things.  But do you know like, say, let's get some kind of basics down.  You know how your browser is leaking information about you.  Do people want to either talk or put up your hands in ways you know information that sorry, can you give me examples of information that your browser is telling about you every time you visit a website?  All right.  One in the back.

AUDIENCE: So, a user builds their operating system.  The browser headers include your whether or not you have flash installed, others you have installed.  Whether or not you're allowing certain content types.  And leak whether or not you're using Java script.  And that can leak fonts that you have on your computer.  Should I keep going.

MICHAEL: You just gave away all of the answers.

AUDIENCE: Like with patterns.

AUDIENCE: What language you speak.

MICHAEL: Yep.  Time zones.  And these things in themselves can be pieced together to actually provide like a larger profile.

AUDIENCE: Third party cookies.

MICHAEL: Third party cookies.  Yes.  Everywhere you have been before.  We're going dig into that a little bit as well.  Matt, did leave anything out?

MATT: More esoteric.  Like if you clicked a link.

MICHAEL: I think they protect against that.  The CSS thing.  When you visited sites by default the link color changed.  Sites loaded a whole host of links out of view and then the detects the color to see where you actually visited so that way it could get the top 500 of Alexa sites and quickly assess where you have been before and use that to kind of profile and track you.

So, yeah.  I don't think we collectively missed anything that was on this list.  And this doesn't get into like the personalization stuff.  So, if you are on Facebook and you have an account there.  Obviously that information is kind of persisting.

MATT: Next question.  What are some of the ways in which your browser history is recorded as you move around the web?

MICHAEL: Any takers?

AUDIENCE: So, if you get an email that has a pixel, you will be tracked across the email and then any site that you visit after that also has that.  So, like, your emails aren't even safe at that point.

MICHAEL: Yep.

MATT: What else?

AUDIENCE: Search history.  It can be related to after you search for something.

MICHAEL: Yep.

AUDIENCE: Third party ad trackers are maintaining their own record of everywhere you visited with the pixels on the sites.

MICHAEL: And if you try to get rid of them, they try to resubstitute it, e tags to cookies to local storage.  Super cookies.  They still a thing?

MATT: Yeah, they are.

MICHAEL: Okay. 

MATT: Yeah.  Social buttons, commenting services.

MICHAEL: If you're commenting, discuss for commenting on your site.  Those things are tracking everyone that records all the fun stuff.  It's kind of interesting.  Like, you know, a total disclaim or non disclaimer.  Like where I work we are looking at Spot IM for commenting.  If you go to the website and they're quite up front.  Like they talk about they reach 500 million people per month.  And from a marketing perspective and from the data perspective what that reach is.  But when you are installing it, you're really thinking about your user experience and commenting and moderation.

But not, you know, you can't forget that by having this scattered across so many different domains that as people travel they are going to end up kind of being recorded.  Profiled.

MATT: From the moment you get online, you are being tracked to some degree.

MICHAEL: How many people use shared CDNs for a website?  jQuery hosted?  And these services are in many respects free.  They are doing it as partly public service to actually have from a web page performance that everyone is using the same version of jQuery on the CDN that's cashed into the browser.  But every time that gets loaded, they know and see where the users are.  Exposing your user base to their CDN.  A lot of CDNs will just use that information just for the purpose of being CDNs.  Not to pick on Cloud Flare, we use that and a couple others.

We'll use that information as a way of tracking people across the web.  I want to get at we know there's lots of ways that tracking is happening.  And we're realistic about that.  But there are things under the hood that aren't the obvious ways that people are being tracked.

we're going to explore a few ways of how that happens and also kind of a few ways to mitigate that.  Okay, so the idea here is impact.  Again, how many people are developers here?  All right.  How many people would be more let's say editorial content side?  Is it fair to say in your work you deal with a lot of embedded content?  Your custom JavaScript might be an article?  This is exactly the audience.  The notion in terms of impact that I wanted to instill.  Single journalist.  You create an article.  Let's say it's tagged.  These things happen.  You do that naturally for many reasons.  You have a taxonomy you may follow or key words that are just editorial process where you would do that.

You would have embedded sorry, you have embedded player, an embedded widget.  It's a third party tool.  You use it a lot.  You love it.  And you reach about 10,000 let's say unique page views in the first month that the article runs.  Maybe you have much further reach, maybe you have much lower.  I just kind of made up the numbers.

Our experience has been that a lot of embedded content will actually load some other trackers.  Typically they load analytics which is totally fair.  They want to know what reach they have, where they're at.  But a lot of them load additional things.  Some of them may be benign.  But in our experience, not everything has been.  Again, we're going through a few examples, but let's say it's loading three different kind of tracking pixels.  That's 30,000 requests in the lifetime of this one month of an article that is kind of your user's information is being recorded somewhere in ways you probably don't know.  In ways that probably wouldn't be clear from their privacy policy.

Likewise, if you were a developer, you could actually do things much further.  So, if you are building things out on the template level, there are ways that you could like if you just go with the default thing of how many people are familiar with WordPress short codes, for example?  Okay.  I'm totally not picking on WordPress at all.  Just using this as an example.  If you let's say drop the YouTube URL into your document, a lot of WordPress templates will just take that, use it as a short code and transform it into the YouTube embed.  You're not copying and pasting that markup.

By default YouTube is collecting information once that embedded player is on the page.  As the page loads, the embedded video is there.  Whether you use it or not.  Its very presence and the requests it makes back to the Google mothership basically are dropping cookies or dropping other kinds of things we're collecting.  There are small ways which, again, I keep saying it's coming up, where making minor changes could actually have an impact by dropping let's say 30 million requests over the course of a year's worth of site traffic down to zero for some of your users.

MATT: And I want to say that every time you're not tracking something, you're not just tracking the user that's there.  You're tracking specific actions that can be tracked back later.  But with the baseline, that's the best.

MICHAEL: So, we actually are going to show you a couple of these.  Actually you know what? The Tableau one might be the most interesting.  How many people here use Tableau?  Okay.  Do either of you want to stand up and explain what Tableau is really good for.

AUDIENCE: Digitalizing as a front on top of data and Linux.

MICHAEL: It's fun inter graphic stuff.  They also do a lot of data and how you present that.  But if you were to open up the network tab and we'll do an exercise on this as well and see what loads in this one particular example.  Maybe if you could actually increase the no, the size of this.

MATT: You want this up?

MICHAEL: Yep.  And I love the network tab.  The network tab tells you so much.  I don't know how long people have been in development for, but before there was nothing like this. You had to do like FireBug in a bookmark mode to actually get anything.  This is all the usual things you would expect.  Images and icons.  That's jQuery.  I love jQuery.  It has 'analytics.js'.

MATT: Looks like GTM [Google Tag Manager].

AUDIENCE: They're using Google Analytics which is great.  But there's other things that are happening.  Oh.  Mentioning stuff with Twitter.

MATT: More Google Analytics.

MICHAEL: Keep scrolling.  I kind of know what I'm looking for.  We could also filter here. But basically did I miss it?

MATT: What are you looking for?

MICHAEL: Yes, there's a Facebook pixel.  There is also did you spot the other two?  There's a Twitter pixel.  There's also LinkedIn.  This is a data visualization.  You have LinkedIn, Facebook, Twitter.  And also if you look at some of the domains, I don't know again.  Could you filter for, let's say, LinkedIn?  L i n k?  Oh, you know what?  It's not loading this time.  This demo.

AUDIENCE: This is LinkedIn.  Yeah.

MICHAEL: Okay.  Sorry.  The big text right above me.

[ Laughter ]

So and you see all this stuff that it is sending.  Some of this could be really benign.  But you probably didn't know all these things were loading on your page.  And Tableau is just one example.  Again, I'm not calling out any provider.  I am certainly guilty of things myself.  There's the NPR play, for example, drops the number of cookies and loads a number of different things.  Again, this could be very innocent like there is an ads component to the podcast player, for example.  It's playing, I didn't get a pre roll on it.  Again, that does happen.

And so, on the most innocent level, they want to know more about the audience to monetize this later so they would have the segments built up.  By virtue of embedding this on your page, and as a New Yorker, you would be embedding these and we are exposing "The New Yorker" audience via NPR to embed and all sorts of other things.  In many ways that's intentional and that's benign.  But it's not immediately obvious to a lot of us these things are happening under the hood unless we look.

So, how many people actually dig into the network tab just for fun?  Yes!  Okay.  My favorite thing to do because I have a wonderful, fulfilling life, is to do this on incognito mode and look at the cookies and look at local storage and see how that stuff adds up.  There's 18 different entries on the cookie level.  There's local storage is kind of like, why does it need to store 500 kilobytes of this useless data?

It's always the ones you least suspect.  The Facebook player is doing everything you expect it to do.  It is Facebook.  If they have cookied you, they know whatever site you were on.  They know that you were there.  They probably know whether you played this or not.  They're probably saying, oh, they played this.  They're interested in this other metadata that's associated with the video.  We'll make sure to use that information when they see something on our site or on one of our properties.  Or that, like, by virtue of the person visiting the site that might actually indicate that they are, you know, of socioeconomic status or health or other, you know, other things about you that might kind of get pulled back into your profile as part of the decision making matrix they do to serve you.

So, we actually just did this.  Matt, am I missing anything?

MATT: No, I don't think so.  So, the other thing we did was consider just picking on the embeds.  We took a look at several people out in the journalism space.

MICHAEL: Matt was working on this tool yesterday and we kind of put in our own properties that we have worked on currently or before.  And we did our best to put like human readable names to some of the ad networks, tech, analytics.  The analytics we're less worried about in terms of people need to know what's happening on the site.  But what we found, I don't know if I'm jumping ahead in the slides.  So stop me.  Over the course of about 507 different sites you see the same players coming up again and again.  There's Facebook pixels, the same ad networks.  You know, it's the same like four or five and that to me is kind of like even scarier.

That means for all your browsing history, for everything you do on a daily basis, odds are you're always loading something from one of these sites.  Which means that the record of your footprint across the web exists in multiple places.  And there's probably a lot of decision trees happening in terms of making decisions and assumptions about you based on all these things you visit.  And, again, some of these things exist on all pages through ads.  Some of them are the ones we put there ourselves benignly.  If you don't have the Facebook video embed, you still may have Facebook buttons on the site level.

Did you want to dig into the analysis?

MATT: No, the biggest takeaway is the frightening number of domains that are called and loading trackers that load other trackers and amplifies quickly.  From Conde Nast, we're as guilty as everybody.  But the other frightening thing about this, this is only calling out the handful that we identified.  There's so much other stuff being tracked that is not in the report yet.  But we will   

MICHAEL: This came up as a way of demonstrating things.  We should make something of this. Privacy badger does a good job and a few others too that we stumbled on along the way.

MATT: More on that later.  If anyone wants to keep an eye on that or show that to somebody else, that's the URL, it's also on the slides.  We'll move on.  So, a couple ways to actually push back are tools that the browser gives us.  One of them is simply just blocking referrers.  Open logs, they show up when you need them.  Suffocating that is a good way of protecting people.  Think like even React timing and other JavaScript based tooling will calling out when you haven't used data refer tag just for safety.  But there are other ways outside of the tag to block that.  You can set it site wide, meta tag.  Or if you want to load scripts without meta refers, that's a good idea.  It's anonymous.  And you can't get rid of the origin header that's always sent.  That's a technological requirement.

MICHAEL: How many knew this existed?  One, two, three, four how many of you actually have this on your sites?  Okay.  No one.

AUDIENCE: What does this do?

MICHAEL: Basically as you go from one site to another, this kind of blocks some of the refer information that would go across.  Not all of it, but certainly kind of stops with the data.  I would stress here that what we're going to be talking about with this and a few other examples, we're not going to solve the problem of user privacy.  Like there's no silver bullet.  But I like to think of it as a series of paper cuts, right?

We can actually like inflict little bits of annoyance across and hopefully build on that.  And, again, if you were able to if you have a site that reaches 20 million uniques per month and you as a developer can just add that to the head of the global template.  Like, that's a huge paper cut.  That's a paper cut right between two fingers.  Those ones are the worst.  Not to get gory, but with enough paper cuts, you bleed to death.  We can make substantial small but incremental pushback against, you know, just kind of shortchanging our readership.  Okay.  So, I'm to the going to go through like a hundred of these.

But how many of you know that you can actually serve YouTube videos from a domain.  I'm not just going to focus all on the developers.  But if you as a developer, you have a WordPress site, you have a certain reach.  You have the default intelligence for short codes.  Editor drops in the YouTube URL and the markup.  You as a developer goes into the short code and override, just use in domain.  This is not a Google hacking, this is a Google owned domain.

They say when you load the embedded player, we'll do it, but we won't track the user unless they hit play.  So, again, they'll still track the user if they intend to engage them, but you're not going to throw away that data by default.  And, again, how long is that going to take a developer to do?  QA and code review aside, that's probably a 15 minute change.  That's a very safe thing to do in the scheme of things.  If you want to go further, like the other kind of offender would be well, less so.  So, Twitter has a do not track meta tag.  How they dole with that has kind of lessened over the last year.  But, like the refer policy, if you drop that in the head of the documents or the template that is site-wide, basically Twitter endeavors not to use information it gathers for personalization.  I don't know how many people here use Twitter.  I don't know how many people like or dislike how they try to personalize your feed.  I'm more on the reverse myself.  But this is, again, a very small thing that's probably a five minute change on a template level.  I'm being very optimistic here.  Yeah.  It can have that effect.

If you want to go further on the editorial side, there is also a data attribute that you could use in your embed.  If you're taking the default Twitter embed codes and copy and pasting across, you can then really from the do not track data attribute.  Again, if you are I'm going back to WordPress.  If you have control over WordPress short codes and how they re render Tweets, that's a small modification on the template level.  All the embedded content, YouTube, Twitter, and we'll get to Facebook in a minute, is it's giving away a little less about your readership.

And this one is my favorite.  Because Facebook is everywhere.  But do you know that like YouTube or Twitter, they actually do have a more restricted way of they have a way for you to tell them not to collect so much information.  And anyone familiar with? 

There is laws that say that these companies should not be collecting information about children and minors.  It has been there for a long time.  It's really hard to enforce because it's like, people share computers, they share devices.  There are very clear distinctions on some sites that have age dates because it's alcohol related or it's specifically for children like the Sesame Street site.

But they have this really great kid directed site.  You can use JavaScript SDK from Facebook.  And I would say that you should read the documentation.  They technically say that even if you're not a kid directed site, but you could have children coming to your site, they would encourage you or they would provide this method for you to make sure that less information is being collected.  Now, my daughter's 10 years old.  She uses my computer and she goes to the "New York Times" website.  "New York Times" is not doing this.  Again, I'm not picking on anyone.

But they could.  They could actually apply this on existing embed codes on a template level or however it's implemented.  And it could vastly reduce the amount of information that Facebook is getting by virtue of being present.  And I think that they would have, like, if Facebook tried to reason, hey, why are you doing this?  There is legitimate kinds of arguments within Facebook's own documentation that they should do that.

I don't know if there's any monitory consequence of doing this.  I would urge you to just kind of think about that a little bit further before you actually do it.  But the point I would say is, up until about six months ago, I didn't know this was possible.  Twitter, YouTube, Facebook, others.  They all have this kind of like, you know, in the deep end of the documentation.  Like actually there's more of a privacy friendly one you can use instead.

And the takeaway here that I'm trying to give you all is that if you're doing something, like, read the documentation.  Like, there may actually u, you know, as part of your process just check to see is there a way to signal that this thing should collect less information?  Sometimes it exists.  Sometimes it does not.  But we're not doing that.  It's not a habit that we have.  We're not used to it.

But that stuff has been sitting out there for years.  I haven't found one site, other than like actually kid focused sites that actually work with that.

MATT: Sometimes we get asked as developers to drop pixels on pages.  We're all moving to tag managers, which are definitely an efficiency.  But that takes the auditing power out of our hands.  So, we thought it would be nice to come up with some questions that you can ask in return.

MICHAEL: Yeah, so this might be a little bit more developer, but have you been asked to add that one line of JavaScript to the page.  Show of hands?  What did you say in response?  Did anyone have the perfect comeback?

AUDIENCE: It's already there.

[ Laughter ]

MICHAEL: I have seen sites I'm not naming, places I've worked.  We have had things, that exact same request, and it wasn't turned on for years.  Anyone else have some good kind of pushback against adding all this stuff to your page?

AUDIENCE: My team does speed assessments.  So, we measure the impact that any tracking tech has on our page.  And if it's significant, we'll push back with the people who are who requested it or the organization or the company that maintains it.

MATT: Now, is performance a shortcut to note, or is that just one qualification you have before adding?

AUDIENCE: That's one.  We have other things we do.  What it tracks and how.  We try to figure out what impact overall.  If it's leaking data.  We have a lot of so, people who don't know me, I work on the ad tech side of the Washington Post.  And like one of the concerns as well is about data leakage.  Which is trying to prevent situations where whole organizations will just perform header fitting on our site for the purpose of collecting data about our users with no intent to ever put an ad.

And sometimes they will try and push in and have us add tracking codes or particular tracking script or a pixel.  Which is really just another name for a tracking code that somehow I don't know why people call it a pixel.  Because historically.

MATT: Is everyone in the room familiar with the concept of header bidding?

AUDIENCE: I learned yesterday.

MATT: It’s the process of opening up live bidding on your advertisements in real time.  But it's also an attack vector.  You don't have to put an ad on the page.  You can funnel it out.

AUDIENCE: The thing it you have to send them a bunch of data about the page.  Contextual data might include user data and other things.  They decide on the backend system, there's a bunch of pre built bids.  And they put a bid against your ad inventory.  And if that is the highest bid, an ad shows.  That's very easy to just make your bid real low knowing that you'll never have to pay out collectible bunch of user data and then potentially use it for other means.  Or there are companies that will do this and sell their user data sets and that's their entire corporate model.

MATT: Got to make money.

AUDIENCE: Has anyone ever asked I tried this a couple times of like asking them to write a blog post or an article about why we're adding to the site.  If it's really supposed to help users.  That worked well with the business.

MATT: Did you bring any good responses?

MICHAEL: Did it work?

AUDIENCE: Yeah, they were like, we thought it would be more money.

MICHAEL: From my personal experience adding things, there's a few things to help in the future.  Typically I have used web page performance as a legitimate pushback.  It comes to, I would be happy to.  I would love to add this thing.  I think it's going to be really great value to collect more information about the readers to make more money.  But we have a lot of information on the page already.  What's one thing to swap it out with?  What's it better than?  That buys you some time to dig into it.  The next thing I would do is, if it's just one line of JavaScript, the salesperson said, if it loads asynchronously.  And you drop into the page, an isolation.  Yeah, it does.  But it also loads a CSS and another JavaScript which loads an iFrame and in turn loads all this stuff.  And it's not compressed and has all these other things.  And that one JavaScript file of 2 kilobytes in size is loading probably 300 kilobytes or megabytes of information into the page.

The network tab is your friend.  The other thing is oh, yeah.  Like, you can love to add it, but what is it actually doing?  What is it collecting?  Is it just with us?  Is it just information that we want that we need that we connect upon?  Or does this third party get to hold this and either aggregate it with other sites and return anonymized information or are they selling it wholesale?  Where is the privacy policy?  Do we need to update our privacy policy?  If you have to do that, you the legal team is going to take weeks to go over every word.  Sometimes it's not worth the effort.

I have dealt with the folks on the business side who thought it was a very easy thing to do.  They were sure.  They were not technical.  They don't know.  By bringing these questions up, very often you can block things.  Other times it's like, yep, we need it.  We'll go through the process.  Fine.  And so be it.  I think it's also very helpful that if you do add these things, put a note in, when does this relationship ends?  Is this a six-month trial?  There's nothing worse when you're adding things, there's a list of things but you can't pull them up because you don't know if they're over and done with.  We have had relationships that ended years ago and we're still sending information.

MATT: All you need to say is you're leaving money on the table.  You're giving the data for free at that point.  And that will snap them to attention.

AUDIENCE: I was going add in that regard, when I was at Salon, we handled all of our pixels with a manifest file that included the time it went active and the time it went inactive.  When the tracking pixel relationship was over, it would turn off automatically.

AUDIENCE: I'm curious if anyone has experience when the tracker that needs to be added is Google tag manager.  Which the pitch is you can add tags without the developer involved.  And how that kind of balances this kind of relationship.

MICHAEL: That's trickier because everyone uses tag managers differently.  I have used Google Tag Manager and incite on.  And the good thing is you can see the history and when it was added.  The other part is anyone can suddenly add it.  That's something that Matt can speak to about the network analysis or just how you're tracking things.  Like we have seen things like someone has added something and they actually have done it badly.  And, like, boom, your site speed goes from worse to worser.  And you're like, why did that happen?  It's like, did we do a deploy?  It's like, no, someone is messing with the tag manager which they should not do.  I'm not a fan of those.

AUDIENCE: Also, the tag manager is not a particularly efficient loader of scripts in my opinion.  I personally resist using it whenever possible.

MATT: One other problem with tag managers too is performance becomes really all of this is performance is less of an argument.  Performance is getting better across the board.  We have other initiatives to raise performance.  We have to think about security.  We have to do that.  But as initiatives start to bring advertising pipelines in house and focusing on the first party rather than the third party, anonymous ish.  And we need to know what it does.  And just make sure that people understand that security is important and performance is cheap.

AUDIENCE: If I may sorry.  Even with performance being relatively cheap, it still matters.  But not as much to the engineering side as it does to the business side, ironically.  Because the time that it takes to load our ads creates an immensely different profit margin.  Like when we switched how we handled our ads so they only rendered when they were in view and it caused our viewability to go up and it allowed us to load things faster, our overall CPM, the amount of money we make per thousand ads that show up on our page more than doubled.  And that was entirely due to the ads showing up faster.

So, when you're having that argument with the business side, if you can, like, run testing if you have the capability to run A/B tests, you have a huge opportunity to be like, hey.  I care about performance and I understand that you don't.  But this impacts your what you care about.  Which is how much money we're making on a per ad basis.

MICHAEL: In the back?

AUDIENCE: Yes, if you could talk more about GDPR.  There's a lot of talk about removing third party sites.  It sounds like, you know do you know a timeline for when the US publications are going to be looking at that?

MICHAEL: I love GDPR.  I didn't last year, as it won't apply over here.  So, show of hands.  We're going to go to even though it has been asked.  Who is familiar with the GDPR?  Show of hands.  Are you familiar because of the news or dealt with the technical...

AUDIENCE: Technical.

MICHAEL: Hands up for I'll just keep talking.

[ Laughter ]

The short 30 second version of this or what GDPR is if you're unfamiliar is the EU passed this sweeping user privacy law.  And it does many things from consent to right to be forgotten to a whole host of other things.  The main one that's affecting publishers right now is if you have a significant EU audience, you have a parent company in the EU, if you have a thank you if you have a remote worker in the EU, you are technically in this kind of there's some legal liability here.  And the liability is not insignificant.  Like 4% of your global revenue as the maximum fine.  So, billions for some companies.

Anyway, the shorter version, which shorter version of this is consent.  So, the law says that basically before if I want to use your information, I have to ask you.  I have to tell you what information I want to collect.  And then tell you what I want to do with it.  And you can say, no.  And I can't deny you the site services as a result.

Also, if I say, wow, this is really cool data.  We did this thing.  That's awesome.  I want to do something else.  I have to go back and ask you again.  It is your data.  Just because I have a copy of it doesn't make it mine.  I have to go back and ask you.  And you can change your mind at any point and say, hey, that thing I said okay to six months ago.  No more.  Revoke my consent.  And we have to manage that.

And the problem with this is that GDPR in my opinion from and I'm not a lawyer but it's fundamentally incompatible with most ad marketing these days.  So, to think of it as an example, we spoke about advertising.  So, on a web page, you are a publisher.  I want just one ad.  You broadcast to the ad networks that you are partners with.  Let's say you have five of them.  You broadcast that user information.  They go to the DSPs and various other things and there's bidding if necessary.  And all this information gets shared along the way.  And you don't know what's going to come back.  But before that can happen, you, as the website owner, have to ask for consent.  And it's not just, hey, consent is per nope.  Here are all the things that could possibly load in the page.  I'm doing a dot for everything I can think of.  And you have to actually give your consent to all of those things for it to happen.

Like from a user experience perspective, that's impossible.  That is a very long form.  You're not allowed to pre-check them.  You're not allowed to do that.  And you you can't just opt the person in entirely.  Or deny them the access to the site because they say no.  And it's more or less impossible for any website to know at any given point what ads what services are going to load through that kind of gateway into their site at any given time.  You can scan them in.  Catch like, you know, these are the reoccurring ones.  But it's really hard to do.  And even then, those ads will look creative where someone has dropped in their own kind of pixel trackers for like some are very legitimate.  I want to verify that so and so, when they said they showed my ad, they did.

Others want to collect user information to retarget them on other sites.  That is in theory grinding to a halt right now.  It's a big problem.  From people I have spoken to, they said actually that GDPR was envisioned with a view of being incompatible with advertising as we know it.  And I think that's wonderful.

[ Laughter ]

But also this is kind of going off talk.  I'm going to pull it back in a minute.  To me that's a very interesting opportunity for publishers.  We are so far away from our data and readership and all this ad tech in between.  I think the Guardian did a thing where they bought ads on their own site.  And for every dollar they spent, they only saw 25 cents of that.  75 cents was going to the ad tech.  We have the opportunity, if we were to do the advertising, we have the funnel and we can kind of close that gap between us and our readership and not leech their data out to everyone who is listening, we could actually have a better experience and a many fundamental revenue relationship with our readers.

That gets into GDPR stuff.  I can go more into this.  I hope we have questions.  And I can talk until 6 p.m. on this if anyone wants to do that too.  We're okay for time.

MATT: We have time.

AUDIENCE: California law just passed.

AUDIENCE: Passed?

AUDIENCE: Passed.

MICHAEL: California just passed a law that's GDPR like.  I'll you should read up on this.  Basically there was this real estate developer talking to a Google engineer a couple years ago months must have been years.  And the Google engineer, if people knew the stuff we were collecting on them.  Oh, my god.  And he was like, okay.  He basically came up with legislation and put it on as a ballot initiative and said, I'm going to just get this on the ballot and it's probably going to pass.  And so, he made a   I don't know how it transpired.  But basically it came up that, okay, if they could pass a lighter version but still a meeting certain bars through the legislator, he would withdraw it as a ballot initiative.

And so, it just passed yesterday.  So, technically a stronger more astringent version than on the ballot.

AUDIENCE: Bonus round.  Maryland passed a law against or to try to deal with the issue of Russian kind of trolling bot, whatever.  So   

MICHAEL: I did not know this.

AUDIENCE: Yeah, nobody knows about this.  But Baltimore Sun.  So, the law went into or it goes into effect July 1st.  Under the law if somebody's buying a political ad on your website, they have to identify themselves as being like a PAC or whatever.  Saying where they're getting their money from, what's their headquarters, blah, blah, blah.  And you, within 48 hours, have to post on your site a searchable list of who is buying the ads on your site. 

MATT: Which just prompted Twitter to announce this.

AUDIENCE: In Maryland, there's no penalty associated with it yet unfortunately.  I think the Sun is probably going to take them to court because we don't like the forced publishing requirement.  But it applies to everybody if you have readers in Maryland, which you do.

MICHAEL: My secret hope is that between EU and now California that Canada will follow suit and then that's like North America.  I have opinions.

MATT: All right.  Back to the developer-y side.  Developers have more universal options on security policies.

MICHAEL: I can take it or you can.  I have done a lot of talking, I can just shut up.  Okay.  So, my next favorite thing.  Content-Security-Policies that came up recently because of GDPR.  But basically cross site scripting attacks, it was a thing where you could specify only what you would white list.  You can say, you can have JavaScript on my page, but you can't do eval or other things.  You can have JavaScript in line on your page, but only if it has, you know, this non associated with it.  You can get deep into it.

This would be great for nonprofits, for example.  Hypothetically, if you're ProPublica, and we only track for Google Analytics and charting.  You can create a Content-Security-Policy, I'll show you what they look like.  You restrict this is the CDNs for our images, this is where the page loads from and this is Google analytics.  They're cool.  And anything else that tries to load will be blocked at the browser level.  I think ad blocker.  You can write your own mini ad blocker on a website level.  It just shuts it down.

So, even if you let code run something on a different domain and then that code on that domain tries to load something from somewhere else and then iFrame or whatever.  It gets shut down.  It doesn't get to the page.  So, if you are a nonprofit, for example, this would be a great way to make sure that if as you embed content, if you're willing to do the work, you inspect it and say, okay.  This stuff, and this will load, but I won't white list this specific sub domain where things are reported back.  That might be against terms of service, so tread carefully.  I want you to know that is, in theory, possible.

And the next thing about this, go to the next slide.  This is a simple example where you can set it on the header level and kind of say allow self to load, allow media from M1 and M2.com, only allow scripts from this to load.  You can do that quite easily and as a meta tag on your page.  And you get really complicated here.  It could be conditional.  If they're from the EU, you could lockdown the site.  You can use the language, document.language.  I hate to say.  For example, the L.A. Times, for disclosure, the first newspaper I worked, we did block a number of sites from EU traffic.  The reason being we needed to make sure we got them compliant.  We were late to the compliance game.  We did that as we white list and move forward.

But what we did is the cookie only users coming in from the EU.  Looking at the IP address.  Certain country, EU, legal jurisdiction.  And for those that were EU, we used content security policy only to white list things that were essential to the site function.  Images, our own JavaScript.  And then basically block everything else.  So, our sites are really, really fast in the European Union right now.  You can't white list ads this way because you don't know all the possible permutations of the domains that could be loaded as a virtue of having ads.  So, all the ad created from all the different agencies. You can't really realistically fit that in there without going crazy.  But I would encourage you to look at this as a way of quickly getting the sites like if you don't care about your EU revenue, for example.  You may want to follow a subscription model there, for example, and not going the ads way, you could probably lockdown your site in about a I don't know half a day.  Not counting what DevOps need to do for the setback in the first place.

I really think you should look into that.  Oh, yes.

MATT: Yeah, the point of a lot of the stuff here is that we're in control.  And we need to start taking a lot more responsibility over how we employ these things.  As we have shown along the way, these are simple changes that could save a lot of data from being leaked out.  Whether it's assets not served by you or approved by the site or taking the user's line and prevents cookies from loading wherever you can.  Or tracking from happening wherever you can.  Another hard question for developers is, there's a couple lines of code.  Is there anything really stopping you from making these changes going forward?  This feels like the kind of position you might want to ask forgiveness instead of permission.

MICHAEL: I want to kind of double emphasize that.  If you have some free time and you're bored.  You don't know what ticket to cover next, or you're between projects, some of this is very low hanging fruit.  There's probably no revenue impact for some of the easier examples.  Code review, if people have questions.  They can be excited to learn this.

MATT: And like a radical code review.  Unexpected security breach.

MICHAEL: Radical code reviews.

AUDIENCE: So, you said there's probably no revenue impact for some of this stuff.  But in my experience the more information that you can gather about the user via cookies the more advertisers are going to bid for that impression.

MICHAEL: Yes.  So, I was sorry, I was referring to some of the embedded examples.

AUDIENCE: I guess my question is, how do we balance the need to monetize and publish your websites with the user privacy concerns?  So, this would be specific to your site.  So, for example, we don't have many sites don't have an ad agreement.  They're not using their own YouTube embeds on the channel.  They're somewhere so hey, here's a story.  They uploaded the video, YouTube or video and we're embedding that because it's relevant to the story.  You know, if there's a pre roll ad, someone else is making money off of that.  It's not us.

So, that's all cool.  You could use that kind of cookie less YouTube domain without consequences.

MATT: Be careful about removing Facebook.

MICHAEL: I think Facebook is fine.  But I could be wrong and don't want to scare or get anyone in trouble.  For me, the non lawyer, reading the terms and conditions.  It is completely legitimate that you think if you can make a case that children come to your website and we don't always recognize that they're children.  In fact, we can't recognize that they're children because of people sharing devices and we don't ask, then you should be using that kid friendly attribute.  And you can make a very solid point that you do.

Again, my daughter goes to the "New York Times" website.  Washington Post too.  Put this on the list.  But so her information is being tracked under the guise that they're thinking it's me, okay?  So, there is a very clear direction there.  But we don't know the follow up.  We don't necessarily know that these options exist.  And maybe when we examine them and dig deeper, we'll know that they'll penalize us in other ways.  Maybe we need to talk to them about a that and maybe do better.

Again, some things drive conversation others make an immediate effect.

AUDIENCE: Before you try to make the Facebook call on your own side, it's also the business side.  The audience development team sends user tags through the Facebook pixel to retarget users with advertisements for stories on your own site on Facebook.  So, just a head's up.

MATT: So, what are you guys doing right now to fix this?  Anyone taking proactive measures?  Using YouTube no cookie or turning off Dragon.

MICHAEL: We can do this off the record if that's helpful for people.  If you want to talk about this and say off the record.

AUDIENCE: I mean, sort of it's not exactly this.  But in terms of like proactive measures, another good thing that you can do is if you know that there are particular JavaScript methodologies that people are using to track or hijack your site in particular ways, we write no op functions and place them against the Window level JavaScript object.  So, like the methodology for doing scroll jacking, you can just write a function that returns true and replace that in that CSS methodology and it's no more scroll jacking on your site.

If you're interested, some of that code is open sourced on my personal GitHub.  But that's just another thing that you can add to that.

MICHAEL: Was there someone else?

AUDIENCE: Yeah, I guess I'm I'm curious about how to build a natural practice of doing this kind of I mean, like of work in the development environment.  I mean, there certainly seems very possible to kind of slip some of these things in or sort of take some responsibility as an individual developer.  But it's hard to imagine or it's hard to see where a more concerted sort of institutional level effort to tamp down on these kind of data leaks would come from.  Especially when it seems like, you know, it's like we're not the ones doing it.  Really.  You know?

Or people are doing this stuff all, you know, people are, you know, leaking constantly at their own volition, basically.

MICHAEL: I would say absolutely right.  And that's partly why I want to talk to people in this room about it.  But, you know, I would almost say like, I'm thinking out loud.  Do I know any WordPress core developers to take to lunch?  Hey, short codes, you should just change the defaults to this.  And stuff like that would naturally then go into the ecosystem and be more of a top down kind of thing.  But short of that happening, and I don't know where they like to go for lunch, you know, I'm trying every avenue.  Like Dan and I sorry, Matt and me.  I called you Dan yesterday as well.  Like several times.

I'm trying it from all angles.  But you're absolutely right.  I would love any thoughts or insights you have now or in the coming weeks of, oh, actually we could do this thing.  I mean, we could do a browser extension that kind of like does this stuff.  But that only works for people who install the browser extension which there are kind of many at this point.  Do you follow?

AUDIENCE: Yeah, I guess one thought that occurs to me is kind of positioning these choices in line with building reader trust.  To say something that you could trust when you come to our site is XYZ.  And making that an explicit part of sort of coming to get news from us.  And then that also builds internal engagement that would actually solve these problems rather than being kind of stealthy trying to, you know, close some leaks here and there.

MICHAEL: Yeah, they have done a decent job where there is embedded content and added things, they have the overlay, this site is not supported.  Do not track.  And you have to click.  That is very proactive on their part and I wish it was easier to follow suit on that.  Down in the back.

AUDIENCE: So, one I think this that I think when you're talking to, you know, the various business people that I try to emphasize is that really tracking is kind of a prisoner's dilemma.  It's in the interest of you as the individual organization to get the tracking.  Because, you know, as we said earlier, if you have an ad that's based on targeted to the specific user, you're getting a higher CPM.  You know, significantly higher.  And so, therefore you wouldn't do it.  But industry wide, that's terrible.  It creates like a race to the bottom.  So, imagine, you know, let's say you have a niche interest like fountain pens or something like that.

In a world where there's no tracking, you're running the pen blog.  If you want to advertise to people to get them to buy your $500 content, you have to put it on the content blog.  In the world that exists today, you drop the cookie and show the ad on the other pages.  And it tracks you around.  Why am I seeing the same ad on every website and even on my phone?  I didn't look at it on my phone.  Now all of the other websites are getting the high CPM ad.  It's good for them.  But at the end of the day, the fountain pen company has a certain advertising budgets.  They're going to spend it.  That's what's the limiting factor.

So, if there's no tracking, they still are going to have the same budget and they'll just put it all into the fountain pen blog and send it into the other ten websites.  So, to the publishers with these are good.  We have big audiences that are niche specific for local areas.  If you can't do tracking, if you want to advertise to Maryland, you have to come to the Baltimore Sun, blah, blah, blah.  If there is tracking you can get them on every other website.  It doesn't matter if it's a national site or not.

The thing that I want to emphasize to business people, whatever.  This is the prisoner's dilemma and the law is going to get us out of jail.  The law is going to break the prisoner's dilemma.  And it's going to be like TV advertising, radio, podcast advertising if they don't fuck it up.  All of those have no tracking.  And they're all fine and they have individual problems and healthy and you know healthy parts.  But they're all fine without tracking.  It's just web display ads that have tracking.  And they're also the worst one in terms of like monetary revenue.

MICHAEL: Actually, I'm sure most people have a Facebook account.  Have you gone into the part of your account settings where it's like what Facebook knows about you?  Okay.  How accurate is that?  I never figure myself as a salsa dancer.  It's funny because it came up last night because there was dancing.  That was in my profile last time I checked a month ago.  Along with a few other things where I have no idea why it thinks it's about me.  It's how you see yourself and versus how you behave and act and are different.  But there were things in there that were just plain wrong.  And whatever advertising I get is based on half right information and half wrong.

And so, I would agree with you.  I would say like this level of ad personalization, again, depends on who is doing it.  Some people say Instagram ads are very relevant to them.  Others say other.  I mean, it varies.  So, I would love to see a world where actually you have less data points to track people.  You spend your budget on certain things and outreach and it's not like this, you know, you spend X thousands of dollars when you don't actually know what's working for people.

AUDIENCE: Yeah.  I would say the flip-side of that is if you want to discourage user tracking as a practice on your site, increase the amount of contextual data that goes into your ad tech from your site.  Don't just make it whatever editor key words decide to be in there.  Authorship data is valuable.  Like people don't think about it, but advertisers do target bylines.  Because they know what type of stuff that particular author presents and that's in line with their interests.  Information about what your site does, how it works.  And because these systems also do have their own degree of crawling and internal detection of the page that they're on, adding structural metadata to your page is a valuable way to increase how profitable your Arizona are.

So, go to schema.org.  You can see how The New York Times and the Washington Post and other publishers have implemented it.  And implement the schema.org metadata object on your site.  It will help profitability and it's good for the web.

AUDIENCE: More broadly, I want to stress also.  There's two types of data that I talk about.  There's definitely the stuff that's happening on the ad side.  The contextual advertising.  But there's also just the data that people are collecting, you know, their services and they use this information downstream in other ways.  But that's you're just leaking out.  So, while you deny data to one side, you're not denying it to the other side.  And those things can definitely get intertwined.  But I just want to make sure people know there are two different buckets there.

AUDIENCE: Just touching on the sort of CPM question.  I don't really have a sense.  Like we often say these are higher revenue.  But I wonder how true that is.  And I wonder if there are that actually show what the revenue and the pricing actually breaks down as?  Because I know I've heard stories of like getting put on pages because it's a sales guy going and talking to an exec.

MICHAEL: I can relate to that.

AUDIENCE: And, like, it's not a good deal for the publishers.  And the tracking is terrible and all of this.  But like we don't actually have the numbers to counter this.  And I think like that should be part of this conversation.  And like I don't have that information.  I don't know if anyone does.

MICHAEL: Yeah.  That's a good point.  I'm happy to speak on that.  SFK which came up there is one of the properties on the papers where I worked.  And recently sites like that where we switched.  And we did see a noticeable change in web page performance and load time overall.  And this was something like where, you know, part of it is how you engineer these things.  The other part is, yeah, you're adding on to this page.  But we didn't have tangible information where we could argue that, okay, there is going to be this impact.  How do you map that like, you know, a I'm just going to be very optimistic and talk about high speed Wi Fi.  But from like 10 15 seconds.  What does that 50% mean for revenue on the ad side?

It is getting much easier to do that now.  WebPageTest.org is very good.  We do 3G speeds on mobile versions of the article and have that thing over a long period of time so you can see bumps in the speed curve and other services really help with that.  So, when you have a deploy.  When you, you know, launch your implementation or, you know, it's the end of the quarter where you're getting a lot of ad traffic being dropped in, you can see these noticeable changes over time.

And, you know, if you have the team that can map that to CPMs or map that to the bottom line, it makes it an easier case for explaining why, actually if we did this, ads loaded faster because they weren't competing with network requests for the rest of the page for those images.  Time on site improved.  Viewability improved because the ad loaded before they scrolled out of view.  It's hard to measure those things.  But from a web page performance and user experience and CPM, things are all interrelated.  It's easy for a business person to say we do this one thing in this one line of JavaScript and we're going to make 20 grand a month or whatever it is.

That's a very hard when things are hard to measure, they're hard to show value.

AUDIENCE: Yeah, I would say if you're interested in measuring that and showing the value, figure on if you can month long tests or especially month long A/B tests.  Because if there's an impact to CPM, it usually takes about a month to show up.  When somebody asks you to deploy a thing, like, hey, let's do an A/B test for a month and see what that deployment affects.  If it does, there's all sorts of conversations that you can have.  They may think it will make more money because that's the top-level report on what a person is saying.  But at the end of day, if it affects your performance it will drop the amount of money overall that your ads are making.

MICHAEL: So, this is a tangent, but it's web page performance, ads tracking opinion it's all interrelated.  We did this project over a year ago where we took a broad set of what we thought were typical articles across media properties.  The mobile version if they had it.  And using webpagetest.org to test the speeds.  And the lower, crappier speed test is because you see it basically drags out the timeline so you can drill down and say, okay, I see what was slowing this down.  And some of this is like how you build your site.  Some is how much trackers, how much ads, how much other things are you loading?

And you can see there's significant distinctions between sites that are really freaking fast.  CityLab, I don't know what they're doing.  Maybe a bespoke ad network, shunning the usual partners.  But they're crazy fast.  FT had dedicated developers for web page performance.  But if you start scrolling down you see, like, okay, there's speed index, which is a measure that Google comes up with about how much they how fast or not fast thing your site it.

And this is one of many SEO signals in terms of search results.  The lower you have that number, the much better.  You see number of requests.  If you scroll down to the bigger ones.  This goes down to about 60.  You have a couple of properties that I work at.  The New York Times used to be in the top ten or top 15 for a while.  I'm not sure what they did in the last three months that changed things.  I'm not picking on them.  We all have salesmen in the closets.

San Francisco, we redid the article template and got the load time down to 22 seconds.  That's still really low.  But we were maybe 48th before that.  So, it's kind of like phase one.  And actually let's see.  Again, some of these have 430 different requests.  Wired is 528.  Why does Wired have 528 requests on a page?

AUDIENCE: Where was this from?

MICHAEL: webperf.xyz and shows the last four successful tests.

AUDIENCE: Is it using Lighthouse to calculate load timing?

MICHAEL: This is not.  It's using webpagetest.org.  And looking at the far bottom.  Keep going.  Keep going.  You want to click on that link.

MATT: I don't know which one you pointed at.

MICHAEL: At the spreadsheet.  Sorry.  So, like, this data I think this one goes back about a year.  Has the raw data from all the tests there.  And if you and then these are the results basically.  There's two things happening here.  One is all the properties that you see the results.  There's another project happening sideways to that where I'm trying to compare articles to the site article and see what is really faster.  And then you can if you can scroll off to the far side, you can get a link to the so, I don't want but basically you can take this test ID, go to webpagetest.org and see the full test results.  And webpagetest.org will hold on to the last 3 7 days’ worth of tests.  But you can dig into that kind of archive for the most recent stuff.

But, again, if you can have a deploy process, a development process where if you make changes to the pixels that you're adding to the page or to the ad setup, you can see these kind of considerable gains over time.  To echo his point.  When we actually removed when we redid the template, removed a lot of the trackers.  Some of them we didn't have the deals anymore.  And in the advertising revenue, it kind of doubled numbers are still early yet.  But we saw significant upward gains.  And that to me is a privacy issue.  But if you can tie it back to a revenue issue, more people are going to listen to you.

MATT: We're just about at time.  Any other questions?

AUDIENCE: Yeah, I was going to add something to the GDPR conversation.  We disabled that entirely in the EU.  And also video for a certain amount of time.  I think we're back to serving video again.  But for us the issue wasn't so much whether or not we could solve the permissions compliance.  It's just compliance itself.  As a definition it's murky right now.  And there's a great fear, like it's not been tested yet.  Nobody's actually received the first test.  And that will be really kind of a litmus test.  So, until we see that, I think our plan is to just wait and see rather than try and solve the permissions issue first.

MICHAEL: Yeah, I mean, the things yeah, there's two options.  You outright block.  But I think that there's also a lighter blocking option where you don't completely gut your page.  You just like if you use content security policies, you could in the space of I would literally say one to two hours, depending on how your site is architected, if you get that on a template site wide, you could restrict the you could still allows the users to see the content without the risk that things are loading that shouldn't.

AUDIENCE: I'm sorry, we just log ads.  Our content is basically ad free.

MICHAEL: Okay. You're not blocking EU users.  That's cool.  All right.  Oh, yeah.

AUDIENCE: I just had a quick question because it seems like these strategies share a lot with like progressive enhancement techniques.  And whether or not anyone has had experience in terms of like starting with a page that is very restricted, has strict content policies.  And then lifting those as they were implemented.  And on the scripting side, modifying HTML after the page is loaded.

MICHAEL: I haven't dealt with that personally.  Has anyone here?

AUDIENCE: We have a progressive web app set up for our site.  But I don't think we've done anything specific to it for privacy.  We just in the templates remove the calls in the EU.  Yeah.

MICHAEL: Well, what I'm I'm going to call this session done.  But we're here for a while for any questions or follow up conversations.  I want to thank everyone for coming.  I hope you learned something you can bring a back to your respective organizations and move the discussion further.

[ Applause ]
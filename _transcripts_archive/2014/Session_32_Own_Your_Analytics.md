This is a DRAFT TRANSCRIPT from a live session at SRCCON 2014. This transcript should be considered provisional, and if you were in attendance (or spot an obvious error) we'd love your help fixing it. More information on SRCCON is available at http://srccon.org.

Captioning by the wonderful people of White Coat Captioning, LLC
whitecoatcaptioning.com


     July 25, 2014
     SRCCON Session 32
     Own your analytics
     Session leaders:  Brian Abelson, Michael Keller, and Stijn
Debrouwere.
     >> I think we're pretty full.  If you want to talk from up here
and point at me when you want to switch.  That's fine.
     Maybe I'll give some background.
     Welcome.  This is own your analytics.  Myself, Stijn and Michael
are currently working on a project with the Tau center at Columbia
we're calling news links and the idea is in part to create a suite of
open source tools and web interface for working with analytic data.
Sort of with the idea of investigative nonprofit news organizations,
sort of at the forefront.  So there is more qualitative stuff that is
going to be incorporated but more generally anyone that wants to know
how their articles are performing, who is sharing them, where they're
getting linked to and from can sort of benefit from this.
     I guess what the context for this session is that we've been
working with these tools on our own for, you know, many years now, I
don't know how long you've been doing analytic stuff.  But myself at
least for two or three years.  We're hoping to share some of that
knowledge with you, at least the gotchas and at the same time also
sort of help you think about all the possibilities that are out there
for learning more about your content by combining lots of different
APIs and that's the idea of own your analytics is not just rely on a
single, you know, not just rely on Google Analytics or rely on
Facebook insights or your Tweetdeck or whatever, but to be able to
combine them in intelligent ways and start to learn things that you're
interested in.  So actually answer the questions that you're curious
about.
     We also have Sonia here with us.  She is our resident Facebook
insights expert.  So she'll be talking about that data and the cool
things that she's done with it.  The format is going to be, Stijn is
going to talk generally about stuff and then specifically about Google
Analytics.  Sort of the different terminology, because it can be very
hard to grasp at first.  Sonia is going to walk through Facebook
stuff.  I'm going to talk very quickly about Twitter.  I don't have
slides but just the things you can do with it and the most difficult
aspects of working with the Twitter API.
     And then hopefully we're just going to maybe break out into
groups and we're pretty small.  But the idea is to start playing
around with snippets of code we have or we can help you write your own
stuff and if you have access to your organization's Google Analytics
account, we can help you start to pull that data in.  If you have
access to your organization's Facebook account and have insights
privilege, we can help you start working with that.  And then also
Twitter stuff and then maybe even start to brainstorm how we can
combine these things together and what cool things we can do it with
whether it's alert systems or dash boards or just sort of ad hoc
analyses.




     We have some data that we've already collected, too.  Michael?
     >> We're doing a research project, building this platform which
we're looking for beta testers for.  We have some newsrooms
interested.  You can go to news LYNX like the cat and there is a
survey there about the organization and you can fill that out and that
would be awesome.  Etherpad.Mozilla.org, SRCCON ...
     >> Here.  Let's write this up here.
     >> Etherpad.Mozilla.org/SRCCON/analytics.
     >> I managed to download your stuff but thankfully ...  (talking
amongst themselves).
     >> Sorry for the delay in getting started.  Like Brian said this
is own your analytics.  It's sort of at a basic level, getting access
to the data and being able to export it.  It's more out of owning your
data at a more fundamental level.  What is annoying or what really
frustrates me about how people handle their analytic software is
instead of asking themselves what kind of data do I really need?  What
kind of metrics do I really need?  Most people log into their analytic
software and look at the numbers that are there and assuming that's
what's important just because it's there.
     And the interesting thing is that the more you actually look sort
of one level deeper and you look at what kind of data is available in
all of these tools and all of the different tools that are available,
the more you get to ask yourself sort of more questions at a more
fundamental level like what kind of questions am I really asking?  And
what kind of tools do I need to get them.
     I think understanding these APIs is like a really sort of basic
skill that will help you sort of -- well -- think at that more
fundamental level about what you want to use your analytics for.
     This is the part that we're still working on.
     >> We'll do it later, man.  Just get through.
     >> There are already four of these sticks here.  People who want
to code, there is some example packages, Python packages if you're a
Python programmer on there.  That would be interesting.  Also some
documentation and stuff, that would be useful.
     >> We're using the memory sticks.
     >> Inside the memory sticks are virtual machines with all the
dependencies built in and the vagrant distribution, right.  So I don't
know if anyone's used vagrant.  It's all documented, right, how to set
it up?
     >> Yes, pretty much.
     So basically for people that are not that interested in coding,
that's fine, too.  What I'll start with -- I don't know how long it's
going to take but I figured between 15 and 30 minutes talking about
how the Google Analytics site works that is at a conceptual level
because there is a lot of terminology and stuff.  That is really
useful to know if you want to use other analytics tools.
     And after that we'll get more into, well, what can we actually do
now that we have this data and how can we combine data from different
APIs and how can we use these APIs?  So at that point there's sort of
three options.  One is we'll be at the end of the hour so you can




switch to a different session.  Or you can start coding.  Or the third
option is we can split up into groups and there can be groups that do
brainstorming and think about alternative metrics and those things
without necessarily coding them up.
     But for those people that do want to code, we'll be here on hand
to help you out with that and troubleshoot.
     We can skip over this actually.  If the only thing you want from
your analytics is to get the data up, then most analytics tools have a
big export button.  And that's actually a great way to get started.
Even though it sounds stupid but the thing is getting started with the
Google Analytics APIs and some of these different APIs it takes a
while.  It takes a few days to really get up to speed but we're going
to try to kick start that process.
     To get started, for example in Google analytics you construct
your query to get what you need and export it.  When you quickly need
the data but the interface is too limited in how it allows you to
present that data, you have the right data but you want to display it
in a different way or different context, the export buttons are really
good.
     That is not what we're going to talk about because we want to use
those APIs.
     What are some of the advantages of using the APIs over using the
export buttons?  I think there are sort of three main advantages.
It's mainly about sort of expanding the range of analysis.  Most of
the analytics tools that you'll see and certainly Google Analytics, I
call it general awareness.  Like you log into it and see some numbers.
Last week these were my page views, et cetera.  And they're fine for
that.  But if you want to do anything out of that sort of comfort zone
of what the user interface allows, then you're going to get into
trouble and that's when you want to use the API.
     One is maybe you want to go deeper and drill deeper in the data
and combine it with other datasets.  That is when you want to use an
API.  Another one is maybe you want to analyze years worth of data.
Also when you probably want to get that data from the API.  But also
sometimes you want stuff to just work really fast and for example
based on your analytics data you maybe want the change how your home
page looks or send out an alert to an editor or something.  You can
have a script running that every 5 minutes or every 10 minutes checks
your analytics data and based off that sends out those alerts or
updates the dash board or stuff like that.
     In those casings you don't want to be in the user interface of
Google Analytics every five minutes.  No.  You have a script that does
it for you.
     The thing is in the interface it's really easy to sort of click
on buttons until you sort of have what you need.  With the API you
really do need a mental model of how the data is stored before you can
get started because you need to transform your question to a query.
     And yeah, that's what we'll be talking about.
     So the first thing that is interesting is well, lets' start at
the very start, how does Google Analytics store data?  And again, I'm




going to continue to talk about Google Analytics but 99 percent of
this applies to pretty much any other analytics tool that you will
find, stuff like mixed panel.
     So you visit a page.  Mauves you have probably sort of added
Google Analytics to a website so you know that you have to install --
well, install, add this tracking code to your page.  What that does,
every time someone visits that page, that little -- I guess it's a
pretty big script, the Google Analytics runs and what it does is it
will -- first it will register your visit.
     There's three parts to it.  One is, does Google Analytics know
you.  Has it ever seen you before?  If not, it will sort of in its
system log you as a user.  So it will log you as a new user.  If it
has seen you before it will associate your page view that was just
logged with your user.  The second thing is there is not just a user
but a session.  A session is not necessarily since you last opened
your browser.  I think it's limited to have you been on the site in
the last 15 minutes or something like that.
     If you haven't been, it will count that as a new session.  A new
browsing session on that website.  It will log that.  And all of your
next page views during that session will be associated with that
session.  So a lot of the interesting queries you can do with Google
Analytics are based on this idea of how many pages did someone visit
within a session or did someone within a session first go to this page
and then to that page?  How many people did that?
     And so there are those three levels.  One is the event level.
The main event being the page view.  But Google Analytics supports
many different types of events and you can add your own eventers.  If
you want to add a bit of tracking code so every time someone click ons
a button or every time someone scrolls beyond a thousand pixels you
can register that as an event with Google Analytics.
     So that's really interesting to do that custom tracking.  But the
default tracking is page views.  Every time you visit a page that is
registered as a page event.  There is the event level and then the
session and the user levels.  Those are the main ones.
     Alongside those events, an event is not just one little piece of
data.  It's not just like, hey, this is a page view.  No, there is all
sorts of meta data associated with it.  There is the user and the
session that is associated with it.  But really many other things can
be associated with it as well.  And even you can add custom variables
in Google Analytics so you can add your own data to these events.
     In the database an event will be stored as a single row and it
will have all that meta data on it.  Then we get to metrics.  What is
a metric.  A metric is a type of calculation or descriptive statistics
of an event.  For example just your count of page views, the
calculation that is happening is you're counting all of your page
views.  If your average pages per user per session, if that's 3 and a
half, well then that somehow had to be calculated off of these events.
So that is a metric.  A page view is an event.  Today's page views is
a metric or the average page views per session is a metric.
     That is important terminology as well.




     Now dimensions are sort of we talked before about the fact that
alongside an event, the main event being a page view you can store all
sorts of other meta data.  One of the key pieces of meta data is the
date.  Actually for every page view you need to know when did it
happen.  So those are dimensions.  All of those pieces of meta data.
     Then there's segments.  Segments are groups and they can be
groups of people, groups of users or they can be groups of sessions.
And one of the main ways that you filter the data.
     The interesting thing to note about them is that they're not
exclusive.  If you do a query in Google Analytics, you can have many,
many segments and those segments can all be overlapping.  For example
a segment can be all of your users that are visiting from the United
States.  That is a segment of your users.
     Now segments are again, they can be user segment or session
segments but they're not event segments.  They don't filter at that
level.  That is why there is a separate kind of filtering that also
exists and that is called filters.
     Those filters, the difference between a filter and a segment is a
filter filters at the individual row level.  The individual event
level.  First, your segments and then you have faster piece of
filtering and that's your filters.
     Two other key terms are aggregation and sampling.  The main thing
to know and a lot of people bitch about Google Analytics because all
of the metrics are aggregated metrics meaning they're calculations
that happen on all of these individual rows, all of these individual
page views and you never really get access to each individual event.
No, you only get access to the resulting calculations.  So they're
aggregated measures.
     And the second thing about Google Analytics is to speed things up
it will do those calculations not on the entire dataset but on a
sample of that dataset a lot of the time.  It just makes the
calculations faster and really you don't really lose that much detail.
     So the thing about this kind terminology or this kind of mental
model is that it really applies to almost any analytics package.  If
you think about ChartBeat, they have basically the same way of storing
data.  With Google Analytics sometimes you have to wait a couple of
hours before the data comes in.  With ChartBeat you get it live.
     Some kind of analytics are defined by what they don't have.
Facebook insights data.  If you worked with it.  You have a huge bunch
of numbers but no way to filter it or segment it by users beyond the
segments that Facebook provided for you.  Even though people bitch
about Google Analytics you have a fancy filtering.  You don't get
those with Facebook.
     Some analytics software is different because it allows you to go
beyond the aggregates.  With mixed panel you can run queries where you
ask what users haven't visited the site for a week and now give me
their e-mail addresses for logged in users, of course.  And you can
have those individual e-mail addresses and based off those you can
reactivate those users by sending them an e-mail.  You haven't visited
in a while.  What's up?




     Some of them are more flexible.  And Heap and Keen are events
tracking systems.  They have the same structure as Google Analytics
but more flexible reporting.  Or AB testing.  That is the same kind of
analytics again.  The only exception is you do it against different
variants of the page or different variants of a title for an article.
     Search logs are a kind of analytic too.  They are a different
event.  Instead of the page view eventer it's a search event.  And
sometimes it's just the terminology.
     I don't know if some people here use Adobe Omniture at work.  If
you do I'll be happy to help you out with that later.  Instead of
talking about dimensions to specify that meta data they talk about
elements.  It's the same thing.
     That's sort of a basic overview.
     I guess my main piece of advice would be what I've seen so many
people do is they decide too soon that the free or cheap tools or
tools they're already using which a lot of the times is Google
Analytics because it's free, it's not enough and people search for
different tools that maybe make things easier for them.  I think a
good strategy is to really try to get as much as you can out of Google
Analytics until you're really getting really, really frustrated and
really think you're not going to be able to get the data out of there
you need.  And then think about there may be other tools that can do a
better job.
     If you approach it that way you'll have a better idea of what you
need from those other tools.  When you go to the feature pages of
analytics too, X, Y or Z you know I absolutely need this feature
because this has been blocking me for the past month in Google
Analytics and I cannot get that data out of it.
     You'll be much better informed if you keep a little bit of that
frustration in there.
     The second thing is think about return on investment because a
lot of these analytics tools are really, really expensive and a lot of
news organizations are experimenting with using five or six different
ones and the cost adds up.  Why do you have these analytics?  Because
you want a return on them.  You want more users or more engaged users
and whatnot.  You need to make a return on that investment and very
often you don't.
     So on these memory sticks for people who want to use them,
there's some data that we've been using from various organizations.
There is some data from the guardian on there.  Some data from the
Boston Globe that Sonia brought.  Some other pieces of data.  But I
guess a more interesting thing and what I hopefully most of you are
here is because you want to do something with your own data.
     So that's sort of up to you.  And I guess --
     >> Can we get a quick show of hands how many people have access
to their Google Analytics account who want to play with that today?
     No?  Does anyone have access to their Facebook account and has
insights?  Wow.  That's interesting.
     Why -- I'm curious now.  Wait ...
     >> We don't really use Google Analytics.  We have Omniture.




     >> We have Omniture, too.
     >> Any data not just -- you have Omniture.  Would you like to
play with that data.
     >> That is why you get the data out of Omniture.
     >> I spent most of last year working at the guardian's Omniture
as well.  It's a really ugly API to use but because of that, I spent
some time creating an API wrapper around it.  So you can actually sort
of access the data in a fairly clean way.  You may have to sort of
revisit it.
     So I'd be happy to show that.  Although we'll do that on an
individual level.  People can work on what they want to work on.
     So yeah, if you want to use your data and we hope you do, there
are two ways.  One, you can export it if you want to do analysis in
excel and stuff.  We can help you with that.  Or we can troubleshoot
you as you try to get access to, for example the Google Analytics API,
well I guess nobody here wants to do that.
     Or Omniture we can also help you get logged into that.
     So yeah, everyone can sort of work individually the kind of data
they want.  Whether you want to use the user interfaces or whether you
want to use the APIs or whether you want to use our data.  Or if you
don't want to code, you don't feel like coding or you're not a coder,
then I think it would be great if there was a group or multiple groups
that can just do brainstorming around what kind of metrics do we need
in our newsrooms and what are we not getting?
     >> We're small so maybe everyone can go around and give a 20 or
30 second spiel on why they're here, what they're interested in doing,
and what they need help with.  We'll start over here with you.
     >> I'm Sam.  I'm at courts (ph.).  I worked on a bunch of
different projects.  I've been playing -- we don't have much in the
way of our own dash board at check out or anything like that.  We've
been using ChartBeat.  That is all they use.  And then I've been
trying to put in a few extra things.  I have a data display with
Tweets per hour.  I have a Tweet that mentions courts.  Parcels out
the ID of the link, you know or the post.  And then match that up with
your data and calculates Tweets per hour for any of our articles.
     So I would love to do the same thing with Facebook but I have not
found an easy way to do that?
     >> To find everyone mentioning Facebook.
     >> Likes per hour or something like that?
     >> We can help you with that.
     >> That would be awesome.
     >> One thing that Stijn has built that will go into our project
is you can talk about it, it's called Pollster.  It takes a stream of
URLs and counts up how many times they're being shared across many net
works.  Twitter, Facebook, REVIT, dig.
     >> Is it for all articles that are posted?
     >> Yes.
     >> Any URL.
     >> You give it a feed of articles and it follows that and keeps
tracking it for two weeks after publication.




     >> That is what I was playing with.  Facebook, I can't get every
share.
     >> Although Michael and I were just told about something, crowd
tangle.  Crowd tangle.  And apparently they can give you a sense of
the actual pages that you're content is showing up on.
     >> Keep going around.
     >> I'm Allison, I work at academics center at Princeton
university and we're looking to ramp up the accessibility of digital
work we have.  Part of the reason we haven't been paying attention to
analytics, we wanted to find out who our audience is and segment it
out and understand more about what we can do given that information.
     >> Great.  What is your site like?
     >> It's pretty bad.
     >> Do you post content or is it like a service?
     >> We'll be posting -- there's some content from courses and
articles, PDFs.
     >> Cool.  All right.  Keep going.
     >> I work for the international center for journalists.  We're a
nonprofit based in D.C.  We have a sister website that is published in
7 languages.  We wanted -- we're going to be (inaudible) we've been
talking about it.  We just want to know more like my dream would be to
have a tool that would tell me, I feed it a link and I would know when
it was shared, where, and then I can get it all, the metrics that are
important to me in one place.
     We do Twitter searches, we search all the search media accounts
and whatnot but it's not as easy as having it all in one place?
     >> Yes.  Great.
     >> I am Ringo and I work for the ICIDA.  I have been working with
ETLs -- extraction ...
     >> Okay.
     >> And the ETL that I am using has some components to extract
data from the Google Analytics.  I wanted to know what question can I
do?
     >> We can help you with that.
     >> Mostly I'm curious about which ...  But I don't know anything
about the statistics anywhere.
     >> I like to call what I do advanced applied counting.
     >> Jessica Clark.  I'm a media strategist so I need to know how
to work with my clients who are documentary film makers.  I'm tracking
new impact tools at media impact wonders.
     >> We've talked before.  It's nice to meet you in person.  I'm
sorry, hi.  Michael is back there, too.
     >> I'm here just to listen and learn.
     >> Okay.
     >> I am Adrian from Boston Globe.  And I'm here -- it was just an
intellectual curiosity about what you've been working on.  I also
manage a site at the globe called BC wired.  It would be cool to get
better understanding of that.  And I manage commenting and forums and
user engagement.  So it would be nice to also start looking at how our
engagement has been changing over time.  We went through a redesign




and everybody hates it of course.  But they -- but our comments have
gone up even though we lost a huge percentage of our readership.  It's
an anomaly that we have to look into.  It would be nice not to log my
questions to the analytics team.
     >> I'm Jeff.  I run a group a called the American press
institute.  We work with publishers on innovation issues.  We built
some sort of metric software that helps publishers track this stuff at
the story level and pull it up in new ways.  We're pulling Google
Analytics and only the social APIs.  I'm generally curious are there
other things I can add to this mix.  We're making this cocktail of
metrics from different places.
     I have one particularly weird Omniture bug that I'm trying to
figure out that no one else will care about but I'll ask you?
     >> Stijn can probably help.
     >> My name is Fergus.  We work with impact and metrics.  These
guys are working on part of this.  That is primarily why I'm here.
     >> My name is Allison and I work -- I'm a web developer and I
work at the front line club and we underutilize our analytics
packages.  We run 200 events open to the public every year and we
don't pay attention to engagement on our website.  I'd like to learn
to hack around a bit with analytics.
     I'm having horrible problems with my wireless.  I can't get on
the network.  If anybody is a networking GURU and wants to help me?
     >> Is that a general problem.  Does no one have wifi?
     >> It's been coming and going.  Working with APIs without the
internet.  That is fun.
     >> Maybe Sonia, would you want to start.
     >> I wanted to get a sense of where we're at.  There are some
people interested in Google.
     Sonia is going to talk about Facebook stuff.  Sonia was an open
news fellow last year with Stijn and I at the Boston Globe and did
incredible work with Facebook.
     >> Another one is stories added.  That means you may have (lost
internet connection).
     (lost internet connection).
     You can export 400 or 500 rows each time.  If the newsroom
publishes a lot, it can only get ten days of data.  If you use API
it's almost unlimited.  You can get dates and all the posts from those
dates.
     And the other is face query language.  I can show you how to use
that later?
     >> Aren't they getting rid of that with the version 2.0?
     >> I just tried it.
     >> I don't know if it's been depreciated.
     >> I just tried it.
     >> It works now but I was thinking ...
     >> For a while it didn't work.
     >> For the next year it's going to work and then it's ...
     >> As long as you have it.
     >> There are two typings of insights, one is page insights and




the other is post insights.  Have you ever played with those two?  Let
me try to distinguish them.  Post insights is once you post something
there is a comments likes about this one post when the post was
published.
     The page insights is aggregate.  For you page you get 1 million
page views today or 100 comments today.  It's highly aggregated.  The
good thing about the insights you would have a better sense of your
audience.  Where are they from?  Or even in the city, say Texas or
Massachusetts.  Or how many of the fans are online.  They added that
last June.  If you map out the curve, say if you try to divide the
fans per hour by the total fan number, you can get the percentage.
For instance during a peak you may have 30 percent of the fans online.
Following your advice you have to think about the session.  Maybe it's
50 minutes or 30.  No matter what that is a rough sense.  If you're in
the peak you have 30 percent of your fans online.  And then at night
you may have 10 percent but generally day after day it's a big curve?
     >> Here I gave you some sense about very simple metrics combining
raw data.  When I look online very often people talk about
conversational ratio.
     >> Can you say the different between likes, shares, comments and
impressions as base book defines them.
     >> Impressions are the unique, either it's unique or absolutely
total means I'm a very passionate user of Facebook.  I will be counted
ten times a day.  That will be, I get ten impressions of this
particular page today.
     If you talk about unique user, I'm counted as only one user.  I
don't contribute to that part.  If you want to know, am I building up
my audience you look at a unique user.  You see a rise or a decline.
But if you want to know if some of the stories are really popular or
not, you look at the total impressions.
     Maybe some people, okay, I left a comment and want to come back
to debate with people.  Then you look at impressions.
     And also, likes, shares, and comments are just numbers.  You can
see on the surface of Facebook, it's public.  Not only you but
everybody can see it.  The impressions you need the privilege with
Facebook insights.
     Suppose you can see the number of impressions.  And then if you
divide like, shares and comments with it, you can get a ratio.  Very
often impressions can be one million or those can be one or two
hundred, at the most one thousand most of the time.  And some people
give a name.  That is conversational ratio.  Even though this story
has reached a lot of people, are people engaged.
     That is why some of you have mentioned that you want to
understand how people are engaged in some stories and then the next
question would be, why some stories are more engaging than others.
     Next metric I want to talk about is diffusion ratio.  There is a
dilemma here.  Say the Boston Globe, I talked to associate editors
over there and a woman says go Sox.  That works.  You cater to your
core readers well.  But a problem is nonfans wouldn't say go Sox.
They don't care about the story.  The diffusion ratio will tell you




how many new readers you will get with this story.
     Suppose you have the privilege, you can use the number of nonfans
impression divided by the total impression.  I have this much amount
of impressions, part of it is from the fans and the other part is from
the nonfans.  The nonfans are potential fans the next day.  You want
to get a lot of them as well.
     But if we -- so definitely this is less than one.  If we use one
and then minus that ratio, you can get a shareable this story is.
Shareable ratio.  We calculate this because sometimes some stories are
controversial but not sociable.  On social media people share a story
that are very positive that will show your best side of yourself.  Say
it's about fashion, fine art, interesting things, cool devices.  So
people will share that.  But if it's controversial, people will stay
within the post and comment on it.
     We can measure the shareable ratio.  Then another one is
likeable.  Sometimes there is kind of like sentiment conflict.  If
it's about disaster or war or murder, have often people say I cannot
like it.  Even though I think the story is right, I just cannot like
it.
     We will see some examples next.
     Again, we tried to divide likes with engagement.  Engagement is a
raw number given by Facebook.  How many people have pegged this post
anywhere.  That is engagement.
     And another one this is a funny name.  Tantalizing ratio.  I
think that's funny.  It's a link click.  Link clicks is within the
insights.  Divided by total clicks.
     Sometimes it's a story, think about Huffington or Boston, five
things you should do in Philadelphia.  Ten whatever, one hundred
whatever.  That means the information is not complete on Facebook.
But they give you a -- if you click it, I'll let you see something.
But I'll never give you a full picture.  That is why it's called
tantalizing.  People say, that's interesting, I'm going to click it.
     If you reverse it that is information completeness.  How complete
the information is.  If you publish a score of a game, two to one,
somebody won and somebody didn't.  People won't click it.  Why do you
click it, people know the result?
     >> These are fantastic questions and ideas.  Is this commonly --
common language throughout the Facebook analytics community?  Where is
this from.
     >> Out of my head.
     >> I'll try to write it as a blog post.
     >> First conversational posts.  In terms of the Boston Globes,
when you mention the Red Sox, people are like yeah.  The next is
missed conversation.  They're about politics and other things.  People
don't share, don't comment, don't like.  They're just like bombs that
go down.
     Most shareable.  Shareable things about social media are social.
You want to socialize with your peers through stories.  And then of
course concerts and fashion and then -- they're very sociable and show
the best side of yourself.  You may have another self online and also




the red Sox because it's positive and you would like to share good
news and also Paris Hilton, like gossip, I want to talk about with my
friends.
     And then least shareable things are very often negative.
Allegations about a murder suspect.  Accused of lying, guilty,
charges, justice and suspicion.  When you have negative words people
don't want to share it.
     Most likeable posts.  They are very, very positive but there are
some subtle difference between the likeable stories and shareable
stories.  Like is a cheap commodity on Facebook.  Comment you have to
write.  And share you have to click and share.  Like is another
phenomenon on Facebook.  Red Sox winning streak, losing streak.
That's the pattern of likeables.
     The most tantalizing or the least information.  Serious car crash
and what.  Your have to click.  And then critically acclaimed and then
you have to click.  And 10 fastest or growing and declining.
     This is kind of like (inaudible) you have to just keep in mind
this promise.
     And find one near you.  You have to click it.  And no longer post
job listings.  Why.  That is weird.  The story is not on Facebook.
And top things you have to do.  That's not on Facebook.
     Least tantalizing.  That means the information is incomplete.
Which company, this company, what's the price, that's the price.  Why
is it necessary to click the link.
     This is the last two slides for the metrics.
     Most diffused posts.  People want to share it.  That means reach
a lot of nonfans.  Nonfans means they're not necessarily in Boston or
in the region.  Because the Boston Globe is still a local newspaper.
That means if you cover some national news or international news,
other people will also pay attention to sex tape star.  That is like
an international star.  Red Sox and this is a game between two teams.
Fans from the other team would also pay attention to the story.  The
wonder years.  These are all names.  Famous not only in Boston but in
the state, the country, and the world.  That is why you have this
story diffused more than the others.
     The least diffused means they are really favored by the fans.
Red Sox.  That's the pattern.
     Here we have the question of a social sharing dilemma and the
strategy.  If you want to cater to core readers but nonfans may not
like the story.  That is one problem.  Another problem is either you
want engagement on Facebook or actually you want to get people to your
own website.  That's another question.
     And also you want to share some bad news in order to attract
attention.  Or you want to share good news to attract likes and
shares.  That is another dilemma.
     Also we need to understand that we have to give the context to
the news stories.  Stories perform differently.  How we can give
appropriate credit to our journalists.
     Last year this is a graduation where I wrote this post.  The
previous metrics are mostly based on this post.  I tried to quantify




the issues I was covering in this post?
     >> I never noticed that picture.  It's a nice picture.
     >> Thank you.
     >> After hearing about those metrics, do you have any ideas for
your own metrics?  Likes, shares, any combination of things?  Yes
please.
     >> You left, well maybe it's not available on insights but which
people use Facebook is to get participatory creation.  Post your
photos and we'll put them in this bank.
     >> We don't do that at the globe.  That's the short answer.
     >> Other things you might be interested in.
     >> I've noticed that base book recently offered insights into
video.  Like how many segments people have watched.  Some newsrooms
post a lot of video.  You should check the time span.  How much people
watch through this video.
     And another thing is photo, photo views.  Not only clicks but
photo views.  Those things also would matter?
     >> Know at some point you said you were trying to track when
people clicked the most?
     >> Yes.
     >> Have you gotten any farther in that?
     >> I tried to analyze the data.  I benefited from Brian's code.
The code to grab data every ten minutes and I built something upon it.
It's not only about Facebook but also You Tube.  If a story takes up
within the first two or three hours you can see a sharp jump.  And
probably the story will ...  Later.  If it doesn't take off, that will
just -- it will never take off.  The same for You Tube.
     The first jump is really important.  Another thing is if you
share a story, it doesn't jump and you have confidence in the story,
this should be a popular story.  Maybe you didn't share it right or
with the right picture or language on Facebook and try again after a
few hours.  After a few hours it's almost like a new story.  Facebook
would bury older stories?
     >> Do they dock if you post the same link?
     >> If it's too fast, yes.  After a few hours it's okay.  If the
story didn't talk off, base book will bury it any way.
     >> One interesting metric that I experimented with at the
Guardian was you can get at the filtering based off of some of the
metrics that are on Facebook insights.  So some posts are filtered out
more often.  Facebook will hide them from more people and other posts
get shared with more people.
     >> That's why the first couple of hours is really important.
Facebook I don't think has that kind of sophisticated algorithm to
recognize (inaudible) so what it depends on is people's behavior.  If
a lot of people click share and like, Facebook goes that is
interesting and gives it a higher ranking to the story.  That is --
it's like self-reinforced and it goes up.
     >> What I heard is Facebook, the way they handle it is to show
your post to a small subset of people that see your page.  And
depending on how it performs in that small sample size, Facebook will




dictate how it disseminates it to your larger page audience.
     >> There is a -- information flow there.  At the first step only
the fans will see the story.
     >> Only a small subset of those fans.
     >> It depends on how many people are online at the moment.  There
are many factors.  That is why you should first look at the curve of
the fans online numbers and then decide which is the best hour for
you.
     >> Cool.  Thank you so much ...(applause)...
     Stijn, what do you think.  Should we break out.  Should I talk
about Twitter?
     >> Yes, I'm looking forward to it.
     >> I didn't prepare much of anything but just talk about my
strategy working with Twitter and a couple of things I have learned.
     I spend a lot of time working with the Twitter API.  Whether it
be for work.
     Twitter's API at least when we're talking about getting sort of
analytics-like data, I'm not going to go into how you make a bot or
Tweet.  I'm going to talk about strategies you can use for getting
more value out of Twitter.
     The first thing that is the coolest thing and Sam talked about
doing this is the streaming API.
     What the streaming API lets you do is lets you search for
anything someone is sharing on Twitter in realtime.  You can subscribe
as a feed and get every relevant Tweet.
     There's some limitations to that.  If you search for nothing, you
get 1 percent of everything on Twitter which is probably too much for
your computer to even handle.  But if you search for something that
represents less than 1 percent you get everything that matches that
search term.
     The easiest thing to do is doing like domain mentions.  How does
this work?  Well, you don't actually -- you can't actually search with
a period or like a slash on Twitter.  So what you do is you create a
search term that looks like this.  Say I was looking for NY times.
It's NY times space, com.  You can get to the idea that this Tweet
will have NY times and com in it.  If you're interested in the short
link you do NYTI MS.
     >> Using a period -- am I doing something wrong?
     >> It doesn't pay attention to the period.
     >> If it ignores it, it's the same.
     >> Yes.  The problem with this, the problems is that there are
times that people use Bitly links.  If they shorten it as a T code
link, the default Twitter link, you can search within that link.  Even
if it shows up on the front end as T code blah, blah, blah, if you
search for NY times it will code that.  If you search for a Bitly link
or whatever, you can't search for that.  You can say give me every
Bitly link, too, and I'll figure out what to do with it later.  You
might then go over 1 percent.
     The other way -- obviously then you can search for anything you
want.  You can search for mentions of your organization.  The great




thing is then you can store this and analyze it after the fact.  The
other thing is just a search.  So you can do the same exact thing here
except in this case you can go backwards.  So you can -- you say back
fill mentions of domains or something.  You use the same syntax here.
     >> That doesn't go back that far, does it?
     >> I forget what the limits are.  You can go back pretty far.  It
might be up to like 1500.  I'm not sure.  I can't remember that.
     One thing that I really like doing is working with lists.
     >> Why would you do back fill instead of Topsy?
     >> Topsy doesn't exist anymore.  You don't have to pay.  We're
doing free Twitter.  You want to pay you can go to a licensed
provider.  The biggest challenge with Twitter is trying to get data
from two years ago or something.  We won't have to worry about that
when the library of congress gets involved.
     Does anyone realize every time you Tweet that is going to the
library of congress.  Everyone is in the library of congress now?
     >> It's on tape.
     >> Like micro film.  I can go and look up my Tweets on micro
film.
     >> They are not allowed to work with anyone externally on it.
You don't have to worry about that so much for now but it's all there.
     >> The other thing I like doing with Twitter are lists.  Lists
are cool because they're a nice hack for getting a lot of information
from Twitter without hitting the API limits.  The way lists work is
you can have a bunch of users, right, and you can put them in a list.
And any time you want to get any Tweet from any user, that equals one
API call.
     And I think the limits are that you can have as a user 2,000
lists of 5,000 members.  Which means you can get -- what is that
100,000?  A million.  I only do counting not multiplication.
     That means like if I wanted to get every one of those users, I
would make a million API calls and now I only have to make 2,000 API
calls.  So that's one reason it's cool.
     The other reason it's cool is you can get this idea of
communities.  So a lot of the hard work has been done here.  There are
lists out there that people have created.  Like journalists or every
journalist at The New York Times or every member of congress or -- I
don't know, every important person in the climate change scene.  That
way you get an idea who are these communities of people.  And then if
you team it up with like this sort of stuff, right, you can be like
when are people in congress Tweeting my articles.  When are people in
the climate change community Tweeting my articles.
     And that gets at something more valuable than just like a number.
It can give you sort of something more meaningful.
     That's basically it.  You can also get a whole user's time line
but I would recommend going with this.
     The API rate limits are every 15 minutes you can do 180 calls.
So that boils down to I think like one call per 10 seconds.
     And then what you have to do is you have a script, you have to
sleep for whenever your rate limit is met.  But the library that I




wrote for working with this stuff is (trailed off ...)
     >> What did you write it in?
     >> Python.  That is basically it.  Any questions?  Any things
that people have wondered about Twitter?  The other thing is URL
unshortening is the absolute hardest thing.  What you literally have
to do is you have to recursively open the URL until it doesn't look
like a short URL any more and that is a slow and error-prone process.
My library does that too.
     >> What's the name of your library?
     >> Bird feeder.  It's on the news links repo.
     >> You can use pearl for one line and shorten it.  The creator of
pearl just put a comment -- blah, blah, blah and then space.  Space in
the protocol is the last part of the URL that you use for that
request.  The URL is based on the code.  So the status code is not
200.  It's 300 something, temporarily removed or redistricted.
     >> I use the location header.  That works.  And it's not as heavy
as downloading a whole page.
     Any other questions?
     >> How do you translate this to editors?
     >> We're just talking about getting the data.  Things I do with
this ...  Like being able to archive every single share of your
contact.  Super useful.  You can search through them.  Sam has done
counts.
     >> I was using it for a little while and the benefit wasn't that
great.  But I set it up to match it up with each post and we knew who
the author was of each article and every author can log in and get a
list of all the Tweets that mentioned all of their articles.  It's
before we had an annotation system.  Twitter was the comments.  And
then you could go on there and reply to people on Twitter.  You can
add a watch list.
     >> You can use Tweepdash to do this.  The problem of course is
that data is gone.  You don't store it anywhere.
     The other thing that I like doing with Twitter, working off of
lists and also users is doing stuff like if you have a list of every
journalist in your newsroom, you can know how much your own
journalists are sharing your content.  Which is I think a really
important approach because especially for something like courts.
Because so much traffic is being driven by social, if you have a team
of journalists, those are like, that is like your street team.  It's
like a bunch of people that can go share your content.  And when I was
working at The New York Times looking at that, it turns out that was
superimportant for how an article ultimately performed.  Not even just
did the main account with 8 million followers share it, but did Chris
share it and all these other people share it and if those people share
other articles they would get traffic, too.
     That is a nice way of extracting a little more value out of
Twitter than what is readily apparent?
     >> That was part of the innovation report.  They found out, they
wanted their journalists to share more than they were actually
sharing.




     >> And interact with users and stuff like that.  Be kind of, I
don't know, spokes people for the organization.  Okay.
     On that note maybe let's start hacking if people aren't already
exhausted.  We have like an hour?
     >> More like half an hour.
     >> No, it's 5:30.
     >> So I mean I know Sam has something he is interested in.  Who
likes codes and wants to learn some stuff right now?
     >> Can we have a five minute break?
     >> Yes.  I want to know beforehand, if there's not many people
who code and don't want to work on stuff, then we'll figure out, maybe
let's figure out what's the most amazing way we can combine everything
we learned today into the super-dashboard of the future.
     >> That's my dream.  We should have a dashboard.
     >> Of the future.
     >> Let's take a break and come back and we'll do that.
                              - - -
     Break
                              - - -
     (doing individual work ...)
       I guess we're kind of done.  Thank you all for coming.





























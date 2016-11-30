This is a DRAFT TRANSCRIPT from a live session at SRCCON 2014. This transcript should be considered provisional, and if you were in attendance (or spot an obvious error) we'd love your help fixing it. More information on SRCCON is available at http://srccon.org.

Captioning by the wonderful people of White Coat Captioning, LLC
whitecoatcaptioning.com



     July 24, 2014
     Closing the Gaps: Let's identify the holes in open data, then fix
them.
     Session leader:  Waldo Jacquith
     >> This is a gripe session.
     >> That's why I'm here.
     >> A metaphor occurred to me earlier, I'm in the habit of, I'll
bring -- I got a new office last December but I took a month off work.
I brought all the stuff from my old office home and put it on the
railing thing at the top of my stairs in my house and got a new office
in January.  And finally last week my wife says, so, about all the
O'Reilly books on the ledge, were you going to keep them there or ...
But to me ...  That's where they go now.  I stopped seeing them.
     So it's been my experience at a lot of levels, not just my home,
I've come to accept things that are terrible.  That is how you deal
with it.  That's how you get the data.  That is what it's like to
propose a correction to something or what it's like to install CKAN
or the process of getting parcel level geo data for multiple countries
or whatever.
     So the director of the U.S. Open Data Institute which is a small
organization, started in January, trying to find the things that make
open data awful.  To produce or consume for government, producing it
or consuming it or for people outside the government trying to consume
it.  We're trying to find those bumps and smooth them out so it
becomes simpler to produce and consume mobile data.  So that there's a
project that Greg and I were talking about working with the open
knowledge foundation to make core changes to CKAN to the data
repository that is awful to install.  It's gotten better but it's
unpleasant to install.
     We're going to pay for some developers to make a website where
you can launch a CKAN instance and fire up an easy 2 server or a
cloud hosting service and boom you have your repository and let you
host its for free for two months.  That is going to make it possible I
hope for hundreds of municipal and state governments and agencies to
have repositories:  Now they don't have the IT services to house the
software like that.  There are a handful of projects like that.
     Another one that sounds weird, open hunting and fishing data.
It's a real problem for people who want to hunt or fish and I would
ask for a show of hands but none would go up.  Seriously?
     >> Used to.
     >> I ask who hunts and no hands go up.  Millions of people hunt
but knowing where and what and when is very difficult.  So we're just
about finished.  In a couple weeks we'll work with this data on
developing an initial standard there.  This is like a thing that was
not going to happen otherwise.
     We tried to provide resources that would not otherwise exist in
the private sector any time soon.
     What I would love to talk about here and learn about here, for
those who produce or consume open data or deal with it in some way
about what is awful, maybe awful in ways that we've forgotten about




because we're accustomed to it.  My organization which has great
resources maybe can help to solve.  We hire programmers or bounties on
open geo data or working with vendors to say here is an opportunity
that you didn't know existed.
     A thing I will mention to get things started is this sharing and
syncing of large data sends.  If you tried to do that using GIT for
instance you know it doesn't work.  There is a point with the size of
data where it's impractical to sync a big dataset.  Max Ogden has a
program called DAT and now it's the open data institute project.  I
get to facilitate max doing brilliant work.  We're creating a free
open source program called DAT making it easy to share data and
datasets and accept full requests and revisions and so on the way you
can with anything else, but the scale is better to bigger datasets.
There are similar clever things that it does because Max is very
smart.  But that is a project, that's a problem that is frustrating.
And when I talk to government and why they're scared about publishing
data and scared about people finding mistakes and what to do about it,
it's a problem.  Joe, if you find a mistake in census data you do
nothing?
     >> I wouldn't know what to do.
     >> This is like a serious problem.  It's going to be more and
more of a problem as government publishes more data that we need to
figure out how to deal with and maybe DAT is the method or something
else will be for sure.  But at the moment it's a terrible mess.  With
bio data it's rough, if you have a complete sequence genome and you
only need 10 percent of the file, how do you get that 10 percent.
     >> We're talking about getting small segments of census data.
The projects that we've done -- you can get a lot of it and if you're
able to deal with all the data you can slice and dice it.  There are a
lot of datasets where there are fundamental cuts you have to make to
make it manageable and there doesn't seem to be any best practices
around offering that to people.
     >> Seems like you can slice it state by state but what if you
want one column for all states.
     >> One example of a dataset that I played with that exhibits this
problem and I don't know it well, but the CDC has a dataset called
wonder which has health indicators.  I was curious about drug
mortality.  How many people do die from these things.  It's really
hard to find it.  But their whole thing, there is no way as far as I
can tell to get all of the data involved which may be because it's not
feasible because there is so much of it but also the interface for
making cuts through it is hard.  If we can articulate some ways of
framing that problem, maybe you can make tools to make it.
     >> Is that a problem that only we haven't solved as civil yarns.
Sounds like business intelligence they probably have OLAP standards.
     >> That is a good question.
     >> We tend to reinvent corporate stuff that maybe has been
figured out for ten years.
     >> That is because of the cost.
     >> The cost of what they built is extreme.  If you have a cluster




of ...
     >> Somebody solves a problem, like real estate data and it
applies to Genovics too.
     >> A potential comply cater of that is open datasets are less
well linked.  Like OLAP environment, the corrections between the
datasets are made clear I think.
     >> Here is a pinpoint with open data, I think we need something
like everything that starts with open Taxonomies where we have a
website with cleaned up versions of code lists for everything.  There
is a global standard for budget data, right.  Classifications of
functions of government and just having one clean version of everyone
who works with data cleans up open data would refer to.  That would be
useful.  I wonder how many domains that would apply to.
     >> What about the link to open data stuff that uses these
classifications is that relevant.
     >> It probably is.  I don't understand it well enough to know
whether it does taxonomies.  I mean codeless.  How many code lists are
there for describing the different types of accounting categories in
the government or how many code lists for describing whatever you can
hunt.
     >> Honoring the idea that we shouldn't debate too much.  But I
have a real skepticism about top down things like that.  I feel like
getting coordination is hard to do.
     >> If you want to do it bottom up you need to define mappings.
     >> I think to note as a problem with data is clear mappings
between linking datasets, however it gets down, it's harder -- it
would be great if it was easier to link data.  I recently was talking
to folks about the census, I realized a way to summarize some of the
challenges that we find working with census data is they provide the
data for data analysis and we want to be application builders.  People
who come from an application standpoint have different needs for data.
Unique identifiers and the census makes it really hard to identify
things.  If you're writing an app, we know that is the key.  It's not
always the case but for a lot of cases the data wasn't produced to
make apps from it.  It was produced for people to analyze it using
much more stable methods.
     >> What also makes it tough with data, an apartment building that
I lived in that went condo for a while and then stopped and all the
residents were above 80 and I was 22.  I learned not to ask my
neighbors how are you doing today.  Because I hear, my gout is acting
up and you should have seen my bowel movement.
     There is no off button for data people.  You know what is
interesting about link data?  Oh no, what have I done.  There is no
way to turn them off.  I did something where I had to unsubscribe, I
think I was called a Nazi at one point because link data was not the
appropriate standard.
     Data might be swell ...  What are some other painting points?
     >> That's a huge point.  Referencing of things.  Because in
the -- we have this United States project that references legislators.
I just pulled it up, there are 16 different possible IDs or 15 ID




systems that we have to crosswalk.  We don't have to.  But we provide
a crosswalk ID for people who should have one.
     Right?  So?
     >> People are an extreme case.
     >> People are an extreme case.
     >> You mean identifying ...
     >> Yes.  But like this is what we, these are some of our needs.
Whether it's people or -- even places.  Like when we were starting
with open elections and Joe knows more about this now than I do, but
there is someone that told us the census burro was going to move away
from this ID to this and this ID.  Okay.  I feel like the painting
point is not to beat the familiar horse, but what a site like that
should be is here is what we mean when we say these things and here is
how to use these data.  The lack of documentation and/or agreement.
     I feel that's a really ...  Really hard road to get over before
you can start using something?
     >> So for code places that use this place, hooks in for
descriptors ...
     >> Yes.  And part of that is greedy.  Saying, hey, make it easier
for me to do stuff so I don't have to work so hard.  Part of that is
efficiency and where we have more accuracy and we all know what we're
talking about.
     >> Getting a commitment so certain discipline to producing the
data.  The census bureau, the meta data, they publish that as a spread
sheet.  If you want to do mass operates against thousands of columns
of data you go to the excel problems.  Maybe pushing one to push
something back up, you got the indent value wrong for column C of this
weird spread sheet.  But also saying Meta data is a kind of data
itself and we need a rigor about having the universe of potential
values here.  That kind of stuff.  They don't, that is not how they
think about it.
     >> This is much wider than the scope that you wanted to go forth,
these aren't necessarily different pain points now but things that
will be happening over the next one to five years that are relevant to
how we think about open data portals.  One is that most data releases
are done in terms of repositories that somebody goes and gets.  Maybe
refreshers or updates or whatnot.  That tends to reflect the fact that
a lot of data comes from administrative processes.  It may be that
data comes from different processes.  Like what is happening through
the census.  And that means that streams of data are a much more
relevant way of collecting that.  It's not a big issue now but it may
be something that happens in the future.
     Related to that, and this might be way kind of upstream of where
you want to be, is the systems and technology and to a certain extent
the processes that produce data are increasingly being privatized.
They fall outside of what the government can say.  If you take a look
at the shocks system (ph.) it's a series of microphones that detect
where gunshots are.  Initially the first round of that was something
that police officers bought and ran themselves.  Now it's a service
provided by a company and therefore all of the systems fall outside




something related to a government and that is happening in
infrastructure system after infrastructure system.  It's not a
technical solution.  It might be an advocacy thing.  When a government
signs a contract it should say wider access to the data.  That's it?
     >> That's part of a larger ongoing problem that I've seen of
procuring problems with the government.  We see that procurement often
places no obligation on the contractor to do anything by way of
licensing data or the software that is being created or any level of
openness and solving procurement is a big difficult problem.  Just the
one small change of requiring that when you are out sourcing the
collection of data to a third party for government purposes, that data
can't just be for the government.  It has to be for the public, too.
     >> I suspect that it's not a malicious gap.
     >> Although I think that is often serves those vendors well as a
result.  Whether or not they intended for that to happen.
     >> I don't want that to be out of the scope of this discussion.
     >> Out sourcing would almost make it easier if there is a
standard.  The government wouldn't be doing it for themselves.  These
guys want to keep their contracts.
     >> You would think that except when you deal with many, many, at
least in the United States.  In other countries with a sensible
representation -- or sensible execution of what we call federalist
government, in the United States, it just doesn't.
     >> If there were clearer standards than businesses would move to
provide a scalable service to meet those standards.  The problem is
standardization is challenging.
     >> The flip side is one key component to a good vendor lock in is
a 1983 binary format that nobody else has.  That's a great business
strategy to not follow standards.
     >> If you get a big customer that says we want the data in this
format and that is standard and company X does that.  Then when they
go out to all of their other clients, this is the standard that we
provide data and Joe Blow doesn't.
     >> You can't use the word "standard" without a data standard.
This is what other people use and you need to buy it too.
     >> It's possibly to see the professional open source world
applying to civil technology and data provision.  They're making a
living on open standards if the government adopts those open
standards.
     >> The great thing about standards is there are so many of them.
     >> Are you seeking broadly like broad pain points or specific
pain points?
     >> Both.
     >> For specific pain points is it worth raising essentially, if
my problems aren't everybody's problems.  We all have our own unique
set of problems that we run into.  Not to be too challenging, what is
the point of us raising our own issues?
     >> Because I want to fix them.  That's why.  For instance there
is -- just to give a specific example, there is some model legislation
in the uniform law commission put together and states are gradually




passing.  Almost all states will pass it.  And it requires but four or
five states it passed so far.  It requires any states who adopted any
legal information that they publish be of verifiable.  So that means
if you get a -- if there is a court decision they release online,
there needs to be some mechanism once I have a copy of the court
decision to check against a master or whatever mechanism, to say this
is official and it's unchanged and no word or character changed.  All
of these states are moving to only publishing legal data as PDFs.
That's a disaster.  So we outsourced to Dan Schultz.  They got the
contract to put together a really simple repository system for storing
hashes of these documents.  Basically the nontechnical version is
anybody with a file can go to the state's website and say I want to
compare it to the master repository.  It either says yes, that is
exactly what we have here or the document is changed.
     >> Isn't that called GIT.
     >> Good luck getting it, GIT.  We have to make it easy to get
documents into the system and for people to verify against them.  It
was a great system that was put together for 7500 bucks.  So now we're
working with states to put this together and find vendors.  We are
trying to find vendors to sell hosting for 100 or 1,000 or whatever
dollars per month for the governments that want to sign up and install
the software.  It's a very specific problem.  We solved it by
addressing that problem and making it possible for states to release
open data that otherwise would have been by law just PDFs.  So I hope
that we're able to address that.
     Very specific problems can sometimes wind up with solutions that
help in bigger ways than anticipated.
     There is an objection that we've been seeing, governments who
say, gosh, we'd love to share data but if we gave away raw XML of
legislation, somebody could download it and change it and redistribute
it.  And we wouldn't know -- so we can't possibly give away?
     >> Or the public would be confused.
     >> We're scraping that data anyway.
     >> We get that with congress.
     >> The other reason for the software is that excuse has to go
away.  We have this software, you can use it.  That allows the data to
be verified and that excuse is gone.  That is a nonsense excuse, that
is not really the problem.  The real problem is they don't want to
release data for other causes, mostly because it's scary.  So they
cite verifiability as the cause.
     >> I wonder if it's worthwhile, what we found in gathering
elections data from around the United States is not everybody but a
decent number of states use -- there is like four or five vendors that
seem to be -- maybe three that seem to be dominant.  People use many
different systems.  But of the vendors there is like two or three or
four.  And there are like we found, you can just search around to find
people who have run tools and pry stuff out of the common systems.
But on a very local level.  I wonder if it's worth it for your
organization to sort of pool -- okay, these are the easiest targets
that will get us the most data out.  In other words like if I'm




writing a scraper for elections in Arkansas but it's used in six other
states.  It's worth the effort and time to make a tool that is generic
enough that will result in the maximum production or freeing of data
for the minimum effort.  Clarity is a vendor for elections and it's
used in probably 8 or 10 states.  Like if there were sort of -- we're
probably going to end up writing one I suppose.  Those are the kind of
things where it's common vendors used across the United States that
produce the data but not in a useful or easy to get at form.
     >> A couple weeks ago I spoke at the national secretaries of
states conference in Baltimore and then I had lunch with the secretary
of state in Vermont.  Any leader of Vermont you can just call them up
and ask them to have lunch.  Yes, I have nothing better to do at
11 o'clock on Wednesday.
     They hate these vendors.  The competition with the three or four
vendors, nobody is like I love my election results vendor.  One of the
painting points that we're trying to remove for election results is
we're looking at getting some states to pool their resources to create
something open source.  A few states?
     >> This quasi monopoly can be a great place to push through a
standard.  In Germany we have only three different vendors for counsel
document management systems.  So there is 11,000 municipalities in
Germany and they all have a piece of this software.  Except for one
cousin that has ...
     >> I have been that cousin.
     >> A friend of mine, I thought it was hopeless but a friend of
mine started talking to these vendors and they have a speck and a data
standard and they're going to all release data in the same format.
     >> And probably efficiently because it's German vendors.
     >> I don't know about that.  We like to use money and procurement
and that stuff.  So it's going to cost.  It's going to be split across
a thousand municipalities for each vendor so it's okay.
     >> The time points, the ones that you've identified, I mean --
     >> We found some very big pain points and very small pain points.
I'm trying to think of a few of the active projects.  I'm not going to
try to dig it up now of the active projects they're working on.
     The biggest pain points seem to be not in the consumption of open
data.  The people doing it now are clever.  The people that come to
events like this and used to dealing with terrible input.  The pain
points are more in the output of open data, the government end of
things.  We're at the point with the production of open data with the
exception of the federal government, but on municipal and state agency
level where they have been told, you need to make open data happen.
We have no budget.  We have no internal ability to do this.  But you
do have to do it.  And so what they produce if anything is terrible.
     Like the state of Virginia launched an open data portal at
Virginia dot Virginia dot Gov.  Somebody put it together on the front
page.  It's like a list of 8 excel files.  And I'm working with them,
I have a two-hour meeting.  I and the deputy secretary of technology
is going to work on getting CKAN installed.  It took six months to
get permission to put up a virtual server.  It would have costed 4,000




a month I think.
     What a really, things that are simple for us are very difficult
in government when they have no resources.  Often when open data
happens it's because one or two people in government, somehow produce
something.  When they finally get it done, often the response is this
is not good enough.  This sucks, you should be embarrassed.  We worked
weekends with no resources, can you just say thank you.
     When they work through those awful experiences and produce
something, even that is usually not exactly richly rewarded by the
public.  Those are the things that we're trying to simplify?
     >> I'm curious in Germany did that standard get developed because
you went to the government and said you need to develop better
standards or did you go to the vendors as a citizen and say this would
be a fantastic thing.
     >> It worked through these round tables.  That is what solves it
in that case.  Bringing together people from city government and
initiatives and the vendors and making them talk it out.
     I don't know why that worked.  It shouldn't.
     I wonder, about the municipalities and them releasing data, one
big problem is there is a guy whose job it is to set up the open data
portal and goes to all the different offices in the city and says do
you have any files that wouldn't find the public to look at.
     Open data is for shit but yeah, I wonder what the downside and
upside of having a standard data list would be.  This is the
prioritized list for what a city should release on the data portal and
here are nice examples of good formats and that kind of stuff?
     >> That can be quite well served for the benefits for the city
and the stake holders releasing this stuff.
     >> We've started on a project on our U.S. Open Data Institute.
Get hub/open data.  A document called how to.  It's just a very lose
frame work now.  It's a book that is broken down by department.  If
you're in a social services department, here is the data that people
want.  It's a terrible question but a question that I get all the time
from government agencies, how do we know what people want.  And I
started telling them, forget what people want, what do you want.  What
are you sick of people asking you for.  What do agencies and other
departments need?  Great, put that up.  Satisfy that first.  And then
go to geeks and find out what we want.  What we want is not
sustainable.  What is more useful is internally what you want.
     >> There are city portals that opened up around the country.  If
there weren't preexisting guidelines what was their criteria.
     >> Really like what is lying around.  For the state of Virginia I
seriously spent a couple hours with Google.  It's ridiculous.  It's
not a comprehensive inventory.  When the file is updated, who
reuploads it to the data repository.  It's a unsustainable system.
And then the rest of us go to the data repository thinks here is all
the data.  No, it's out of date and not close to anything.
     I found in Vermont when I was speaking to them and yelling at
them on Monday evening, they have this data repository and it looks
for all the word like Secrada.  Secrada set up the first site and




they're like hey, do you want to use this?  Yep, we're done.  We have
a dataset now.  It's like a demo.  It's not a good system?
     >> This can happen at any level.  The European commission running
128 countries basically.  They started a data portal and didn't have a
basic understanding-over the data they already published in other
places.  We sent them a list saying here are 20 amazing datasets that
you already published, can you please include them in your data
portal.  In all of Europe there is a directive that any government has
to maintain asset registers.  They have to have lists of all the data
they have or all the information access they have.  Nobody really
knows how to do that or -- it would be interesting to find out how to
do interesting registers for a city to know what they have.
     >> In Chicago they worked with Shapen hall connected to the
university of Chicago.  They called it a data dictionary.  It was
meant to be what you're describing.  It's unsatisfying.  It's worth
looking at.  Maybe this is -- when we say this is not exactly what we
mean.  I don't think it stays up to date.  It doesn't integrate with
the city's data portal.  You're right.  That is a good thing to try
and help explain to people what we mean.  I just wanted to point out
in the write up for this session you talked about how we're going to
fix these things.
     >> Yes.
     >> Here is something that I encountered at the federal and state
level.  People don't know how to produce CSV files.  Part of the
problem is for example the federal election commission does this.  You
can grab CSVs from their site and they load fine in excel.  And
because people are idiots and Microsoft has people that want this to
work, they have all sorts of invalid files.
     >> Including a table with an invalid CSV file.
     >> It's interior double quotes.  Every, virtually every
programming language, CSVs just blow up when they hit that.  It's not
valid and you can't parse that.  I go through line by line and fix it
when I find it.  It's a terrible thing to do.  And it's a relatively
simple thing to do.  Say like don't, when you create CSV files,
they're not creating these manually.  Create them properly.  The test
here is for them I presume, does its open in excel.  If it does, we're
done.  There is something in the process of producing it, hey, that is
not enough to do or there is -- there could be another, something
else.  That's a legitimate problem that wastes time and it makes it
harder to -- for people to use it on the fly.
     >> That sounds like a great tool we can build for ourselves,
standardizing the CSVs.
     >> In Britain they're doing a lot of work on CSVs.  The problem
is all the link data that have nothing to do in their lives have
joined the CSV group and they're trying to make it a subset ...
Watching this was almost funny it was so painful.
     >> I don't think it deals with the quote thing but CSV kit, there
is a CSV clean utility that I wrote to deal with unescaped new lines
and it helps to reconfigure CSVs.  That is one.
     >> This is nice for government.  It's basically a web based




validation, hey, you're too stupid to produce CSV for the following
reasons.
     >> But gently.
     >> Here is my dream process.  I have no understanding of how to
do this.  There are a bunch of vendors and Microsoft is among them, of
software that holds documents that many governments use.  What is the
Microsoft makes some -- share point, thank you.  Share point is used
by 930 percent of fortune 500s.  My understanding is it's broadly used
for government as well.  You should be able to right click on a file
in share point and say this is open data.  And from there on out any
change made to that data, if it's an excel file, it's cleaned up into
proper CSV and published on the portal any time someone makes a
change.
     When I talk about this, the time that heads start nodding is when
I say the current process.  Take the access database and export to
excel and then you save as CSV is and go to a data portal website and
every time you change it, it saves it.  That is crazy.
     Nothing more difficult than right click, this is open data.
Because that's ...  As much as you can expect from government
employees.  I'm not trying to insult government employees but they
have better things to do.  And the number of employees with open data
in their job description I can probably count on two hands.  This is
not really their problem?
     >> Here is something that would be interesting coming from your
organization.  I would love to see advocacy for journalism
organizations proactive.  For example the police departments are
putting out an RFP for a new system.  And so especially --
specifically in new England states, a lot of things are controlled at
the county level and new England it's all at the municipality level.
In Maine, the counts don't have a standardized system.  They're all
they're little own systems, I don't understand how that works.
     Some advice or guidance from your organization on like here are
the top five police department systems.  If you're going to talk to a
police department and try to convince them to get on a system that
supported a decent data standard that can be easily exported so you're
not getting e-mailed or faxed police logs, these are five great
systems that support it and here is a run down of them.
     It would make it a lot easier for -- otherwise every newspaper or
whatever you have to go in and research that?
     >> I'm mediating a dispute now between one of the open crime
websites and a police department about that problem.
     >> They hate it.
     >> Yes.
     >> They're scared of it.  But at the same time it makes it so
much harder if we don't know what we're talking about, which we often
times don't.
     >> It would be interesting to re-examine the idea that most of
the problems are at the production of open data rather than the
consumption of open data.  The reason that there is an interest in
re-examining that, you -- most of the people that come to open data




websites are smart professionals but that maybe a self-selecting
group.  Especially for the second tier of journalism organizations.
It's not where they're going because they don't have those skills.
Just -- maybe examine that.  The suggestion from over here that maybe
the open data portal hooks in for tutorials and co-bases that are
preexisting, what is it.  The meta data descriptions may be part of
what can help that problem.
     >> If I can pitch quickly.  The project that I talked about, the
census reporter, it's that kind of thing.  In the next block of
programs here, I'm going to do something with Brian Pitts.  We're
calling it -- datasets and we're making resources for consumer.  If
you have a dataset that you love that you would like to do, come in
and talk about a way to help us do that on a small level.
     >> On the topic of audience for open data sites.  I got an
intriguing tweet from the city of San Francisco.  I had written a blog
entry a couple months ago.  Open data being by government for
government.  That should be their primary audience.  And it got really
great reception within the government.  It was like a terrible -- just
confusing chart that appears to be from an internal survey of city
employees about where they get data files from when they need them.
     It used to be they would mostly as of a year or whatever ago,
they would get it by walking down the hall and knocking on the door
and saying I need that data or e-mail.  Not by a magical repository.
But on people's USB drives.
     Half of surveyed employees said they find datasets on San
Francisco's open data site.  That's not to say it has people -- half
the city employees said when they look for data they look on that
site.  That is going to be healthy.  When it comes time to renew that
contact, the city employees will say you can't get rid of that.  That
is where our data is.  If it's valuable to them it hopefully has value
to the public as well.
     Other than that I think it's data geeks and confused people.  I
bet that is what the traffic log shows.
     I want to mention something on the consumption side of open data.
What I thought was important at the hack anon.  An employee of the
sunlight foundation produced a proof of concept for how to deal with
the crap that is PDFs.  His idea was to treat PDFs as basically TOPO
data and use GIS software to map each document page and then using the
really very healthy collection of useful open source software to allow
you to analyze each page once you're treating it as physical space as
on a map, things get a lot easier.
     He has done a proof of concept.  That one hackathon idea
justified the event.  But to my knowledge nobody else has done
anything with handling PDFs.
     >> Yes, I agree with that.  We deal with PDFs for election
results and Jeff Haine in Chicago developed a table splitter.  The
idea is it doesn't work with every PDF but those that have tables in
them, there is a deliciously named C library called LSD.  Stands for
lion segment detector.  It detects lines and line segments.  It's
useful for isolating, instead of -- I was trying to do OCR on a full




page of results.  A full table.  To do it on individual cells
essentially.  There is -- Jeff has written a sort of slightly better
than proof of concept called table splitter that I can send to you.
But it makes it possible to extract cells from a tabular image PDF and
look at pieces of it.
     >> Sounds like ...
     >> It uses a slightly different underlying technology and it's
also doing individual piecings of it rather than trying to capture ...
     >> Manuel wisely has nothing to do with texts.
     >> Because he is not crazy.
     >> But you have to get that data somehow.
     >> It's actually worked for our worst case scenario, our worst
case scenario data which is Mississippi.
     >> I have seen those tweets.
     >> Here are OCRed results that work.  So we're really excited
about that.
     >> Getting data out of PDFs is quintessential open data problem.
     >> We'd love to have people test it and say it works for this but
doesn't work for that.
     >> It seems like we went for years without getting any data out
of PDFs.  It seems like we're now getting new traction.  If nobody
does anybody interesting or clever with this GIS stuff soon, I think
we as an organization will try to figure out who we can give money to
do make something happen about this.
     >> Do you remember what the project is called?
     >> No.  We have a couple minutes left.  I will get that for you.
     >> I would be grateful if any of you all would keep me in mind
when you encounter things that make you crazy dealing with open data.
It's unlikely that you are the only person having that problem.  And
it is unlikely that it's just because you don't know enough.  Odds are
fairly good that this is just yet another of these seemingly
intractable problems that make dealing with data terrible.  And then
tell me.
     >> You're e-mail address.
     >> Waldo@USODI.ORG.  And I'm on Twitter.
     >> One final thing just to mention quickly named entity
recognition.  Once you have stuff out of PDFs most of the time it's a
piece of text.  And all we have is open CALE (ph.) I'm sending all my
research to writers and I need it to be in one of three languages that
most of the world doesn't speak.  I think that's a big need getting
better stuff on that.  MLTK and whatever is built in that sucks.
     >> At the moment we have whatever it is part to have Apache
world.  They have software and it's very hard to install.
     >> They wrap around everything.  They have 15 different things
and I don't know whether any of them do good things.
     >> Seems like we need -- Elasticsearch has something like solar
or something like that.
     >> It's going on my long term list.
     >> If you wanted to produce open data more clearly wouldn't it be
better to make explicit the named entities.  For the documents to say




specifically where there are people or other entities.
     >> The way for example the -- transcripts in Microsoft word, and
to do anything else would take years.
     >> That can be a tool for them.
     >> We should have socials in PDFs.
     >> That is a tool that Manuel helped to produce at MIT.  To
redact social security numbers from PDF.
     Thank you all for your time and insight.  I have a list of
homework.  Some very small and some huge, reforming government.  We'll
get on that.
     >> Are you going to publish the outcomes of this anywhere.
     >> I'm happy to.  Sure.  At GIT hub -- I don't know, where would
be good.
     >> I think you guys are doing cool things.
     >> Can we just register issues with pains.
     >> There is a repository on open data at GITHUB with the problems
that you have getting data.  We are trying to address some of those
problems.  That is probably the place I should put those.
     The program is called what word where.  That's the GIS tool.
     All right.  Thanks folks.  I guess there is another session now.
     >> Half hour break, another session and then lunch.
     >> I will be very hungry.





























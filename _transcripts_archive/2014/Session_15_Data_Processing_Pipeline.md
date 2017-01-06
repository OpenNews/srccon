This is a DRAFT TRANSCRIPT from a live session at SRCCON 2014. This transcript should be considered provisional, and if you were in attendance (or spot an obvious error) we'd love your help fixing it. More information on SRCCON is available at http://srccon.org.

Captioning by the wonderful people of White Coat Captioning, LLC
whitecoatcaptioning.com


     July 24, 2014
     Data Processing Pipeline show and tell
     3 to 4 p.m.
     Session Leaders:  Ted Han and Jacqui Maher.

     >> Shall we do this thing?  Enthusiasm.  All right.  Cool.  Data.
We're talking about data.  Data processing pipelines.  I assume
everyone here, I know a number of you here but not everyone here.  Has
everyone here had to process data?  Raise your hands.
     Okay.  Everyone in this room has had to process data.  Good.
That means we can do the whole show and tell portion of this.  There
are at the moment, two, four, six, eight, ten, we have 60 minutes.
Everybody gets six minutes then at the moment.
     I'll try to be quick.  So ultimately this is the question that I
was interested in talking about.  Obviously I know my portion of the
world.  I know how to process documents in a variety of way.  I know
ruby and some of the pipeline choices there as well as getting up to
speed on the sorts of data, data stores that you can collect and store
information in.  Jacqui and I put together a questionnaire that you
can get to via that.  You guys don't have to fill this out now but I
would be really interested in hearing about the sorts of projects that
you have.
     What I'd like to do is compile a little resource but we'll see
how that goes.  It would be fun and interesting to just hear about a
little bit about the projects that people have made and try to figure
out what are the primary constraints that led to those tactical
decisions.  And so I mean we might as well jump in and give some
examples of how this works.  Would you like to start?
     >> Sure.  Sure.  Back in 1999 or so I got a job at an -- on an
interactive news team at Hearst.  They dissolved it at tend of 2001.
Maybe it was too early.  I don't know.  My first project was the
esquire drinks data base.  They wanted to make an esquire drinks
database.  The first constraint was that I could not have a database.
     They would not let me have a database.  What do you mean?  It's a
database.  I had to come up with a way of somehow storing all of the
drink ingredients and stuff and at that time the answer to everyone's
problems was XML.  Which ...(laughing)... which is a new problem, new
problem.  I ended up having to write a lot of pearl to generate and
then parse a lot of XML.  It was fun because it was all about
cocktails?
     >> Let's see.  I forget to mention that -- we're going to have
more people.
     >> Welcome.
     >> Quickly, just to give the vital statistics for the sorts of
projects and describe my first data project that I did for work thing.
I was a student archivist at Ohio state cartoon research library on
the bill Blackbeard collection.  It was newspaper clippings collected
over 30 years.
     The archivist in charge had asked for a student to tribe into
excel spread sheets what was in the collection and she would open each




and type in the XML document that was the index for the project.  I
thought that is bullshit, I will write a pearl script in order to
take a CSV and spit out the XML that we need and you essentially
double click on a pearl script and it ran.  All the data was just in
excel spread sheets.
     That gets -- so the primary constraint there is what can my
librarian actually run and I didn't know shit about anything.  I was
like doing the pearl thing.  Once you get up to a problem like
DocumentCloud, our goal is to take PDFs or whatever document you've
got, break it into parts so you can manipulate the text and get images
and embed all those assets on the website.  The stack is all ruby.  We
use H GIS and have a solar search engine that has gone to shit today.
     The data that we've got there is essentially the raw documents
themselves which get stored in S3.  The search, the searchable text
and images.  We use a distributive library called CloudCrowd so we can
defer the processing of the documents off into a pipeline because
obviously DocumentCloud serves a dual role of having to serve viewable
documents to anybody that comes to view things and crunch through
potentially thousands of documents that journalists are up loading all
at the same time.
     Shall we at that point, or do you have any thing you want to
describe?
     >> I've done stuff since 1999.  So about a year ago at the New
York times Aaron decided that we needed a news room analytics team.
We have analytics going on throughout the building.  Towards the end
of the year I started working on trying to figure out how to do like a
...  Basically started out as one person writing -- this is becoming a
theme -- pearl scripts -- to parse data that we had collected on how
our readers were using our site.  Like whether it was like how people
are navigating from story to story or you can guess all the met
tricks.
     But when I became part of that team my goal was to make this more
scaleable.  The first question is where is this data.  Where the data
was, was in a bucket on S3 filled with G zipped files and the files
were named according to I think like an EC2 incidence ID and time
stamp.  And I looked at that and was like, what?  How am I supposed to
find who is looking at the home page or anything like that.  Lots and
lots of people within the news room on the developer side had tried
various ways of doing this.  I heard about -- I took a stab at writing
a bunch of ruby scripts to download and parse and it took forever.
There were people doing -- kind of jobs and I became aware of a
project in R and D called stream tools that I won't go into too much
because we're doing a session on it tomorrow that is -- let's see --
am I answering all the questions?
     The problem, tons and tons and tons of data not in an obvious
searchable format.  How to we get that into a searchable format to do
analysis and so on.  The stack in my case became stream tools which is
a tool kit for dealing with lots of data and filtering it live.  So
it's written in go.  Has lots of libraries, too many to mention right
now I think.




     But the delivery is constant, it's streaming?
     >> We would like to see if we can go through quickly and ask
people the sorts of projects they're working on and catalog some of
this information and ask people to dump some of this into a spread
sheet and hopefully have a quick moment for a question or two if there
is anything that people want to ask.
     >> We want to hear from you.
     >> Yes.  How about we start in that corner of the room.  Waldo
would you like to describe a data processing project.  You don't have
to if you don't want to.
     >> Sure.  There is a hobby one that -- despite when I run the
U.S. data institute, when I go home in the evening I work on it in
ways that I can't do at work.  There is a project.  Crump, named for
Beverly T. Crump, the very first secretary of business in Virginia in
1901.  I buy data from the State of Virginia of their corporate
records.  They sell them for a monthly subscription.  I pay the
subscription and give the data away so nobody else has to pay for the
subscription.  It's awful.  It's 800 megs of data.  I put together a
data processing pipeline to turn it into something useful.  It's in
Python and I have yellow files that specify the text and the field
names they should mount to.  So it produces J song versions of that.
It can produce one J son file for each record.  That gives you
millions of J son files.  You get an elastic search map that tells you
the constraint for each column and it also creates bulk import files.
Elastic search can only import 10,000 at a time I think.
     >> How does it run.
     >> Straight up uses Python.  It's Python configured through
Yammel (ph.), configured out searched files and there is a data
file -- it runs every Wednesday morning at 2:30 a.m. or whenever the
data updates.  That's the ultimate effector though.
     >> I think given the number of people in the room we should keep
them ...
     >> Let's say census reporter is a website that takes in ACS data
from the census bureau and spits out a beautiful website with the help
of two humans.  Questions were, the problem ...  Census does a great
job of collecting the data.  A horrible job of distributing it.  Each
year the data has it's own little flavor of problem.  For example
sometimes nulls are dashes, sometimes they're zeros and sometimes
they're periods.  Sometimes they're blank.  Sometimes the geography
changes between each release.  So the problem -- that was the problem
we were trying to solve.  We were trying to get that out in a
consistent format.  The stack, we use Python pretty much exclusively.
I guess we would download the data from census bureau, use Python to
convert the data from their CSV into a CSV that made more sense and
then we stick it into PostGIS to do queries on.  The delivery of the
data happens roughly once a year with releases that are -- three
releases that are spaced out by about a month.
     They're all CSV files and, yeah, frequency.  Yearly.
     >> Cool.  Thank you.
     >> I was going to say those of you on the ground, there are two




chairs here.
     >> I'm going to be standing so if somebody wants to sit here.
     >> I'll take it.
     >> Okay.
     >> I'll pass.
     >> Brian, anything you want to share?
     >> I've been working for the last -- really the last year and a
half but formally on this thing called news links and the idea is to
try to collect all sorts of analytics data from APIs and from websites
and RSS feeds and to do that for like naively for any website or any
Twitter feed or whatever.  So we have tons of data.
     And more than that tons of sources and also the possibility of
more sources in the future that we don't even know about.
     So the problem is not just getting the data we know we have but
the unknown data.  The unknown knowns, unknown unknowns.
     So our problem is like we have to be able to quickly make new
scripts that fit into our current pipeline.  Our approach has been to
actually turn everything into gel scripts, that pipe things from
standard in to standard out.  You can type from Twitter into
postscripts or type from Facebook into elastic search or S3 or
whatever.  And that's been good because it means we can really quickly
write something that will get from Tumblr or chart feed or whatever.
So our -- that's all written in Python.  And we haven't really decided
on a database yet.  But probably post press or elastic search.  And
the second problem is that these things have to be running all the
time and often times -- for instance if you need to count how many
shares of a link has on Twitter and you have to do that for 100,000
links every five minutes, you have to do this all on some sort of
distributed processing system.
     So we've been using just Amazon SQS to put those sort of things
into a cue and have that on a sort of cluster that is listed.  Yeah.
That's about it.  Yes?
     >> Okay.  Thank you.
     >> I'll pass.
     >> Okay.
     >> I'm June.  I'll share one project.  We did a project for
United Nations developer programs.  And basically they are publishing
their data to this standard called international initiative for aid
transparency.  They process their data in a certain way so it spits
out XML.  Yeah.  So a lot of USA or the international people use that
data, they use that as their publishing format.  They came to us for
like, to use that data and make it into something more like useful.
     So we did -- it was about two years ago we did a custom solution
for them.  We parsed their XM, we download the XML data up loaded
monthly and run -- wrote a Python script to process them and to
process the whole XML into a custom J son that we consume and built a
four static APLs online.  Just split the J sons into sub J sons and we
consume it and built a website on top of that and the technology we're
using is all static.  We're using get hub and jackal and when they
need an update we just, if they need -- if they're just updating the




data, they run the script again and it will automatically push to the
pages on the hub.  If they need a feature edit, sometimes they come
back to us and we do a full request.  On GitHub they're open so that's
the workload we have with them?
     >> So that's interesting.  It's a constraint on work flow.  Thank
you.
     >> We'll jump over here.
     >> I came in late.  I'm sorry.
     >> I have a similar project.
     >> Those are the sort of totems to sort of focus on.  You don't
have to go right now if you want.  We can come back to you if we
prefer.
     >> The thing that is coming to mind is a project that is similar
where I'm leveraging the GitHub system to send me updates on files
that I need to process and post to visualization that they have.
We're exploring the vocabulary on the different topics in the library.
     Now it's Kludgy, I get their requests and push a couple of
things.  I suppose at some point I would like to sit down and figure
out how to button click and have it all run in a smooth little job or
run at the same time.  I'm assuming they'll send me an e-mail at the
same time every week.  I haven't done it and it's a time problem on my
part and not a data processing problem?
     >> It's totally a data processing problem.
     >> What is the name of the project.
     >> Intra-news project.  I think it's my fellowship repo they have
and they send me an update.
     >> Stack.  That was the ...
     >> I do Python for part of it.  It's a bit of GitHub as well
which is already up there.
     >> Thank you.
     >> I was going to talk about Tribune -- database.  Our -- I'll go
right to the problem.  The Tribune employs other databases and we
collect the salary information from public schools and cities and
counties and any government agency you can think of.  One of the
struggles there is obviously we're asking -- for the most part asking
everyone the same way for the data they have.  But there is no
guarantee that we're going to get all of those people to give
information to us in the same standard format.  Some people are
charging for mainframe time and others have it sitting on their
desktop.  There are different things that we have to bring together
and standardize to some degree so we can present them all together in
a sort of way.
     The struggle there, the thing that we've been working on and
hopefully will be more public the next couple weeks is kind of a
series and I'll give a out to Travis Vicegood.  But working on things
called transformers.  We're doing this in Python.  Essentially
having -- there's the raw dataset living on S3 which is going as far
as being an excellent spread sheet but having a code-driven way of
bringing that to the database using CSV kit to convert it.  Having
code written to transform.  Go through each row and turn it into




something that is standardized across what the data list expects?
     >> How does that run?
     >> Right now this first batch of them will be a very, very long
time.  Take a long time to go.  We can distribute it.  But I did --
the idea here is once we do this big redo it's going to be one or two
a week that will happen.  There is no need -- there are 250,000
employees so that one takes a couple hours.  But most places are
school districts.
     The idea is obviously of the a well-documented process for how it
got from XL spread sheet or access database to inside on the site.
Because the previous version of it was people massaging things in
excel.  We trust everyone but it's a thing where we also have a case
where dates got changed or converted wrong.  And like all the higher
dates have extra five years.  Things that if we automated in some way
wouldn't have been a problem.  Having this system that you know
looking through the spread sheet and figuring out what needs to be
changed from each column to convert it and then having the code that
was rewritten to do that.
     And then that's part of the repo.  So it's well documented.  How
did this data get in there.  This is how it interacted with every name
and interacted with every salary number and so on?
     >> Cool.  Thanks.
     Moving on?
     >> I have a challenging data processing pipeline but I'm not
going to talk about it because it's boring.
     >> Okay.
     >> The one I will talk about.  I was in an elevator in Texas and
on the inspection certificate it said to search for more information
go to this website.  I went to the website and they have a CSV.  I
have a website that has all of the inspection data for the elevators
in Texas.  And the closest elevator to us right now is in a Wyndham
hotel in Texas.  A lot of this was based off of pain points from
previous data projects that we've done.  And that is that data
needs -- the reporting needs to be repeatable so everything can be
done with one make command.  Like make scrape I think.  It runs and
does everything and it's reduced to one like one goal was, one command
does all the imports.  If you look at the source code it's easy to
know what that command is doing in turn.
     And the other thing that we do is -- it's a CSV so the CSV is
stored in a separate Git repo.  So there is some history, another
audit trail, I can go back in time and see what my data was like at a
certain time?
     >> Can I ask a question?  How horrifying is the information.
     >> There is a lot of dirty data but it's fun.
     >> And the elevators themselves?
     >> Yes?  Should I be concerned.
     >> It's actually pretty good.
     >> Texas is on the map.  Just stay out of Houston.
     So it's mostly, heavily relied on Git, shell scripts and Python.
     >> We'll call Git and GitHub the same thing.




     >> Back in 2009/2010 I was in Portland, Oregon and found 20,000
Twitter users in Portland and pulled their historical data and a few
million Tweets.  Somebody uses one hash tag.  What are the hash tags
they're using and the user mentions and stuff.  My SQL is taking
forever.  I made other tables that linked the count.  For this hash
tag and this user ID this is how many times they used it.  This hash
tag and user mention this is how many are tied together and stuff like
that and search on it.
     I'm doing something similar.  Like Portland I'm looking at
politicians.  I'm testing using the SQL memory tables to have faster
joins.
     The code was in PHP and MySQL.
     >> Would you like to go next?
     >> Sure.  My team works on Cicero.  It's an elected official
matching PSI.  We assemble the election boundaries and district
boundaries at the local, state, and federal level as well as all the
contact information for the elected officials that serve those
districts.  The problem is how do I quickly and easily find out who
the local and state and federal officials are.  We assemble this data
in a post GIST database and built an API that allows both address to
official matching and district ID to official matching.
     And we have a soap and a rest API.  Essentially just makes it
much easier to find your elected officials.
     >> Cool.
     >> PostGIS.
     >> Thanks.
     >> So we -- I got to talk about the tribune even though I don't
work there anymore.  We have a dump of all of the historical archives
from the Chicago Tribune going back to 1805 from ProQuest.  3.2
terabytes of tar balls.  And it was a tar ball for each day since
between 1855 and 1990.  Like, some time in January of 1990.  And so
this was like the most hideous crap that I've ever seen.  In each tar
ball it was just like in randomly numbered folders structured in
there.  There were TIF files.  Nothing had a file extension so you
couldn't tell what the file was.
     All the extensions were 001, 002, 003.  And this document
explained that.  002 was .TIF and .001 was.  INI and .003 was Berkeley
database.  There were INI files, TIF files, XML files and Berkeley
data files for each issue.  There was this other specialized like
mapping binary file format that ProQuest invented.  Luckily, we didn't
have to do anything with that.
     What we did is wrote some Python to just start tearing apart
archives one by one.  The goal was to take this stuff online and make
it usable and searchable.  They have the alpha version up at archive
at Chicago Tribune.com.
     We decided to use the document bureau from document hub.  We were
able to quickly take a few archives and throw them through Python and
generate like the J son document and thumbnails that the document
viewer needed to show stuff.  So pretty quickly we had a hot demo and
we're like, sweet, we can do something with this.




     We started working on its and we thought it would take a few
months to do and it ended uptaking close to a year.  We never had a
whole lot of people working on it at once because other stuff was
going on.
     But the problem was there was 3.2 terabytes of this stuff.  Once
it was unzipped we needed to create thumbnails for each page and
process the meta data.  Include OCR text for each article on each page
and in a lot of cases that OCR text was worthless and nothing you
wanted to show to the user.
     And so we wrote this Python script to process this thing and
rewrote it and rewrote it and rewrote it.  We finally got it down.  We
would write this script and run it through a sample set of data and
okay, it's going to take 8 months to process the entire script?
     >> This was one script.
     >> Yes.  One.  And then we threaded it to process more than one
at the time and then it was down to 6 month.
     >> This was process multi-threading.
     >> Yes.  And then we're like how many Amazon service ...  We
worked through this until we got it to a point where we found out so
much, discovered so much about imaging processing libraries and
graphics magic is the most performant one that we found working with
Python.  Python PIL or whatever, would just take so much more time and
that time added up very quickly.
     So yeah ...
     >> Thanks.  Did we miss anything?
     >> Quick show of hands, how many of you had to deal with ProQuest
data?
     >> The rest of you are very lucky.
     >> I don't know if I have any good examples here.
     >> Well, if you think of any.
     >> Al?
     >> I'm a student at North Western currently interning.  Last year
I was working on a project for the school called Social Scraper.  We
were basically trying to look at a political campaign.  Can we analyze
all of the Facebook and social data about this campaign and come up
with like real insights that would actually help them.  Like the
Schneider campaign in Illinois.  We wrote a bunch -- tried using the
APS, the Facebook API and Twitter API and all publicly available data.
It ended up not being enough.  You can't get user feed and even on
Twitter you get rate limited every hour.
     We ended up writing a library called social scraper on Python and
it goes into Twitter and goes into Facebook.  Kind of like logs in as
an account and grabs all available information about publicly
available people in general.  This is all people that like a certain
page.  Finding all people that liked the Schneider campaign page.  It
was a couple gigabytes of data.  We put it in postscript and that like
Chris said, the SQL queries took however.  So we piped it into elastic
search and that created an amazing interface of pie charts and gender
and things that people like and a map of where all the people are.  So
definitely plus one on the elastic serve Kabana plaque.




     >> Thank you.
     >> The fellow sitting directly behind ...
     >> Me?  Or Aaron can go next.
     >> Okay.  My problem was California campaign financed data.
After a lot of the support we got raw dumps of campaign finance
expenditures by elected officials and lobbying reports.  California
has a proprietary database form they use and they have a script that
dumps into it tab limited files but in a horrible fashion.  Me and Ben
of the LA Times wrote a script using Python and Django going through
these dumps.  800-megabyte dumps per day of new data.  He calls down
this new data and cleans up the TSVs and CSVs and now we have raw data
and using an OBZ we load it up in the SQL server so the reporters can
query it.  That is not helpful unless you know how to write SQL code.
So then we pulled out the reports, candidates and the candidate
committees that formed when looking for reelection and the money
coming in.  We did a new Django application to break that part out.
Now we have the lobbying reports.  New Django report and pull out the
reports.  It's a large dump and then separate campaign finance for
elected officials and separate for lobbyists and the full script takes
24 hours to run.  Which is crazy so we're working on optimizing that.
     >> Is the processing frame work around what you're using to run
it or screen, run, command.
     >> Say again.
     >> Do you have a processing thing that you're doing for it.  Or
is it like you're dipping in Python run script.
     >> It's like Python manage POI, build campaign finance and build
lobbying.  Then we wanted to compare the reports that lobbyists said
they received versus the candidates.  And the lobbyist data is in
the -- and the candidates have it in PDF.  We up load all to MS3 and
Python, paid people 5 to 11 and had them annotate anything and had
them write a cleaning script for what we thought was the right answer.
It was a long process, but.
     >> We'll go left.
     >> I'll complain about the IRS.  One of the papers I work for is
the chronical of philanthropy.  We love and hate the form 990.  The
tax return that is publicly available that every nonprofit files.  And
the IRS has to give you a 990 for an organization if you ask for it.
The organization also has to give it to you.  The IRS will give you
all of them filed in a given time period but only on these large
stacks of DVDs.  DVDs of scanned pages as single page TIFs.
     So we had a few different problems we wanted to solve in the news
room.  One was just getting these in a format that we can use like
that we can all access in one central place.  One was being able to
search that information internally.  And then one was being able to
potentially link to one of these returns for a reader publicly, like
if we have an example of something shady or interesting that somebody
is doing, want to link to that particular return.  Basically a way to
manage this stuff coming in and sticking it online.
     So we have essentially a bunch of Python scripts.  One that just
given what the set of DVDs is, so you know, form 990PF filed in




January 2010.  Here is the stack of those DVDs.  Just go through and
rip them and put them together the way that the sort of manifest on
the DVD says that they go together.  Here is this organization and
this file name is page one, this file name is page 2, all the way to
the end.
     And then we store that in an internal my SQL server.  Using the
Django ROM.  One it gives us access to the Django admin that I didn't
have to write and it gives us an easy way to serialize that.  So we
have back ups of test 3 which is where the combined PDFs are of these
scans.  We can search it internally, get to it and publicly available
files that we can direct other people like our readers to if we think
it's useful?
     >> Cool.
     >> I have one quick example.  It's actually Jacqui's example.
One of the things I'm trying to do now that I'm having difficulty
doing.  Is finding every page view of every story about the bridge
gate scandal in New York.  The New Jersey governor closed the bridge
because he is an ass hole and we wrote about it a lot.  I've been
reading a lot of stories about this guy and I'm upset about the whole
thing.
     Jacqui said we store page view logs in S3 but we do it in a
dramatically unhelpful manner.  We have every 10 minutes 50 servers,
each of the 50 servers writes one tart G zipped love file (ph.) to S3
folder indexed by the dates.
     Which means that if I want to find all the pages over 3 months I
have to go through 68,000 log files.  So the way we do that is with
EMI.  I wanted to make sure that I got first mention of that even
though I hate it.  HADOOP can't deal with small files.  It will break
quickly.  If you run out of memory it's a well-known problem.  If you
Google the HADOOP small file problem, what we have to do is run a
cluster per day over 3 months.  So I've stood up about 90 clusters to
find one time series that I really need to find far project.  So it's
a grumpy story, but I wanted to make sure Hadoop was on the board.
     >> We have ten minutes.
     >> Okay.
     >> We have ten minutes.  We can go through everyone.  Would you
like to ...
     >> I have nothing.
     >> I'm fine.
     >> Either of you two?
     >> Okay.  We can have ten minutes for questions.  What are things
that have come up that you either wanted to know or something
interesting that somebody mentioned in the room or problems that you
have that you want the collective brain power in the room to help
answer.  Does anyone have any questions?
     >> To look at politicians on Twitter, I was wondering if anything
had a solid dataset that had everybody running for election in the
U.S. senate and the U.S. house in the fall.
     >> Sunlight has some of it but not ...
     >> Are there current legislators running for reelection?




     >> Incumbents, the United States project on GitHub has like their
congress legislators repo and one of the things that's stored in
there, wherever they know it is like Twitter and Facebook URLs.
     >> I found that for people that have been elected but in terms
of --
     >> Opponents, I don't know.
     >> Some county board of elections might have it.
     >> State by state or for campaign finance.  I can get people who
are reporting on that and get it from there.  I was hoping that
someone had a clean dataset if possible.  It's probably more like a
unicorn.
     >> Specifically Twitter.
     >> If I get their names that is half the battle.  Twitter would
be great.  The first step is getting the names.
     >> Sunlight would at least have their names, I think.
     >> Then they sometimes, the primaries already occurred so people
who aren't running anymore are in the campaign finance as well.  It's
a lot of data.  But I was wondering if anything had the magic
solution.
     >> We collect them from Texas.  If there was a place for us to
submit, we could submit some place.
     >> Sounds like somebody should make a GitHub repo.
     >> Have you talked to the elections guys?
     >> Not about this subject.
     >> Too bad none of them are here.
     All right.
     >> I have a quick question to ask the crowd.  With this campaign
finance that I used.  We're using Django and tens of millions of
records I have to go through.  And store them into a database and
getting CSVs and putting them in a database.  With Django you have the
bulk record -- to do 30,000 records at a time.  I'm running into
24-hour bottlenecks.  So I'm curious if anyone has problems.  If they
have millions of records and want to slam that into a database.
Anything you've tried.
     >> PostGIS copy command.
     >> We're using PostGIS.
     >> It can go directly into SQL as long as the columns match your
tables.
     >> We're trying to create the Django models on top of that.
     >> You can create the models and pop late through the database in
separate steps.
     >> The model in a sense is just a row in the table.  You don't
have to add other meta data.
     >> I suggest from what we learned from building the crime site at
the Chicago Tribune.  When we modeled that we model Django to the data
coming in.  It wasn't the data that we wanted to put out.  When we
were trying to display the data we were doing complex queries and it
made more sense once we looked at it again to go back and say, was the
data we needed to displace, build models for that and process the data
into those models.




     >> If your tables don't match the data you want to show, I would
say create temporary tables that match the CSVs and write a SQL
command that creates a new table and copies the data from that
imported table into your, the one you want to create the model around.
     >> We had a similar problem, my only concern is make sure that if
everyone on the team were wiped out by an asteroid and picked up the
next day, don't write a ton of code that is hard to read.  The ability
to pass the knowledge on is a pretty big deal.
     >> Sweet, thank you.
     >> Other questions?
     >> What's people's preferred ways for D2B (ph.) on the fly.  Like
pulling an RSV or something.  I'm curious how people do that.  If you
want to just have the unique records do you up search.  Ignore when
you're pulling it down.
     >> I personally try to clean out -- yeah.
     >> I think it depends.  What counts as a DUP versus an update or
whatever depends on the dataset.
     >> Whatever you think is a DUP.
     >> I use replace into because it's faster to just write it twice,
over write the first one.
     >> There is also a library in Python called DDO that I use with
campaign finance data.  It deals with records that are almost the same
but not exactly the same.
     >> How often are people encountering DUP data without a unique
ID?
     >> A lot.
     >> Django has been mentioned five times and I've been to Django
con a few times.  I think it would be useful if there was a form for
Django problems that developers run into.
     >> I feel like some of that comes up on the Python Journos list.
I wouldn't say Python Journos has a lot of traffic but when these
questions come up that is where they do.
     >> Also the C++ and Journo list.  There is only one of us.
     >> That is Jeff Larson.
     >> Cool.
     >> Is that it.
     >> Basically.  I think we're going to compile this and write some
stuff up.
     >> I wrote down all the questions.
     >> Sweet.
     >> If you also want to go up to the thing and fill out more
information about your project that would be helpful.  There are some
obviously things that everybody is using here.  Most people use
Python.  But it's interesting to see where else we can see how these
different tools are applied in different situations.
     Let us know and thank you.




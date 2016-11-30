This is a DRAFT TRANSCRIPT from a live session at SRCCON 2014. This transcript should be considered provisional, and if you were in attendance (or spot an obvious error) we'd love your help fixing it. More information on SRCCON is available at http://srccon.org.

Captioning by the wonderful people of White Coat Captioning, LLC
whitecoatcaptioning.com


     July 25, 2014
     Building Exoskeletons for Reporters
     Session Leaders:  Jeremy Bowers and Aaron Williams
     >> We're going to wait a handful of more minutes and then we'll
start.  Continue to talk amongst yourselves.  We're giving them 3
minutes.
     >> Three minutes?  Okay.
     >> To let people straggle.
     >> We're just waiting for Aman to show up.
     >> Hello.  I'm Aaron Williams.
     >> I'm Jeremy Bowers of The New York Times.
     >> We are going to try to talk about exoskeletons for two hours.
Just to let you know as far as how the session is broken up.  The
first half we're going to explain the idea and do collaborative
talking about what an exoskeleton is and in the second half we're
going speck out an exoskeleton.  So if you want to go to another
session that is fine.
     In the beginning we want to talk about reporting and the
reporting process.  Anybody in here been a field reporter?
     >> Yes.
     >> Anybody write stories?  Written a story?  Good.  This makes me
happier.  I'm fascinated by beat reporters.  If I were to do that sort
of thing I would be excited that newspapers have this great pool of
people who are subject matter experts who are very, very good at
something.  The unfortunate part is they're very, very bad at other
things.  Somebody who is a night cop's reporter is not supergood at
Twitter or good at working on the CMS or marking up their stories so
they look nice on the web.
     So the thing that occurred to me is that as technologists our job
is to build exoskeletons for our reports.  An exoskeleton is
fascinating because all it does is what you do.  If you're a reporter
who reads the crime blogger or spends time at the supreme court, you
need a piece of software that works with you and your behaviors.  That
is why an exoskeleton is interesting.  It's not a robot.  It doesn't
work without you.  It takes your behaviors and the things you do and
enhances them.  It's not like an airplane.  You do your normal
behavior and it automatically makes that stuff better.  If you jump,
an exoskeleton makes you jump higher.  If you lift things, an
exoskeleton makes you lift heavier things.  It's a metaphor.  It makes
us technology people think more carefully about who people are who are
going to use our stuff and how we should interact with them.  That is
to say, very lightly.
     At the very bottom the fundamental metaphor that I want to talk
about today is what are the behaviors that a reporter engages?  Where
we can enhance them?  Where we can make the things they're already
doing a little better or stronger?  And, so, like, think about
reporters who write about warfare.  They have to write in anecdotal
terms.  A single instance of a bomb going off in an area but it's hard
for them to write in broad terms about this.  The New York Times has
this problem.  That was a strike in Yemen that killed 55 people and




The New York Times wrote the story and said it was the largest number
of casualties in several months.  And that is wrong.  It was the
largest number of casualties probably ever.  They couldn't say that
because they don't know.  The reporters only write these anecdotally
and nobody has the number of strikes and the people that died in them.
There are people that try to keep these statistics.  The New America
Foundation keeps a handful but they're not always trusted sources and
they're not as fast as we would be.  They work on a two or three-week
lag.  This is one of those cases where a reporter is only able to do
their job anecdotally.  Unable to do it with any broad understanding
of the subject area and that is frustrating to me.
     The part that is very frustrating, it's not like reporters are
bad.  They're very good.  They're good about getting the White House
on the record.  They have administrative sources.  It's not their
obligation to go an extra mile and invent new structure data systems
for themselves to report.  Because it's an opportunity cost.  They
would have to stop doing some other things they're very good at and
maybe start doing this other thing they're bad at.  This is our
thought experiment for the day.  The arts and crafts portion of this
we're going to design exoskeletons for certain beats and break you
guys up into teams and give you scenarios and come up with what an
exoskeleton would look like for that.
     In the short run I would like to go around and hear what you're
doing here and what things you do every day that you could conceivably
automate or someone that you know who needs something automated.
We'll start with Chris.
     >> I was just thinking about what somebody might need.  I'm Chris
Keller.  I work in Los Angeles.  Started out as a sport's writer.
Now, education mostly.  We deal with the Los Angeles school districts.
Behind New York it's probably the second largest school district in
the country.  Test scores have stopped coming, every year the test
scores and student performance come out, the report goes through, and
line by line checks to see what all the schools are doing.  It should
be easy to structure that year after year and plug it into something
and have a set of queries that generate reports.  That is once a year
or twice a year but it will save a lot of time.  You're asking the
same question about every single school.
     >> I'm a reporter for the Atlantic.  There's a lot actually.
Without getting into like a library of babbles, let's keep track of
everything problem.  Major staffing changes between large firms.
Internal statistics that get released intermittently and you have to
Google for how many monthly active users did it happen to as opposed
to the last time they announced it which would have been from 3 to 18
months ago.  Is it measuring the same thing.  To basic financial data
which is hard to ad hoc kind of wrangle and compare across firms.
     So there's a lot of stuff that ranges.  I thought about things in
the past and can't think of them now.  But many things.  I find myself
wishing that there was something more powerful than a Wiki (ph.).
That might be more quantitative often.
     >> My name is Fergus.  Recently finished researching the census




in the context of journalism.  One of the things -- I know this is
being not necessarily entirely worked on, doing things like just going
to all the cities that have this shops systems installed and following
up on the data.
     >> Automation of the public records request.  Following up on
data.
     >> The interactions and the follow ups and knowing when --
commissions this system.  Knowing that vendor X gets to spend ...  Oh,
they're going to install this system and we want to get that data on
that, for example.
     >> I will be working at the Chronical of Higher Education.  I
think kind of going off what he said, I think like using some type of
automation especially for the type of surveys, like the Chronical of
Higher Education sends out surveys to collect the data they have.
Again, I haven't started there yet.  I'm starting on Monday.  I think
it would be really helpful if you could automate sending out those
surveys and having people fill out the fields and actually submit it.
That would be ideal.  I think that would be helpful.
     >> Armand at the Los Angeles Times.  I came into journalism
through international development and photography and video.  Part of
it is building research and analytical tools for reporters.  Like,
here's a database of arrests made by LAPD or some of the things that
Chris was talking about.  And we like robots and part of the solution
to that is more robots.  With beat reporters there are so many stories
and they spend so much time doing grinding bullshit reports.  Like the
housing reporter, every month there is a housing report.  It's the
same thing every month.  There is a bubble, not a bubble, it's not as
big as we thought it was.  Being able to automate that stuff away and
freeing up the reporters to go deeper, dig deeper, do more enterprise
stuff.  Abstracting away a lot of the grind.
     >> I'm Misty, I work for IBT Media.  I'm a designer there.  I've
been working on some projects that are templated.  I thought this
would be a good session to come to because sometimes we're working on
bigger projects that are maybe more involved but the reports would
need smaller templates they could be using.  I feel like the more that
I've been tacking to reporters the more I get ideas of what they do
need.
     >> When you say templates, you mean templates for ...
     >> When I say templates, a landing page, specific tables they can
put the data in.  It's always going to be the same.  It's just
updating it.  Trying to figure out what they need and how I can help
make that happen.
     >> I'm Al.  I work at ProPublica.  I have two ideas.  One is
campaign finance.  There is a ton of data in there for many agents
that reporters use all the time.  And find sums and donors and find
recipients, consultants that campaigns are hiring and committees are
hiring.  A lot of times those numbers are not added together, not
compiled.  You have to do a lot of work to find how they combine and
find conclusions in them.  Find new groups flying under the radar or
operating in a session of the tax code they shouldn't be operating in.




A tool for combining a lot of stuff together would be useful.
     >> I'm Jason.  I'm at VOX.  The newsroom is very new to me but
I'm fascinated to be here.  I'm really interested in automating I
guess sort of like ambient environmental data around where reporters
are and what they're doing.  The writing and what were the conditions
around where they were writing.  I think that information is useful
for the companies and that can be really interesting to put out into
the world in other forms.
     >> Tracking when a reporter goes out.
     >> Like the time and weather and everything around them that
could be sucked in.
     >> Awesome.
     >> David, I'm also newly at VOX.  And just generally recently but
specifically in the last day I've been thinking about how reporting
down to the most granular level can be attached to specific bits of
content and particles.  So research that flows through the reporting
stream.  So if one article is used for a source as another article, as
we build that, as we build that reporting over time, being able to
track it back to the original source and pull out information from --
if the original source changes or becomes unreliable how is the rest
of the reporting tainted throughout the series of papers.  It's like
an interesting open data problem behind that in my head that I'm still
working through.
     >> I'm Matt Perry.  I work at Automatic.  I'm not a reporter.
I'm not sure I have a specific idea.  I think I'm going to pass on
that but these are all inspiring.  In the past I've done work with
assembling, allowing reporters to assemble groups of reporters on
Twitter and monitor the experts automatically to sort of provide early
warning on the content.  That is something I can go back to.  But I
don't have a specific idea for today.
     >> That sounds cool.
     >> That's a pretty good "not" idea.
     >> I'm mostly really into structured data.  I don't report
specifically.  I'm interested to know what kind of tools are discussed
and brought up in this conversation and if there is additional overlap
between those tools and maybe some of the things that might make good
exoskeletons for beat reporters make good exoskeletons for other
people.  Because exoskeletons are awesome.
     >> Allison, I'm at FiveThirtyEight.  The big thing we've been trying to
figure out is working with our parent company to free data from video.
They have tons of good stuff but it's not cataloged or just a giant
...  Video that has no things happen at certain points in time.
     >> My name is Matt with The New York Times R and D lab.
Interested in two separate pieces as it relates to exoskeletons.
First is the possibility to extract structured data from reporters as
they're writing or reporting.  Couple people have mentioned in
different stories where reporters have data they're building that
story off, there are ways to capture that at that time without adding
additional work flow to their lives and use it later on.
     On a different tangent sort of in a literal way thinking of




exoskeletons as wearable technology that might enhance a reporter's
experience.  Everything from a device that is recording audio and can
capture that gap the moment it's said and push it somewhere or is
taking photos or measuring ambient environment and situations and
figuring out how that ties back to the story.  Different ways the
reporter can enhance their own capabilities of capture and awareness.
     >> I'm at The New York Times R and D lab and Matt said the things
I was going to say.
     But I mean specifically I've been thinking a lot about how we
move structured data, capture upstream into the reporting process.
There seems to be something really broken about the fact that we do
all that and retrospectively after an article has been written and
edited and we're doing it in many ways like computationally as if we
didn't have all these human beings in the newsroom that knew this
useful information about what they're writing.  So trying to think
about ways that that kind of structured data could be -- could support
reporters in their process and also make their reporting more reusable
and flexible after it's been published.
     >> I'm Daniel, currently between jobs and I don't have a really
good answer.  I'm lurking for ideas.
     >> I'm Adam.  I walked in late.  Sorry.  I'm assuming what you've
asked is why I'm here and what I'm interested in.
     >> What are you going to build?
     >> We've been focusing a lot on the publishing side of
technology.  I work for a network nonprofit organization.  So I'm kind
of very interested in the non-CMS, non-publishing things and how to --
we can better enable basically any reporter to do their jobs, kind of
like better.  What needs built.  What tools do -- should we build?
     >> Well, from like a dev standpoint using an automation tool.
That is my exoskeleton, I guess.
     >> Using pass runners and various tools.  Automation to
development.
     >> Yes.
     >> It's good to capture a bunch of your ideas.  These are going
to be the bits that influence us when we do our arts and crafts time
in a little bit.
     Before we do arts and crafts I think we should talk about cases
where we're doing exoskeleton stuff in our newsrooms.  Maybe poorly
but maybe well.  So there's some examples in the ether pad if you want
to pull that up if you have working wifi?
     >> Is there a link to the ether pad.
     >> Yes.  It's at the top.
     >> Go to shoutkey.com/haywire.  That's the link to it.
     St easier than typing a bunch of letters.
     >> There you go.  That thing.
     >> So there are some beats where this completely makes sense and
Al you can tell Scott I used his quote.  He has a quote that makes me
happy.  He says something like every beat that a journalist can do any
more involves structured data.  It may not look like structured data
but it probably is.  Crime, finance, education, sports, almost all of




these things involve real relationships between people and space.  And
when we write stories we turn it into something anecdotal.  If you're
not good at structured data on your beat you're going to get scooped
by one who is.
     Someone who is much better at analyzing structured data than you
are.  This makes sense if you're a night cop's reporter and you didn't
go to the crime log or the courthouse and get the crime log before you
left, you're going to get scooped by the person that did do that and
find out the star quarterback got arrested over night and failed an
alcohol test.  You don't want to be the person losing out on stories
because you can't fire up your excel.
     These beats make sense.  But there are other places that we can
do better.  Like politics.  Tracking things that people say and hold
them accountable for it.  A great idea of this is a local community
passes an ordnance to allow a gambling or something to show up in
their town.  Every person has a quote about how many millions of
dollars this raises for the local economy and a year later we can find
out if it was true.  This is structured data.  You said it, there was
an effect and we can look back over time and see if you're correct.
     It's one of the requirements of maybe our exoskeleton should do,
is aggregate public statements by officials.
     There are other things that computers can do that we're bad at
which is seeing minute differences between things.  A lot of these
things you mentioned.  Finance, staffing changes, arrests, campaign
finance, these are the kinds of things where the numbers are very
large or happen very often.  The result is it's hard for us to tell
the difference between things.
     If a company's stock price increases slightly over time, the
number of people mentioned in a report decreases by two.  You may not
notice it.  There may not be a chief financial officer listed or you
may not notice arrests have been slightly increasing in a certain
neighborhood.  Computers are good at noticing the difference between
things and we're bad at it as people.  That is case where the
exoskeletons can do a little bit of work that we don't do nearly as
well.  Highlight something that may maybe we don't see happening.
     There are reporters that do this well but unfortunately have
stopped using tools.  We have a guy at The New York Times, CJ Chivers.
He goes to war zones.  Where there is conflict and something bad
happening and takes pictures of land mines and shell casings and tanks
and whatever he sees.  He puts it on a Tumblr and Instagram.  We don't
have something for him to put all of these weapons that he's been
looking at into.  CJ knows in his mind that in Afghanistan there are
Soviet aero weapons systems that are upgraded to slightly newer
weapons.  She has seen new shell casings and land mines that are post
cold war.  All he can do is write a story or take a photo and put it
on Instagram.  He doesn't have a way to demonstrate, I know there are
new weapons in Afghanistan.
     This is unfortunate because Instagram never creates a drop-down
for CJ to allow him to pick the correct decade for a weapon that he
noticed.  That is not in their core.  It's nothing they would want to




do.  But it's something that we might want to do for CJ.  He knows
it's getting sloughed away when he does his reporting process.  Thank
god he is taking the photos.  We can go back over time and we can go
back and maybe add those things on.  It's unfortunate that's something
we have to do retrospectively.  It would be nice if our reporters had
something nicer.  The equivalent of the big robotic arm to move up and
down.
     Now that we have some of your ideas and we have a little better
understanding, I'd like to break into groups and start talking about
what to build.  We're not going to talk about working code.  We're
going to speck them.  We're going to put those on GitHub for people in
the case that someone would like to build one.  We'll have a list of
specification.  There are a handful of questions that we want you to
answer.  What behavior does a reporter engage in when they do certain
types of things.  How would software need to interact with a reporter
in that case.  What kinds of things would the software accumulate.
Would someone actually use it.
     And we're going to allow you guys to judge the work that other
people are doing.
     >> Is this limited to software?
     >> No.  Not limited to software.  I'm glad that someone said
that.  This is also within your purview.  We have news organizations
and we have cell phones and sensors and things like that.  If there
are ways to extend a reporter's reach, literally, then maybe that's
one of the things that we should include.  So has it been -- we're
going to take like 10 minutes or something like that and let you get
water and go to the bathroom and we're going to prep the bits so you
can do your arts and crafts.
     When you come back that is what we're going to do.  We're going
to start with scenarios and work on these individual ones, too.  Take
ten minutes.  We'll see you in a minute.
                              - - -
     >> We're going to start a little bit of arts and crafts now, I
think.
     You guys are fantastic and came up with an infinity of very good
ideas.  Rather than just let you say your ideas out loud we're going
to make you build something out of them.  We have four questions that
we want you to answer basically when you spec out this exoskeleton
that you would build.
     The four questions are what behaviors does your reporter engage
in?  What does the person do, the motor functions you'll extend.
     Two, how do you interact with the reporter.  What bits will the
software of exoskeleton attach.
     The third one, what are the capacities that you choose to enhance
in your reporter?  What things that your reporter does that you have
decided to make better?
     And what capacities have you decided not to enhance?  What things
does the reporter do that you think should not be mechanized.
     Build out what your exoskeleton would look like.  Be artsy.
We're going to go into group of three.  If you want to self-associate




that is fine.  Let's get handfuls of two or three together on a team
and grab the green bits off the wall and grab the project you want to
build or two and get to building?
     >> Can we do one of the examples that you have there?
     >> Yes.  We also have horrible examples that we're going to use
for discussion.  You can use those.  One is high school sports.  Night
cops.  Local politics.  Southern California immigration.  Et cetera.
     >> As far as the technology, I mean sky is the limit.  It's not
like you have to write our speck is this scraper in Python.  Keep it
abstract unless you think that's what you want to use.  If that's the
case, run with it.  I'm not going to stop you.
     Be creative.
     >> I'm putting Sharpie®s and green paper up here.  There is green
paper in the back and we have large sheets of this kind of paper.
Feel free to clear off your tables and get to work.
                              - - -
     (group work).
     ... .
     >> We have about 15 minutes left of the specking and talking and
after that we're going to do five-minute presentations.  This is a 15
minute warning.
                              - - -
     >> All right.  Time to get you guys to present.  How do you want
to do this?  Who wants to go first?
     Great.  Okay.  You guys in the back.
     >> What is your team name?
     >> Oh god.
     >> I think Spidey.  We were looking at literal exoskeletons and
the problem that we're identifying is that reporters and photographers
in conflict areas need rapid realtime feed back about what is
happening around them.  And in additionally that needs to be
inconspicuous.  You can't wear a Google glass in a war zone.  It needs
to be hands free ideally.  If you're taking photos you can't take out
your phone.
     We're proposing a haptic belt.  The way this works, it's a belt
that has 8 vibrating motors embedded in it and it's connected to the
reporter's phone which then talks to a system at the news
organization's home office.  This is a paired exercise.  There is a
colleague who is at the news organization who is monitoring things
like realtime satellite feeds or wire services or Twitter feeds,
et cetera.
     And basically has a map interface upon which they can drop
markers that then communicate back to the reporter's phone and
transmit vibrations to the belt.  The vibrations happen in three
dimensions.  The first is distance.  So the intensity of the vibration
corresponds to how far away something is happening.
     Directionality.  Which motors vibrate correspond to where.  If
it's in front of you, the ones in front vibrate.  If it's in the back
the ones in the back vibrate.  There are two vibration.  A pulsing
vibration.  Something interesting is happening over here you want to




go there to get the scoop.  Or a sustained vibration, there is danger
there, get away from that.
     Am I missing anything?  I think that is about it.
     There is also a button to dismiss the alert.  It can be I got the
alert, fine.  But if you leave it on it's a way to find what is
interesting.  It can continue to vibrate so I know if I'm going in the
right direction.  That's it?
     >> Sweet.  That is awesome ...(applause)...
     >> Who wants to go next or who doesn't want to go next?
     >> I'll talk.  We don't have any drawings or show and tell.  If
you scroll down to the bottom of the ether pad you can follow.  We
talked about covering immigration in southern California.  Some of
this extends to other areas.  Finding the balance about available
structured data with unstructured anecdotal data with a reporter who
is well sourced and talks on the record about these things.
     There is plenty of structured data out there, you can automate
that via records request or computationally.  Legislation at the
local, state, and federal records.  Court records, law enforcement,
the coast guard.  Demographic data.  Port records, education records.
The anecdotal evidence, the stuff that you talk face to face and
communicate with the people going across the border crossing and those
who help them could be structured or semi-structured.  We looked at
known immigration routes if those things exist or crossing patterns
and trying to come up with ways to track the geography.
     The different way points.  Where the cities are.  The people that
help them there.  And the goal connecting to the structured data to
view over time education patterns, crime patterns in those area,
employment patterns, demographic information.
     Satellite or drone images from these places.  From an overview or
from a ground level with access to safe houses if you will or other
areas to help these folks make their way into the United States.
     When you have that anecdotal stuff and the structured data you
can connect it and analyze it more quickly if you had all this
anecdotal stuff in notebooks and going back and researching and
connecting the dots that way.
     Matt talked about his idea to pull up structured data from text.
There is some application there.  The other aspect is building a
database of volunteer translators who might be able to help.  And
Armand wants to build a exoskeleton that is C3PO but on your list but
able to communicate with people in 3 million languages.  If it's an
iPhone app and you talk into your phone and ask somebody to put on
head phones and talk to them in any number of languages, it's
interesting the know how far we are away from something like that?
     >> In the spirit of the hitchhiker's guide it should be a small
fish.  Who wants to go next ...  ...(applause)... yes.
     Okay.  What is your team?
     >> Layered maps.
     >> We talked about creating an exoskeleton for a reporter to find
human sources within certain geographic zones.  So for example after a
disaster helping reporters find sources that were most affected by the




disaster.  Basing this off something we did last year at Republica.
We looked at flood zones that FEMA already created versus where
hurricane sandy flooded and cross references that with the actual
disaster declarations for each -- sorry, the disaster findings for
each household.  And printing out a map and having a reporter knock on
doors and find out what happened to you.  Did this affect you.  That
worked really, really well.  That could be a tool where we can up load
as many maps in advance that we can and Crete zones to reporters can
print them out or get them on their phone and go out and find people
most affected.
     >> The idea is reports would find a lot of sources immediately if
they knew who to connect on a specific block if they had the overlay
of a map in their hand.
     >> For example you worked in the highest level of flood warning
but your house got flooded any way.  That is the specific person you
want to talk to.  It's abstractable.  Zone A and zone B, the tool,
simply overlays zones and identifies spots.
     >> And we also want to add a census overlay.  Are people being
affected in the same socioeconomic level, demographics, race, how do
disasters affect those people.
     >> It has applications for entertainment reporting.  Overlaying
maps of things going on in Hollywood.  We can see various reporters
wanting to use this data.
     >> TMZ.
     >> If you scroll to our entry ...  I don't know if it's up or
down.
     >> I think it's up.
     >> Where is it at?
     >> Scroll down.  It's below the immigration one.
     Go down more.
     >> CL dot LOI link.  This is the thing we did last year.  We
found flood zones that were predicting where hurricanes would hit New
York and where sandy actually flooded and all of those building shapes
are buildings that FEMA had determined had been damaged.  So we
printed this out and went out to those individual blocks and found
people that did not think their house would flood and their house
flooded.
     >> The blue is where they said it would flood.  The brown is
where it flooded.  The building shapes are buildings that were
actually damaged.  So those were the individual blocks that we sent
reporters out to do talk to people.
     >> The blue is where they thought it would flood specifically for
sandy.
     >> Where FEMA said it would flood.
     >> Most people don't buy flood insurance.
     >> Something like this but abstractable.
     ...(applause)... go team maps?
     >> I feel like you waited so long.  This team was done after like
7 minutes.  So they are ready.  Do you guys want to show off?
     >> So this is a relatively kind of small contained problem that




has a lot of work maybe to solve it.  The problem space is that what a
reporter is trying to do is find all the cities that have paid a
particular contractor.  The behavior that the reporter does is looking
for public spending on company X in many places.  So basically this is
a tool that automates going through public records and finding --
shops (inaudible) system has gotten $200,000 from this city.  The
reporter would simply go to probably something as simple as a web form
and say, this is the company that I'm looking for.  These are the
cities that I'm interested in.
     It's essentially a script, the work would be in modeling each
different city's publishing system and the construct of their website
and whatnot.  Obviously you're going to run into -- ideally -- I think
the best organization to build this is something like a peak
organization that can source it, source all those models.  Oakland, I
contribute the publishing model for Oakland.  Nashville.  I do it for
Nashville.  There is a fair bit of work maintaining those models.
Some small towns I'm not going to publish their data in which case you
can either generate a form e-mail that a reporter can check and then
send off to the public records people or the name of a local reporter
who can go and you can contract the work out to or a task revenue if
you're in one of those kinds of cities.
     So the parts of the reporters process it enhances is seeing a
change, repeat a process, remember what the process was across cities.
Make your process transparent and then also be able to share your
process with other people.  We're obviously ignoring people's ability
to get bored because it's a dull process.  We're not building in
analysis.  We have a beautiful illustration of it down in the
left-hand corner.
     That is it.  It's kind of simply a problem with a simple tool to
use but with a lot of functionality and complexity under the hood.
     ...(applause)...
     >> Sweet.  All right.  Team other table.
     >> I don't know if you have every used Fred, the St. Louis Freds
storehouse of all things data.  It's great if you want to see the
adults working in the population over time.  If you're a reporter
working as much on a municipal beat and covering a limited number of
institutions where there is a limited number of data that isn't as
prevalent you don't have an option like that.
     The idea is personal Fred or Freddy.  Which does not take the
form of like a reporter's note pad.  I see you're writing an
acquisition story, but which could.  It's a desktop based tool for
reporters who are tracking between 5 and 25 institutions.  It would
follow primarily a list of like a feed of press releases and look at
them by schema.  So certain press releases you can basically tell
they're acquisition.  Certain releases you can tell they're personnel
changes.  Ones you can tell are there for a quarterly report and they
have monthly active users.  It differs by institution but it's
reported across quarterly reports if they're a public institution.
     Also if they're a media company you get rare glimpses into their
internal analytics, usually in like a break out time story but have no




other way of tracking that.  The New Yorker.com got two million
uniques in April.  The last time that number was reported was like
February 2011.  It's good to have these in one place.
     So at the end of the day the system would track all these various
press releases.  At the end of the day it would give you a list of
bullet points in plain text of Facebook but start of X for Y million
dollars.  You add it to you thing and have a time line for each of
these institutions of the certain number of variables you were looking
for.  And then depending on what that variable was, would be able to
graph it in certain predictable and standardized ways.
     It's not part of a larger institutional response and I think part
of the nugget behind the idea is it's aimed at reporters who are in
places which don't have these great data teams to back them up/who can
do a brew install.  And maybe that's what they can do.  So you can
guide them through that.  But then after that things would be, if they
could give you an RSSV to point the tool at, then the system would
largely be able to kind of track and maintain itself with limited
help.
     So personal Fred.
     ...(applause)...
     >> All right.  And last and certainly least, Ryan Murphy.  On
team breaking news.
     >> We were working on the breaking news one and kind of wanted to
address -- there is the common situation where producers, editors, and
reporters are in a breaking news situation collecting facts, reaching
out to sources.  A lot of times they're in a hazy in between.  Some
stuff is hearsay and some is from a source that you're iffy about.
And finding a way to collect all that together so it's not just a
something that is being spewed into a word doc and getting e-mailed
around and not really kept in a central location.
     This is kind of meant for very much discreet situation, things
happening for a period of time and will end.  The war in Syria.  Not
going to do it for that.  It's very much a thing that is covering a
long span of time.  But this is for school shootings or a plane crash
or things like that.
     It's inspired -- do you want me to explain MACAW quick?
     >> It's a language in the Pacific Northwest called MACAW and the
verbs are built with evident eventually do something.  If you saw
someone do something versus you heard it or saw it from a distance
that all changes the verb tense.  We thought it would be great to have
eventuality built in.  Like a green, yellow red.  Very true, kind of
true, super-not true and how will you indicate those people since we
can't use verb texts.
     >> Turning to some of the questions, like there is always this
situation of wanting to know how true is the statement and how to keep
track of it and deliver it to reporters.  And then getting alerts you
may be pushing out or updates to stores you're trying to do.
     In this situation what we're looking at doing is moving away from
keeping track of it in word docs and e-mails but a web form to keep
track of this stuff that everyone in the newsroom is able to see and




contribute to and view as it's updated and changes.
     Being able to keep track of how confident we are of the source.
How many times has a fact been confirmed and we feel confident about
it.  Sending out e-mails to staff or reporters and anyone you think
you're collaborating with one click.  Alerts through mobile or
anything like that to obviously can be expanded to -- to your users at
the end of the day.
     Being able to see after the fact, after the event happened what
facts came through, which ones are we sure about, which not.  Generate
a report of that covering of that event.  For the next day's story you
have a nice fact sheet and something to start with there.
     Capacities to enhance.  So in this situation it's moving
everything centrally located.  And making it easier to make those
updates to that fact sheet and being able to track the differences
over time as things change, as more information is found or
information is discredited or found by other people.  And being able
to aggregate all the sources in one place which is useful for working
on the story.
     Things we're taking a pass on.  This service is not meant to
handle the process of confirming a fact.  We put it as we're not going
to build TRELLO into this.  You're not making phone calls from this
web service.  It's not going to FOIA machine keeping track of e-mails
you're sending out and formulating responses.  It's up to the
reporters to make messages they're good with.  Not going to do any
automated thresholds.  You have enough people saying yes to this fact,
it's not going to say good to go.  It's not going to take the control
away from the humans involved because a lot of that is going to be a
judgment call.
     This is not meant to be a website or a CMS extension to publish
stories out of.  It's very much focused on being a tool that helps you
pull these things together and then you take this information to the
places where you normally do that.  Yeah?
     >> Do you have a screen shot of the one that we developed for
NPR.  I would love to show the room that.
     >> We will find it today.
     >> I mean it's just, we developed a prototype for something like
this and the idea -- it was like this but each fact was a card that
could live anywhere.  NPR verified this fact and that fact could live
on The New York Times website as a discreet unit.  And I really liked
that part of it.  It made it so facts could travel around and they
were verified by somebody on staff.
     >> And that prototype is available to affiliates.
     >> We developed it with an API so we can feed this to affiliates
so during breaking news we're not doing it in texts.  We built it and
we wanted time to build it but we can't get the time.
     >> Look what we did.  We made so many exoskeletons we solved all
the problems.  ...(applause)...
     If you have like physical objects bring them up here, we're going
to photograph them and put them up on the site or do other stuff with
them.  And we'll create a GitHub repo.  Make sure someone on the team




is following me on Twitter.  We'll Tweet out the link.

















































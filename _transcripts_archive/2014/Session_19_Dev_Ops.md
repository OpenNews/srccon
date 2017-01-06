This is a DRAFT TRANSCRIPT from a live session at SRCCON 2014. This transcript should be considered provisional, and if you were in attendance (or spot an obvious error) we'd love your help fixing it. More information on SRCCON is available at http://srccon.org.

Captioning by the wonderful people of White Coat Captioning, LLC
whitecoatcaptioning.com



     July 24, 2014
     Make your devs and teams braver through dev ops (God help us all.)
     4:30 to 5:30 p.m.
     Session Leader:  Chris Chang
     >> JP was supposed to be here but he got stuck in Pittsburgh.
     I'm going to get started.  Most of these notes are from the
previous session but they have nice buzz words.
     My name is Chris Chang.  JP Schneider wouldn't make it but that's
okay because if all goes well I will do very little talking.
     I guess I wanted to start off by going around and can you give
your ...  A little bit of -- I guess your name would be good and your
background.  I'll start.
     I'm Chris Chang of the Texas Tribune.  We run on AWS and I
program in Django and I also help maintain the servers that we -- that
run our site.  So in that respect I'm doing the dev and the ops.  It's
been painful.  That's why we're here.
     >> My name is Russell, I work at the Pew Research Center in
Washington, D.C.  We have our own two dedicated server that is we run
our sites off of and I do full stack from the front end all the way to
the end.  I try to make things work transparently so no one has to hit
the barriers of doing system and stuff.  I try to make it as invisible
as possible.
     >> I'm Matt.  I'm a developer.  Right now I'm free to just
develop purely develop except for you know maintaining my own
development systems.  I've worked for Tribune, digital first media.  I
didn't do too much dev ops but I worked in Norwalk, Connecticut where I
maintained everything.  That was painful.
     >> I'm from source fabrics.  I'm from Bulgaria.  We are having
(inaudible) where we host -- I'm under -- we're trying to
get to the solution to occur to -- we find out which program -- we
care about the servers ...
     >> Eric.  I'm from the interactive news department at the New
York times where I'm pretty much the only person that does dev ops.
Our weird situation is we run a shadow infrastructure at the New York
times and there is a large New York Times department that handles most
things and things that don't fit there we handle.  Like one-off stuff,
things that are timely or otherwise unusual.  To do that we maintain
our own set of servers.  It's kind of a strange problem because it
ends up being a pretty heterogeneous group of things.
     >> This table?
     >> My name is Chris.  I work at the center for public integrity
in D.C.  I do a lot of front end stuff and sometimes back end stuff.
Not a whole lot of dev ops in my current job except one random window's
server that was related to a project that I ended up administering
that was on AWS.  But we do a lot of wrack space, cloud, and mostly
that gets handled by somebody else but I would like to learn more and
that's why I'm here.
     >> Within the organization?
     >> Yes.  There is a guy that manages the CMS.  And he's been
doing -- so far.




     >> I'm Stan.  I'm mostly here to learn as well.  I use the odd
bit of Ansible and stuff like that, some Vagrant.  But I know enough
to be dangerous but in a bad way.
     >> I'm Michael Keller.  I work on the interactive reporting team.
We're a small team.  We run our own system outside the CMS.  We used
Tarbo in the past for publishing and other machines for more dynamic
apps.
     >> Inter-news Kenya, I do mostly database and front end things.
I worked at a tech company previously where we had dev ops engineers
and I would go to them when I needed help and they would tell me what
to type.  Now that I'm a smaller person, the only person on my team at
inter-news.  I can deploy little things but the bigger projects I
don't have the do main knowledge and usually have to consult friends
and I would like to learn more about it so I don't have to consult
them as much.
     >> Matt Perry.  I work at automatic on the WordPress.com VIT team.
I'm not a system admin but I work with the media clients and other
clients, Word Press applications.  We sit on top of large Word Press
infrastructures.  I talk to engineers a lot and Steph.
     >> We work with the options system closely and I would love to
learn as much as we can.
     >> Frank.  I work at PDS news in Arlington, Virginia.  The only
developer in the news room.  We have another who is remote and we
share the responsibilities to look over the account.  I'm here to
learn as much as I can.
     >> I'm Jacob, I'm the engagement editor at the Post Gazette, and
I can tell you that I work an awful lot with the IT folks as well as
developers in the news room and I'm slowly teaching myself background
coding.  I wanted a better idea of some of the possibilities and just
to have smarter, stronger conversations than I'm already having.
     >> I'm Sarah at the New York Times.  Mostly front-end developer.
I had a variety of jobs there and one of them was sort of managed both
front end and back end.  I'm curious to learn more about deploying and
stuff like that.
     >> My original proposal, the idea was we recently split into --
we have a more core day-to-day CMS team and a news apps team and I
would look at our news apps team and they have very little experience
deploying things and I was worried about them.  That was my idea for
this session.  Upon talking to JP, and doing some more research, I
learned that for me dev ops was something you put on your resume or a
job pad, kind of a buzz word like a Ninja.  Turns out there is a lot
more to dev ops than that.  So I thought dev ops was tools.  But it
turns out it's more of a philosophy way of life.
     So I thought I would talk a few minutes about the philosophy of
dev ops and then we all talk about tools.  Because that is what we
want -- we want to come up with solutions to problems, how I have
this -- it's working on my box.  How do I get it so other people can
access it, too.
     And so there was this video I watched recently where the title of
the doc is making ourselves braver with dev ops.  And that's really the




case.  dev ops is all about embracing failure, deploying, like, don't
be afraid to deploy if you find a mistake and crash the site.  It's an
opportunity to learn how to never let that happen again.
     You run through that a few times, enough times and you end up
with something that is bullet proof.  And what you've done is you've
created a safety net under yourself and part of how you get there is
faster generation, I tear down walls.  dev ops is two words combined.
The same principle all around is don't wait to take a problem to your
ops person.  Your organization probably doesn't have one.  You are the
ops team.  The other thing that struck me when researching this topic
is a lot of us are kind of familiar with this concept because of the
whole data journalism aspect, like those people are often called
unicorns because, like, oh they've broken down the walls between data
and journalism.  dev ops is the same thing for the developer ops world.
     There is a couple ways of getting to it.  I guess I'm really into
running tests now.  I used to think they were a huge waste of time but
I do them now because they keep me -- they let me sleep at night
basically.  I guess that's more of a tip from me to you.  I will
consult my notes now ...
     >> How do you test if you're up against deadlines?
     >> This is a -- I guess that's my gripe, too.  If there is dead
space I'll pitch out a concept.  But if you have a question, we can
start going through those.  Testing, the thing that I found helped a
lot was basically just forcing myself to -- I don't exactly do testing
during development but sometimes I do.  My thought was tests are hard.
Why do I do this?  But eventually if you write enough tests you reach
a critical point where it only slows you down by 10 percent.  I found
it always saved me time in the long term.
     >> Okay.  So you start really, really small.
     >> You have to start practicing.
     >> You do the easy things and then work your way up to harder
things.
     >> There are a lot of different kinds of tests so it's good to
know the vocabulary of a unit test versus an integration test.  I
don't know if anyone wants me to go through that?
     >> Yes.
     >> I used to be an engineer so I almost drew a diagram but I'm
not going to do that.
     The idea of a unit test is it will tell you exactly what broke
and the general idea of an integration/functional test is that it
will -- they're generally easier to write.  And they'll tell you when
things break but they won't tell you what exactly broke.
     One thing that I've learned is that when you -- a benefit of
running tests is that you also end up writing better code.  Because if
you're writing unit tests, it keeps you from writing spaghetti code
because it forces you to write things modular.  An example of a
functional test is you -- is anyone familiar with curl?
     >> Yes.
     >> An example of a functional test is curling a URL and making
sure something came back.  And an example of an integration test is




running a name through a function and making sure it got split up into
first and last name.
     >> Where you type in a certain value out?
     >> Yeah.  The common thing is asserted versus expected.  Make
sure that they match.
     >> So one of the things in our world that makes testing a
difficult proposition is sometimes the transients of something that
you're working on, not because you need it immediately but many times
you are on deadline but it's unlikely to persist.  The trade offs in
the application code producing like a robust scene.  From my point of
view I think there are times when it's not -- from the dev ops point of
view we test stuff that is going to be repeatable and stand the test
of time.  But something on a short turn around and it's not going to
persist for long, sometimes from my point of view, the answer is more
like make it easy to fix the problems as they happen.
     >> This is something that we've done.  We've done like a simple
quiz in Java script.  That has no tests.  You throw it up and hope it
work.  Sometime later, someone goes, hey, remember the quiz we did?
Let's do another one.
     What will happen is if you start reusing code, then that might be
a good time to start adding tests.  And you don't have to test
everything but if you have the background of writing tests, then
sometimes you can just -- I'm going to say the word -- the word that
popped into my head is prematurely optimized.  But think ahead and I
provide code in small bits just in case I want to test later.  It's
easier if I write it in small chunks instead of something long.
     One of my secrets is that if something is more than one screen,
if something is less than one screen, I do, it's like terrible,
terrible code.  But it all fits on one screen so I don't care.
     >> Do you test like one ...
     >> The moment you start -- for me personally there is a threshold
where the moment that this code becomes hard to understand, you got to
put more effort into it so that --
     >> There is a higher chance it will break so you have to test.
     >> It's about passing on this code to someone else.  What will
they have to deal with.  That other person maybe your future self.
     >> I think testing versus no testing is the same trade off in
transitory versus permanent code.  Sometimes you just have to get it
down.  Maybe you never use it again.  We can build a job script quiz
because we know we will use it in the future.  Therefore you should
test it because you know you're going to use it in the future.
     >> There is like, to avoid prematurely optimizing stuff there is
a way you can prematurely stabilize things or prematurely -- I mean
weave run into problems where many times we tried to build the quiz
generator before we knew we needed that.  That not unlike some forms,
like some of the prematurely stabilizing can end up with a wasted
effort where the thing doesn't actually happen.
     It's a difficult thing.
     >> Does anyone have questions about like how do I deploy
something?  I know -- here is a problem I've run into.  How do you




have a lot of post genesis (ph.) online without running out of your
budget.  That is probably the most expensive thing we do.
     >> Depends, a lot of the database requirements can also be short
lived.  Where you have -- a couple months ago there was this big drop
of medicare data for instance and for a time it was necessary to run a
cluster of servers for instance to provide easy access to this data,
both the reporters and to readers.  But the need for that capacity
didn't persist in a way that -- part of dealing with the budget was
having a way to wind that down.  Some day we're not going to have the
web page up anymore where you are free text search for doctor's names.
     >> What becomes the -- you say it's the most expensive part --
what makes it expensive the number of databases or the size of them?
     >> So it's -- as far as an ops from the ops perspective,
databases are a pain.  We tend to go for -- run our choices Amazon
RDS.  It's a good trade off between value and it's so easy to set up
if you know how to use AWS.  I have one and it runs 30 bucks a month
which isn't bad.  But it can add up.
     >> The RDS stuff is a good choice and it's easy to change the
size of it over time.
     >> How many people have access to an AWS count at work?
     And then how much freedom do you have with the AWS account?
We're in a spot where we have a lot of control and we can pretty much
spend whatever we want.  I'm curious about others out there?
     >> This is where it's hard to communicate about what we're doing
in AWS.  In some ways it's so flexible that people outside of our
department seem to pick and choose metrixs they care about.  Some
people say you have this number of instances up and nobody cares if
they're at different sizes or how you're paying for them or coming in
and out.  We have a little bit of a communication problem there.
We're figuring out what money for what machines is attached to what
project.  We don't do that now so we get a lot of freedom and
frustration.
     >> The other thing that I wanted to go through is like how many
people have ROKU sets they use like production for user in English?
We've got a bunch.
     >> I was going to say I guess I'm more prone because I don't have
a dev ops background to use the platform of the service than the
structure of the service.  I will use ROKU and put the code somewhere
and have it do the dev ops thing for me because I don't have the
background.  Yeah.
     >> And Bart of this is also -- AWS is really hard and it's
annoying for a journalist under a deadline to have to learn this just
to share their work with the world.  So what can we do to make that
easier?
     >> Volunteer for my news room to not get paid to do work
obviously.
     >> My journal advice is use HAROKU (ph).
     >> Most journalists who are going to need that instantaneous,
they have some background, it's not going to be like go see a reporter
who has never seen.  I need AWS on this tomorrow.  It's more important




to make sure the people who do know are involved in those projects
from the beginning.  That goes throughout the entire project
formulation.  You need to be in on those projects early so it's not
like we need this in a rush, can you make it up for us for tomorrow.
     >> The way we handle it for the most part is trying to make
everything as self-service as possible.  Just like a paradigm.  And
sometimes that's like a knowledge sharing thing.  Interacting with
people on a project so they can do the next thing themselves.
     A lot of it is giving them a set of tools that is as simple as
macros for a couple of actions up to and approaching the periphery
style automation.
     But for the most part, people are pretty contend to attempt to
solve their own problems if they have enough tools to do it and they
can do it in a relatively safe way.  We're making it safer to get onto
a server so people can be familiar and maybe hack out a problem but
not in a way that is going to blow everything up, I guess is the gist?
     >> Speaking of blowing things up, how do you monitor your servers
once they're up?  We use, we mostly use new relic, the free tear.  And
our apps we use the free tear, a separate account for each one and
also a paid account for our website.
     >> We're kind of like an awkward size where we're big enough that
new relic would be a really expense I have choice for us.  But not so
big that we can pay for the expensive choice.
     Ends up being a combination of things.  I think for -- there are
a couple different kinds of monitoring.  You're looking for a system
metrix that tells you something useful if you have access to capacity
or whether or not some applications are (trailing off ...) for things
that are transient we use note Pang (ph.).
     For us this sort of full stack monitoring stuff seems to be, you
know, over the long run more useful in the cycle of turning it down.
It's a mix of things?
     >> We use a service called PING it.  I don't like it anymore.
What that does is checks your site every couple of seconds.  If it
doesn't get a response it will e-mail you or page you.
     >> You can see it if it slows down for whatever reason.
     >> There are great things for rails project, you can install it
every time an exception shows up.  This is good for people responsible
for individual projects.  X developer that worked on a project might
have a good idea and you can notify them.
     >> Have you used century for anything?
     >> No.
     >> It was for Django but now pretty much works for everything.
You can learn it for free.  Basically any time there is an exception
it does a good job of collecting that information.  You get a graph of
how often it happens.  You can choose how to get notified when an
exception happens.
     Speaking of all these tools, JP and I collected a lot of tools
that we think would be accessible to the news room at this (pointing)
as you mention things can you check to see if they're there.  If you
check that list and want more information about a tool just go ahead




and shout that out.  I should update it on the ether pad but I can't
do that and talk at the same time.
     I can walk through how we would use the tool.
     AWS has some monitoring for free.  We've been playing around with
making it easier to get at and understand because I haven't been able
to find a good product to say, just give me a CP graph of my web
application so that I can just peak at it once in a while.  That is
surprisingly hard to do but it's possible.
     I'm working on a project internally for making that easier.  But
it's kind of a lot of work already to get set up.  But it's still
better than the status quo.
     Has anyone used Jenkins or heard of it?  We just started using it
and we've enjoyed it so far.  I think right now we're about even on
the time spent versus time saved.  As we use it more, it will save us
more and more time.
     >> Can you give an example what you do with it?
     >> The primary purpose is to mimic TREVIS CI.  That is a service
that is free and what it will do is run tests so that you know -- a
lot of times I'm too lazy or forgetful to run my own tests.  If you're
hosting on GitHub, Trevis will pull the code and make sure it tests
correctly.  And it will make sure that the test passes which is good
to know before you make the full request.
     Trevis CI only does tests.  Jenkins has the capability of doing
tests but you have to run a whole server just to run Jenkins.  But
Jenkins does anything you want automated.  It will deal with it.  Our
work flow is Jenkins will run tests -- it will let us know if anything
breaks but it will check our code for complaints.  We use Python.
Most of our code is Python and JAVA script and it will tell us whether
a pull request deviates from accepted Python coding styling
conventions and if JAVA script deviates.  Jenkins is set up to notice
that sort of thing.  Everyone -- it enforces styles that everyone can
read everyone else's code and developers can work on each other's code
a lot more easily?
     >> There's a pretty interesting future Docker based CI solution
that is more similar to Trevis the way the server responds to your
hooks.  It can pull down your code and test it.  This paradigm
essentially runs your code inside a Docker container.  It's like a
Trevis file but the neat thing is you can specify what container you
want it to start from.
     Instead of like, one of the pains of Jenkins is assessing the
massive system that can do all things.  And instead you're in a wider
host that will assess the container.  This Python, you pull down the
Python container and do the test.  The way that it works is you
specify a series of scripts that you want to run.
     We do it for billing processes and things like that.  Like we'll
use drone to pull it down and load the build and up load the binary.
There are people that will run the tests and if the tests pass they
move right to running the script or whatever they need to run.  It's a
way to kind of pretty cheaply, you can do all the stuff that Jenkins
does.  It's lighter and less frustrating.  We run it internally.  The




only server requirement is you must be able to hit a point that you
have an on call back.
     But it works pretty well.
     >> We've started, a few -- our tests are now run, Jenkins builds
a Docker image and then runs tests inside that.
     >> Cool.
     >> Jenkins does Docker.  But we're transitioning to Docker piece
by piece slowly.  Jenkins also does builds for us, too.  That's
probably -- I don't know how much of that you guys would ever run into
actually.  But if you're pulling application code to the server, what
we do is -- what our new site is our Jenkins builds a DVD file that
then gets pushed out to (inaudible).  We mentioned Docker a few times.
I don't know, how many people have played with Docker?
     The great thing about Docker is you know how dev ops works on the
local machine, why doesn't it work on production.  Docker is a
solution to that because you can actually very closely mimic your
production environment locally.  So if it works locally, then you just
take that code and you can push it up and it would work in production.
     It's something that we're still just playing with.  We're not
running anything in Docker in production.  We're all very excited
about it.  The one thing that I definitely -- the way I mostly use
Docker know is with post GIS.  It's a pain to set up and sometimes for
different projects you need different versions of post GI S.  And with
Docker you can have multiple positions of PostGIS on the same machine
at the same time and not worry about accidentally calling the wrong
version and also of not like -- making sure the right version of
PostGIS is online or not?
     >> It's like vagrant, right?
     >> I've also tried vagrant and my problem with vagrant was that
basically it was too slow.  It's the same concept where --
     >> Virtual machine.
     >> It's not exactly a virtual machine.  Vagrant depends on
virtual machines.  Docker is a piece of software that is built on LXC
which is something in the LYNX Colonel.  It's like a heavily isolated
process.  It's running more or less in the same OS that you're in.
There is no sub or simulated CP.  It appears to that process that it's
on its own machine.
     >> A vagrant machine will simulate the memory of every CPU.  But
Docker shares that with the hosts.  You can restrict it.
     >> Is it there for lighter and less intensative in general?
     >> Yes.  One of the big things is memory.  To do it in vagrant
you have to set aside a chunk of memory ahead of time.  I need two
gigs of memory and I have one now, Docker is a process that can grab
memory to whatever one you set.  It doesn't actually consume that
memory.
     >> Does it require LINUX then.
     >> Yes.
     >> There is boot to Docker that makes the -- you can pretty much
use Docker as if you were running LINUX.
     >> We love vagrant.  That is how we simulate our production.




     >> If you have a work flow with vagrant, I don't know if I would
spend a lot of time.  If you did switch to Docker, the time it takes
to spit up a machine in vagrant is noticeable.
     >> I don't know how far along it is but vagrant has a Docker at
this point.
     >> I think it's out.
     >> It is out?
     >> The thing is you're more limited.  You have to run something
to Docker if you're on a Mac but it's possible.
     >> The great thing about Docker is if you have an exotic set up,
like you need to search PostGIS, Redis, Log Stash, if you need an
alphabet soup of servers just to test something out, Docker will make
it easier because you don't have to sit there and install everything.
If you jump to another machine, you don't have to try to remember how
you got everything installed.
     There's actually a project called fig which just got absorbed
into Docker that lets you describe all the services your project needs
and it will -- you type fig up and it spins up all of the external
services that you need to run your project and you just can -- it's
called orchestration.  It spins everything up and it's ready for you
to start working.
     >> There is like a more general big picture question, do you find
an advantage to develop applications that run in their own little
environment and play that environment out than have a bunch of
different environments as opposed to having one big environment that a
bunch of apps run off of?
     >> Someone mentioned this recently in the video I just watched.
And it was the auto.com Docker.com/talk.
     >> You're deploying stuff to AWS.  You probably have an AWS
account for one situation.  You have one AWS instance for that.
     >> We do one instance.  We can keep everything separate.  AWS has
a new instance called T2 which is a new good sweet spot because before
it's really easy to over provision.  I need this thing run fast but I
only need it sometimes.  So the T2 instance is, lets you burst CPU and
then -- so like Jenkins is a good example because you need it to run
your tests.  You want your answers now.  But most of the time it's
just sitting there waiting for you to push a new command.
     AWS has a lot of instances, you can probably find one that's a
good price point.  So like you're not going to -- like if you're
trying to save money, I don't know if you'll be able to save money by
getting one instance and trying to utilize it to its max?
     >> I think sort of the philosophical question of what's better
comes down to from my point of view, I want to give other developers
and people working on these apps as much access to their app and how
it's running as possible.  It becomes problematic where there is one
server.  The possibility of them trying to turn off their app for a
second and turn off every app is way higher.  There are trade offs in
the resources way.  Ideally I'd have an actual computer for every app.
It would be incredibly expensive.  So in reality I was to collapse it
down.




     What tools do you pick to make that process as painless as
possible?  That is what this is about.  Docker is interesting because
you can get some of the same benefits of -- isolation.  But at the
same time I can keep them away from other people's apps.  Not in a bad
way but in a way --
     >> You don't want them to take down everything.
     >> They don't feel comfortable with that situation either.
Everybody is power hungry about getting on the power server.  Oh shit
this is the command line on our only server.
     >> When somebody is building something you have to make a
conscious decision that, um, I think this thing is only going to last
a year or whatever.  Because you can't like just get a new instance, a
new instance and then you have thousands and thousands of instances.
     And as you were saying if you're using different versions of
post-GIS, eventually something is going to have to be upgraded to work
on newer software and corralled together.  It's hard to manage what
you're saying.  That's the problem, right?
     >> We talk about what we can do to design, it's like designing a
packaging so it's more recyclable.  How do you design an app so it's a
set of flat files that we put on cheap storage and never have to run a
data bass again.  Some of it is that.  But we end up with a lot of
legacy stuff.  We run 150 apps and they're not all current I guess is
what I'm saying.  That's putting it lightly I guess.
     >> Going back to the -- basically, the point I want to get across
is with dev ops, it lets you be braver.  If AWS is A, I and S, if you
don't have the ability to shut down something else you'll be more
confident to be in a command line.  If I mess something up, I'll only
mess up my own stuff.  If you have the ability to reprovision things,
if you have a good recovery plan, then, if you take down the whole
site and you have a plan to deal with it, then like, you just ...
It's okay to make mistakes.
     And a really good example of that is the net flicks chaos monkey.
Has anyone heard of that?  Basically the idea is that imagine there
salmon key in your data center just like randomly destroying one thing
at random times of the day.  Could you deal with that?
     And so Netflix has a software monkey that goes around and shuts
down and destroys things on the infrastructure.  If they can't recover
from that, then they're not doing their job.
     So this is kind of like testing.  You got to spend some extra
time to do a little bit of extra work to make sure you can -- there is
like running tests is one step.  And then automatic provisioning which
is a pretty huge step.  But then there is a lot of morphing to go.
Now I have multiple availability zones in AWS.  I have to be able to
recover my -- like this service after writing a recovery plan for this
service I have to jump to the next one.  It will take time but in the
long run it will give you confidence that your infrastructure will
survive and you're not woken up at 4 a.m. by your CEO and asking why
the site isn't working?
     >> One thing I really appreciate about our ops folks is they've
written amazing deploy scripts and made them widely available.  And




literally you type the word deploy.  There is nothing I have to know
as a developer in order to use that.  There is an equally easy way to
revert and fix something.
     It makes me more courageous as a developer.  And certainly when I
was just starting to begin to be useful.
     >> There is a concept called Chet ops and you do all the deploys
from hip chat or ISC (ph.).  Right now the only thing I have got is
that I've got it so you can purge things from cache.  We have our
testing reports fed into Chet.  I want to make it so we can deploy
from Chet.  It makes everything public.  It's not a tool to show up.
It's a tool to open up.  Like, hey, if you want to get something
deployed, you don't need to find me.  You can do it yourself.
     >> We have all of our deploy go into the ISV.  But you see it
right away in the channel deployer command.
     >> I have more things to go over.  Well, I guess I am wondering
what -- for those of you who said you wanted to learn more about how
to deploy things yourself, do you have any specifics?
     >> No, I'm sorry guys.
     >> I'm fine.  I guess recommendations -- I'm good at reading
documentation and stuff so if there is anything helpful for me to read
to be more sympathetic with the people I work with in dev ops, I would
be cool with that.  I don't know if that is a dumb request.  You can
say it is, I won't be offended?  Or you can laugh or make a noise that
would also be cool.
     It's a little uncomfortable bracketing this with silence?
     >> This URL has a list of some tools.  The very last link is a
list to a much larger list.  If you really want to dive into what is
out there, it's a good list to go see.  I want to do like customer
surveys.  I think there is a whole bunch of links in there about that.
     >> I did a couple links.  There was a project, an open day-to-day
and there were a group of dev ops engineers that talked about this
project minus which is an easier work flow for data flow, whatever
platform service they want to.  And I'm not sure if it's been audited.
I know they're maintaining it kind of.  But I think it was like three
dudes.
     I just put it up there because I thought maybe they would
appreciate some feed back from other people that work in different
news rooms and things.  I am trying to hijack the silence with my
comment?
     >> This makes me think of a question in general.  This stuff is
highly complicated.  A lot of it.  It would appear to me if I'm a news
developer or something, the optimal amount for me to know about this
is zero.  The more I have to know about this, the more I don't think
about my job which is developing these apps or something.
     First of all, is that true?  And second of all, if I am stuck
without the dev ops person I must know something about this, what are
the -- what is the minimal set of things I should learn?
     >> The minimum useful set.
     >> Roku I guess.
     >> What I would say is like that's not totally true for most




people in the sense that everything that you need to know is
everything that you have to ask somebody about when you're blocked on
doing something.  There are a lot of those things I'm sure.
     Those are the pieces that instead of having to ask that question,
like, you know, even doing dev ops, I would want to know how can I
figure out how to let you solve that problem next time.  I don't want
to update the DNS routes for your application.  I don't want to add a
rewrite for you.  If in certain scenarios I have to be the person that
does that, those are exactly those things.  There are things with your
applications where you have pain points that involve you having to ask
for something from a dev ops person and that is a loosely formed set of
things that varies from organization to organization.  But there are
things that are appealing to the minimal useful set of things.  What
do you get block on for your application which you normally think of
as not the development part of your process but really is.
     In general, be comfortable with the command line is something I
would say.  Some of these things are good places to start.  Knowing
how to run your application is a pretty good -- if nothing else a
simulation on what it takes to deploy.  Getting familiar with Docker
is a good place to start.  That is a technology that we are going to
be using more and more.  And I think it's going to be something you're
going to hear about eventually.  And not only that but it's easy to
wrap your head around from a non-ops point of view.  Say something
happens in your data center, it's not as complicated as the virtual
machines.  I think it's only a question of time for that.
     But that's it?
     >> Increasingly there are tons of free, for vagrant there are
tons of environments that you can grab.  Just something you can start
to build.  If you have an idea probably someone did it before and you
can find it.
     >> Right.
     >> I think that within a year if you can build it yourself
locally in Docker you'll be able to also deploy it.
     >> I totally agree and I think we're figuring out how some of
those tools work now, it will serve you well in the next year.  That
might be where all this is heading.  I think it's becoming less
important to know a lot of the nitty-gritty stuff that is happening on
the server and more important to understand how to package your app in
a way that it can play nice.
     I don't think everybody should run out and learn AWK (ph.) and
stuff.  But learning how to build a Docker file for your Python
application would go a long way.
     >> I find building stuff up and tearing it down and building it
up and tearing it down, repeating the process just to wrap your head
around it.
     >> Speaking of, I've never liked chef or puppet.  I've played
with them a few times.  I've always given up.
     >> They've been through the wringer.  I think there is a world
where the Docker stuff is very threatening to them as well and it
solves a lot of problems in a different way.




     The automatic infrastructure and code stuff is an interesting
concept.  That is what chef is about.  Write a ruby script that
configures all of your servers.  That stuff can break down, too, if
you don't see it coming.  You have databases full of passwords for
other databases and no way to interact with them.  In a way you can
build a meta trap out of that.  It's not a bad concept but it's a
really interesting time in the dev ops world.  That was the very
accepted wisdom from the recent several years and I think people are
coming out of it into different things?
     >> One of the things I think is really interesting is that a few
years ago if you wanted something online it was like PHP, Apache,
Linux.  And one box just install the services and you're online.  And
now, it's like, oh, you need 15 different boxes just to do zero cue
and all these crazy alphabet soup.  Just to run this one app.
     I think with Docker, we're going to get back to something like
Lam.
     >> With Docker you can go back.  You can use all the modern
components if you want but if a developer wants to write in PHP they
can pull down that container and have at it.  It's cool.
     >> I think it's helpful if you're a apps developer to know about
ops.  Knowing if the code you're writing will break the cache or not
is a valuable skill.  Look it's a feature and then it will be a while
and one person will go, wait, that will totally fuck up our cache and
the sun will go down and we'll scramble.  If everyone developing code
has these ops, like dev ops, then you'll know that if I make this
change it will probably break the cycle.  So I probably should do it.
     So we've got -- we went through this trial of learning what vary
by cookie meant.  Vary by cookie is whenever you serve -- a good
example is every website you go to it says log in.  Or you registered
at this at the top, if you're logged in or not it will know.  The only
way to cache that is if you vary it by cookie.  You don't want to send
Alice's log in message to Bob.  What you end up with is caching an
entire site for this one box at the top right.  There are tricks and
tips and techniques for not doing that.
     But there are things like if you're doing a quiz and you want to
customize the results, you have to realize if there is a caching in
front, whether or not every page is going to be served from caching or
from the server or not.
     That's information you don't know unless you're on both sides of
dev and ops.
     And speaking of like archiving a lot of old sites, I've been
doing a lot of research into using WGIT to pull down and archive old
chunks of our site, we keep accidentally breaking stuff.  And people
go, hey, remember this interactive from 2011, why doesn't it work
anymore?
     >> Somebody does.
     >> We've been experimenting with transparently serving, like we
have a core, for caching we have a common share CSS but we've been
experimenting with quickly archiving not just single pages but whole
sub sites.  From a cache instead of from the shifting common style




sheet.  So as we change styles, random act rebuilt two years ago that
relied on one quirk and it doesn't break.  Accept we have to do it
proactively.
     It's still better, it's a huge improvement over what we used to
know.  Now we don't have to fix it.  We just have to archive it.
     I hear a little activity.  I don't know what time it is?
     >> It's 5:30.
     >> What time do we end?
     >> 5:30.
     >> I'm hoping this will live as a living resource.  As you find
things that you think are useful, I have a link and a small
explanation of why I think it's something valuable.  So I hate chef
and puppet but they're in the list because a lot of people like them.





































This is a DRAFT TRANSCRIPT from a live session at SRCCON 2014. This transcript should be considered provisional, and if you were in attendance (or spot an obvious error) we'd love your help fixing it. More information on SRCCON is available at http://srccon.org.

Captioning by the wonderful people of White Coat Captioning, LLC
whitecoatcaptioning.com

SRCCON 2014
Session 20   7-25-14, 1100-1200
Franklin 2
"Make your own security blanket"
Session leader(s): Jeff Larson
--

JEFF:  So I'm Jeff Larson, I work with ProPublica.  I have been living in -- let's just say -- sort of a high-security lifestyle for a year now.  Last June, a bunch of very nice British gentlemen came to our offices and asked us if we wanted to work on the Snowden story to which I freaked out because I didn't know how to communicate securely.  About two months before that, my boss and I spent a week setting up PGPT keys.  And funny story.  Klein, who's my boss, he has two PGPT keys because he forgot the password to the first one.  He is the smartest guy in the whole entire world.  Like, he knows Perl.  So he has a PGP, and he also forgot to generate a revocation certificate which is a thing that you have to do to take down a key.  So now, he has a permanent key that he can't use.  And a lot of people email him.  So I want to talk about that situation, right?

I carry around two laptops.  I got an extra one here.  And it's a pain in the neck because, you know, it's a pain in the neck to use these things.  So two nights ago, there's a security tool that I use, and Bart Gellman uses, a tool called Tails which we'll get into but I want to whine about it, first.  Two nights ago, you know I learned that there was an upgrade for Tails and my wife and I came back from a lamaze class, and maybe have an nice night but I said, "No, I'm going to upgrade Tails."  I stay up until 2:00 in the morning trying to fight this stuff.  So it's really important to me that these security tools steal your life, right?  Everything that's easy -- everything that you do right now is easy and automatic and like, you don't have to worry about it but once you start reporting in -- you know, it doesn't have to be on the student stories.  If you're talking to people in war zones, or even if you're working on a story that might be under a threat of being subpoenaed, this kind of stuff might happen.  So that's just kind of the overarching theme of this talk, is that security's too hard.  I'm going to show you a bunch of tools.  But, you know, maybe start thinking about, like, as I go through all these tools, start thinking about if you've ever used any in the past, ways in which they were, like, hard to use or difficult to use, or not fun.  If you haven't used any in the past, please, by all means visit the websites and visit the websites as I go through them and think to yourselves, "Could I figure that out?"  And if the answer's no, then that security tool's a failure, right?  If you haven't used some of the tools, visit the website.  Try and figure out if you could figure it out.  And how long.  Try and budget it because at the end I want to do this sort of experiment where everybody goes through and says, "How many hours would they have to devote to, you know, having a second laptop and doing everything securely?"  So we're going to start with security tools.  Then we're going to do -- I'm going to do, actually, a fun example of how cryptography works.  We're going to talk about elliptic curve exchange because we're at a programming conference and everybody should at least know the underlying protocols.  And it's really easy, so don't worry about it and then we're going to talk about slow crypto, you know, this idea that you -- you can do it yourself.  You can also write in routines and then figure it out.  And then we're going to circle back and talk about how.  So first things first.  Throw out, can people start throwing out security tools that they've heard of?  So we've already talked about one which is Tails.  We're talking about that a little bit.  But anybody else?

> Keybase.

Keybase is more of a directory server.

> It also helps you set up a PGP.

JEFF:  PGP and GPG.

> OTR?

JEFF:  OTR.  Any other ones?

> Tor?

JEFF:  Tor.

>  Onion browser.

JEFF:  Onion browser.  That was written by our own Mike Tigas.

> And https?

JEFF:  Https, great.  This is the one that everyone uses.

> Hopefully.

JEFF:  Well, if you've ever logged into a bank -- how many times have people, like, when you get the yellow screen saying that this site's certificate isn't valid, you just click right through so that's the value of this thing.  So we've got Tails, Keybase, OTR, Tor.  There are -- I'm just going to throw in a couple more here that I want to talk about.  Cryptocat, and I want to talk about MiniLock.

> Would you consider the two-step authentication for Gmail or things like that?

JEFF:  Sure, two-step authentication.  But you don't have a choice with that.  So I would consider that a part of security.  You would have an choice if you're implementing it yourself but as a civilian, two steepy then the indication doesn't help me, you know, hide things from surveillance.  So -- and if I sound like a crazy it's because I've been living this for a year, right?  And there's one final one which is, you really only useful if you just want to talk to yourself, and no one uses it, it's called Pond.  So what I want to do is I want to sort of use a proxy variable here.  We're going to go through these tools and we're going to assign it a score based on how many of you guys have used it, or know about it and then we're going to go through them.  So Tails, how many people have used Tails?  Okay, we've got one person.  How many people, let's -- Keybase, it's part of PGP.  How many people have PGP keys?

> Tried but failed in the setup and I said, "Fuck it."

JEFF:  Eight so --

> And then we worked with someone else and then we both said fuck it.

JEFF:  The higher the score the more prevailing it is.

> Can you ask a second account on how many people could use it on purpose.

JEFF:  How many people can use it on purpose.

> I actually haven't use it in years.

JEFF:  So one fuck up, eight have used it, four can use it, like, regularly.

> Like, I have a PGP key but I can't remember how to do anything with it.

> You have multiple keys?

JEFF:  OTR?

> More keys on the keychain.

JEFF:  How many people have used OTR?  One, two, three, how many people have he had vested fingerprints of people that you were talking to?  Okay, great?  So, so far we're doing pretty bad.  How many people have used Tor?  Just curious what you used Tor for?

> To try it out.

> The Raspberry Pi or --

JEFF:  Listen, Tor is actually really easy to use, you just download the browser bundle and you can use Tor.  Https, we don't need to go through that.  Anybody here of those, crypto cat?  MiniLock?  And pond, don't worry about pond.  So now, for everybody else let's go back through and talk about what these things are.  So Tails is basically you install -- I have it here -- you install Linux distro on an USB stick and it takes over your computer and you use, technically, what will be in theory, a very secure, very ugly -- you have a secure operating environment.  You can do on a write-only thing and what happens when you shut it down it wipes the whole entire memory.  So everything that was, like, ephemeral there just gets erased and wiped.  So even if someone else's like, pulls you over and is give us your USB sticks.  You go great, cool, you figure it out.

> Is it enencrypted on there?

JEFF:  There is an option, there's no persistent store by default but there is an option for persistent store.  The problem is tails is you come home at 2:00 in the morning and you're trying to upgrade it.  It's not possible for humans to install on an USB stick.  It takes -- you have to download like this, you have to download Perl and you -- and all of this stuff.  So while this is their secure and you get essentially a very secure environment because you're not storing anything on it.  And if you are storing, it has to be encrypted, it is super, super difficult to use, right?

> So the persistent storage, do you have to actually -- I mean do you have to trigger a shut down for it to know, okay, wipe the memory now?  You pull it out?

JEFF:  Basically if you pull out the USB stick, there's a kernel panel that wipes the memory.  As soon as possible.  The other funny part and it is that there's also an omission to cloak it, you can make it look like a Windows XP computer -- yolo, I guess, right?  So Keybase, PGP, the whole sort of -- the whole sort of environment surrounding PGP, and PGP.  How many people have never heard of PGP?  So PGP stands for Pretty Good Privacy.  There's an open-source version written by Richard Stallman called the GNU Privacy Guard.  And essentially what happens with PGP is you generate a key pair, so you generate a public key and a private key.  You keep the private key on your computer.  I still have no idea where they store it on my computer.  Try and find private keys, you won't be successful.  And essentially, what you do is, it's for email.  So you want to send an email that's encrypted that can't be read over the wire, you encrypt your email with the person you are sending private key, and you sign it to make sure that it's verified.  And then they're able to unlock that thing.  Does that make sense?

> You encrypt it with their public key.

JEFF:  Yeah, with their public key.  So they always about to.  So there's Alice and Bob, and Alice has a public key and a private key.  This is -- we're going to -- let's just do secret key.  Public and discrete.  And Bob has a public and secret.  Bob encrypts with her public key and through the magic of cryptography -- and then he signs the message with his secret key through the magic of encryption.  Once Bob -- once Alice receives this message she can decrypt it with her secret key.  So it's a very low-level version of PGP key.  There's many ways to use it as a command line tool.  Traditionally if you set up a search how to set up a PGP.  How to make a command line page, you can throw your computer in the trash at that point because you don't want to use the command line tool.  For Mac there's GPG Tools.  GPG Tools.  And for Windows, it's WinFour -- GPG for Win.  Not "Win for Mac" -- that would be awesome.  GPG for win.  So what do those GPG Tools, what does that do?
JEFF:  So these GPG Tools -- GPG Tools installs as a binary distribution, installs it on your computer and it allows you to use the built-in Mac Mail like pretty transparent.

> So it sounds like you send a message?

JEFF:  -- signed and encrypted with your key.  Now the problem with these things is the other person has to have a key.  So if you're talking to a source, or if you're, you know, like a relative or whatever, they're not going to have an key.  So there's an adoption problem.  Like, if you're talking to me, I have a key and we'll encrypt all day, it would be awesome.  But, you know, if you're talking to a loved one or something they're not going to have that automatically.  Google is trying to fix this problem by creating an add-in to Gmail that's currently being security audited.  Couple of these things you're going to have to wait a couple of weeks and then you'll have access to them but -- so it's it sort of begs the question and where I was going with that is how do you get someone else's key.  Well, you could meet in person and say, here's my key but there are, as part of the PGP universe there are these things called key servers which stores all these keys.  So you upload it to a key server and then other people download your key and they have to verify a small number, but how many people have verified PGP keys in the past?  Okay, two people.  You know, 'cause I mean, whatever, right?  So that's like an extra step, right, all of these tools steal your time.  That's how they work, which is frustrating.

> Should you ever upload your private key to a key server?

No, no, never, ever.  Your private key, you shouldn't ever even look at it.  It shouldn't even be in your brain.  So your private, that's the other problem, if I have one computer and there's a problem that MiniLock's trying to solve but if I have one computer with keys on it, and another computer with keys on it I have to, like, merge those somehow, so there's, like, this really complicated way of extracting keys and putting them on a different thing, and you don't want to send them over the network 'cause you're going to say, I guess, and then you don't want to email it to yourself.  That sort of thing.

> So does that mean that you should have an different one for work than for home or?

JEFF:  I have -- you -- it's so complicated to answer that question.  You want to have one key per email address, right?  There is a way, and I have never been able to figure it out, attach multiple keys to one identity.  My guess would be, if you go to pgp.mit.edu and search for Mike Tigas' key, which is this super crazy nerd thing that you can do.  But I've never been able to figure it out.  So the problem is these PGP servers often aren't encrypted and there's only one point of verification.  You only know -- if you typed in who you want to talk to in a search box, you have no idea if that's actually their key.  And so what Keybase is trying to do is fix that situation where you can follow somebody on Keybase and they will post on GitHub, on their Twitter, "Security proves that the this is actually their key."  So they'll tweet out, "This is actually my key."  And that he is into Keybase and it'll verify on Keybase.  They'll post something on GitHub and it'll verify on Keybase.  The problem with Keybase for journalists is a social graph.  If I follow Ryan Pitts to get his Keybase, or if I follow -- he has secret documents then all of a sudden that's, like, public information.  So there's a lot of things that you have to think about.  But I love that Keybase is fixing this problem of getting other people's keys so you don't have to, like, walk over to their house.

> Keybase will let you upload your private keys using their web interface, though.  Which I did, after which, I realized...

JEFF:  So... my look of horror?

> They shouldn't even have that feature.

> It's like yeah, it's built in.

JEFF:  That's, like, the other people other thing.  Now you're putting a whole shit ton of trust in Keybase that they're not going to get hacked but for most people, for most people it doesn't matter.  For most people, it's easier, and you're not -- I wouldn't worry so much about it.  A lot of this security stuff is figuring out your threshold of worry.  My threshold of worry is pretty fucking high.  Other people's -- I just want to write secret stuff.  I want write things that are not super, hyper-sensitive incentive, right.  So I'm doing a story about the cops.  What are the cops going to do?  Check your emails, maybe?  Well, you can have all my emails but they're all encrypted, good luck with that, guys.  Or you can do what levo lessen son did.  And print out your key in very tiny type and it would be, like, 16 pages.  He he no longer runs his company because of that but you can try.  The one thing that I haven't gone over is, this is all just math and what public keys and private keys actually are are just gigantic numbers that are 496 bits of -- 496 divided by eight, I don't know, like, 500 character long numbers, right?  That are just super, super hi and then via some tricky math we'll get into this a little bit in a second, you are able to do this encryption.  So bee case and --

> Is it important to understand because I know when I created a couple of different keys I can create more complex keys by redoing the math so is that important to understand at all?

JEFF:  So how many people have set up https on a web server?  This is the same sort of thing if you use RSA keys.  How did you -- did you read, like, the manual page on how strong to make your keys?  There's, like, a manual page and you have options because computers get faster over time.  So, finding out a secret key from a public key just requires a lot of math and there are fancy algorithms for that that you can brute force.  And there are options, right?  So this is another reason.  How do I know how big my key should be?  This is another thing that you got to do a little bit of research.  There's 1,024 bit is I think the smallest that you can make if you're making RSA keys.  But, this is no longer considered secure by NIST, so anything greater than 1,024 because it goes by the number of bits that you add, it's an exponential curve for breaking it.  So if you do 2,048, you'll probably be fine for a very, very long time.  If you want to be fine until the stars die and the oceans collapse and, you know, the universe shrinks in on itself, assuming we don't get quantum computers, you want to do 4,096.  Anything bigger -- Mike Tigas has -- I love Mike Tigas obviously.  He had a 16,000 key, and again steals your time.  It takes 15 minutes for him to encrypt an email.  And he has a supercomputer sitting on his desk.  So, you know, that's, um, kind of how it steals your time.

So OTR.  So does everybody know what we're talking about when we talk about OTR?  Anybody not know?

> I don't know.

JEFF:  Okay, looking at those things, what -- and I'm -- this is sort of trolling the stenographer right now.  This is considered off the record.  We're not going off the record.  This technology -- we're talking about "off the record."  I will switch back to OTR.  We're on the records.  OTR is a layer on top of -- it's a chat protocol on chat protocols that you use all the time.  So when you're using Gmail, you're using this protocol called Jabber.  Well, not anymore but you can use Jabber with Google Chat.  And, it encrypts on top -- it's basically a transparent plugin that you download Adium or something and it encrypts on top of it.  So what Google sees is just garbage.  What the person you're talking to sees is, you know, clean, plain text.  Now the tricky part about OTR is the first message that you send to somebody is never encrypted 'cause "reasons," right?  Why would you want the first message encrypted?  And people don't know that.  So I'll often get, "Hey, did you do that super secret thing?"  And I'm like, "Oh, well, I guess it's not super secret anymore."  So usually what I do when I do OTR if you ever chat with me, you'll get a bunch of dots.  I actually go to the fourth message because it has this weird key rotation.  And you'll think that I've just, like, sat on my keyboard.  But OTR is relatively easy to use, in terms of easiness, you can see on our score, right, PGP a lot of people have used it, but we've had five fuck-ups.  OTR, one person used it, and it was pretty nice.

> If you use Adium, it's super easy.

> But both who are chatting need it too, right?

JEFF:  And the another part is and it happens to me all the time, if you have encryption, the other party then gets a message that looks like garbage and it tells you to go to cypherpunks.ca.  And -- because cypherpunks sounds really cool to us, like, fuck yeah, hackers, right?  But everybody else looks at that and think, "You're in my computer."  And they throw their computer away.

> Which is also probably secure, right?

JEFF:  Which is also better.  More talking to each other, and hanging out, and drinking coffee, but sometimes your mom's in Minneapolis, or something.  And she's getting this message about cipher punks.  So OTR super easy to use has weird quirks that are really, really frustrating -- again stealing your time.  So all of these things are stealing your time.  You're giving up your time in order to feel a little bit more safe.  And to actually be, in some situations, more safe.  So think on that when you start to use them.  Think on who are you protecting from?  If you're really, really excited about it and you want to use it because it's already cool and you feel like a badass, use them all the time.  Every email I get that is signed so that everybody gets my PGP key.  So you can encrypt -- you can sign an email to verify that this is what what you wrote.  You know, when you use git, and you look at the git command and it's a long hash, that's basically signing.  It's a similar sort of algorithm.  It's that -- it's a proof that no one tampered with this email on the way.  So, and it just sort of becomes part of your life over time.  So Tor, first time I used Tor was to script bureau prisons website because they rate limit you.  So the way Tor works, and you've seen this in movies.  When they're like, we're trying to trace the hacker.  And it shows a map, and there's all these lines and it's, like, he's routing the money through seven different banks and we can't find it, or whatever.  That's exactly how Tor works.  So you connect to the Tor network.  Your traffic sort of bounces around all over the place and then, um, it exits the Tor network and then communicates with, like, Google, or Twitter and in my case, the bureau of prisons website so that I don't get rate limited and the idea is that then your traffic is anonymous.  That someone watching the network can't see that you're visiting Google, right?  Doesn't know, right?  Because you get a whole new IP address and your IP address goes in here.  It's a great tool, you know?  It's a great tool that I like to use when, you know, say I'm investigating an agency or something like that, and I don't want, like, you know that Congress edit Twitter account?  Have people been following that.  So Congress Edit are people from Congress who are editing Wikipedia and they edit the yes -- there was, like, one guy who really, really likes Yes, like, the band Yes and he goes in every day and tweaks the article over and over and over again.  That guy should probably be using Tor because at work, he's really geeked out about Yes.

> So if you were investigating someone you would use Tor to investigate their website so that they wouldn't know you were investigating them?

JEFF:  Exact same reason for the Bureau of Prisons, it's a good way to get around and be secret, discreet.

> It also, um, if you have, like, web sense or something at work but you use Tor.  Web sense doesn't know what you're looking at either, right?

JEFF:  Yeah, yeah.  So you connect to some random person on the Internet, essentially.

> So if Netflix, for example is not allowed at your workplace.

JEFF:  Not a that I've tried that.  Except for this server, this exit point, probably, like, in Germany because the Germans love Tor.  Tor is the German word for "gate" so it sort of makes sense.  So, it's sort of, like -- I like to describe Tor as https on steroids, right.

> What's .onion?

JEFF:  Okay, how many people have heard of secure drop?  Okay, Secure Drop is a Dropbox that news organizations are setting up where you can get where, basically we can get anonymous "here's a leak" or "here's a whistleblower" thing.  But my problem with Dropbox is we're going to have to verify it anyway.  We have to reach out to the person who anonymously dropped it, and say, okay, how are these real?  Did you make them in Photoshop?  But Secure Drop, the way that it works is, you visit a https page that tells you to download a Tor and then it goes to a ".onion" URL and that's a hidden service and that's a service that's only connectable through the Tor network.  There's this great -- there's also this really, really really fantastic tool for sharing -- for sharing files.  And I like to use it not because it's secure or whatever, but because I can share a file from across a country to my boss.  It's called OnionShare.  So let's say I want to send a huge file that's too big for an email, I just drop it into OnionShare and it's written in Python and it's, like, really, really awesome.  You guys should look at it.  That, I would say -- these -- I'm going to put that into easy section.  So it's OnionShare.  These guys are the easy section.  And this guy 'cause you used it already.  Cryptocat will offer some security -- Cryptocat is -- it's basically -- it's like the Nintendo version of OTR, right?  It's kind of like the Game Boy version.  You guys should all go to the website 'cause it's adorable.  It has, like, the best icon.  And it essentially is, you download Cryptocat and you log in to a chat room, and everything is encrypted.  You don't have to verify fingerprints.  You don't have to, like, worry about anything.  It's the super easiest thing in the whole entire world to use.  In the past, it had some security problems but now they've sort of fixed it and it works really, really well.  So if you -- the other thing is, these tools here are the few tools that actually solve, like, great problems.  These tools make your life difficult.  These tools if you want to chat with somebody, you just say, "Download this and join me in the 'jeff is awesome' room."  And everything's encrypted.  And it's, like, super easy.  I could get my mom to queues this.  I could get my dad to use this.  And, you know, people who are not particularly technical can use it in a heartbeat, you just send them a link.

> So you just said that Cryptocat had some security problems but they're fixed now?

JEFF:  Well originally.

> How do you know is my question.  How do you know that there's no...?

JEFF:  Well that brings up a good point with these things.  You trust the developer.  You're looking for tools that have been audited.  Auditing is more important than open-source.  It really, really is.  Paying a company to try and sit down and break a tool.  And like all these tools, https is so widely used is that it's not really an issue.  So they're starting up the auditing on Open SSL but you want -- so these ones -- OnionShare is currently undergoing an audit.  Mike Tigas -- Onion Browser, which is Tor for your phone underwent a security audit.  And minute-lock even before and we'll get to this in a second, MiniLock underwent a security audit.  I don't think Tails had one.  Tor certainly has had many.

> Where would you look to find if a service has been audited?

JEFF:  Just Google, you know, "Tails audit."  There's a handful of firms, like, Cure53 does it.  You know, the other thing that you can do is, all of these things have issue trackers.  So go back to the issue trackers and just see if anything smells weird.  But again, even in Cryptocat's case it would take somebody on their laptop, like, six months to break a conversation, right?  So when we talk about -- so cryptographers and security researchers are, like, some of the -- you know, I have friends in that community but when they talk about technology but they're some of the meanest people that you've ever met, right?  And they'll tell you anything less than perfect is broken because that's how they have to live their lives, right?  They have to live their lives in this theatrical world.  But Cryptocat taking six months for the encryption -- six months on a laptop for the encryption to be broken is not a really big problem for most people.  At least it's encrypted.  You'd have to have been talking about some really, really, really crazy stuff for them to want to break that.  In the meantime, if they're that interested, they'll just throw you in jail and wait until you tell them, right?  Or they might just ask you.

> You said that you would email the link to somebody, wouldn't that be the entry point rather than getting to the chat room?

JEFF:  Yeah.

> Check the link.  I'm in there, too.

JEFF:  Here's the link.  I was just saying, hoard to get people up and rolling on Cryptocat.  It's the easiest thing.  Go to this website, meet me in blah, blah, blah and then that person shows up, right?  OnionShare solves a great problem.  It's sort of like a peer-to-peer Dropbox.  So if I wanted to send something to Ryan or folks, you just drop it in, they click a link on the Tor browser and you get the file.  And it shows you how -- and then it closes and then that secret, hidden service disappears for the rest of ever.
> How do you know that the person who shows up in your Cryptocat room is who they say they are?

JEFF:  Ask them, hey, Ryan, what did we do at NICAR last year?

> So there's no signing?

JEFF:  Well, you could do the fingerprint verification, but do you know what fingerprint verification is?  Hey, are you Ryan Pitts?  That's not technically true -- this is so crazy to me but we're talking about, like, somebody who owns the network, right.  There can technically be, like, somebody, there can be a guy in between you -- this is Alice, Bob, and Mallory is what people like to call him.  It sounds like a band name, right?  He can be sitting in between and intercepting Bob's messages, transmitting them to Alice.  So that's why the fingerprint is there.  You know?  You call him up on the phone and say, hey, what are your numbers, what are the numbers underneath your name, or Cryptocat actually chooses colors.  I'm not entirely sure.  I know my wife had a little bit of problems when we were chatting on it, verifying via colors.  So I think he might have changed it so that they're colorblind-safe but that's actually a great way so that the read-off is not a string of numbers.  You just say, beige, light purple, and there are four or five different things.  Cryptocat is great.  If you Google search it, a lot of people beat up on him because he was sort of outside of the security community, I think for political reasons.  And it's written in Javascript and a lot of people are, like, oh, man, Javascript crypto, but you know, it's browser-based crypto that's bad.  It's that website that does AES encryption on a web page that you go to that's not https, served over https.  It's not Javascript crypto.  So code stuff.  So Cryptocat started as, um, as a website and then he made it a browser plugin that you download and you can put in Chrome, basically, essentially.  There's a standalone version essentially, too.  But that goes through a verification process and the code is signed, just like how you sign your email.  So you're guaranteed to get a sort of verified program that you run on your computer.

MiniLock is coming out in two weeks, currently undergoing a security audit.  It's beautiful, wonderful code.  It is GPG encryption without the mess.  So you boot up MiniLock, and you log in, and you type in your password and then it generates these key pairs and then you can encrypt and send a file to somebody.  It's beautiful and amazing.  And Pond, pond is, um -- it took Mike Tigas six hours to set up Pond, so let's not talk about it.  Pond has to run over Tor, it runs on Tails.  Basically if you want to talk to yourself, or me, you can get on Pond but I wouldn't do it.  If I had to do it -- yeah... all right.

> Jeff, what about TrueCrypt?

JEFF:  Haha, what about TrueCrypt?  I don't know, and it's freaking me out right now because we use a lot of TrueCrypt.  Let me say a sentence to you that probably should have freaked us out from the beginning.  We're, at ProPublica we use an encryption tool built by people, or a person, or people who no one knows who they are, wasn't fully open-source, didn't take any bug fix issues and we trust it with some pretty secret stuff.  Like, that's what TrueCrypt is.  It seems to work.  Everybody that looks like it seems to say, yeah, this is the right way to do it.  But I don't know, right?

> What does TrueCrypt do?

JEFF:  TrueCrypt is like MiniLock.  TrueCrypt, basically, essentially it creates a sort of, like, encrypted file container that you then mount and you can drag files in and when you close it up, it just looks like random bytes, right, that are indistinguishable from something else because it's encrypted.  But what happened two or three months ago is they took down their website and they were, like, just use Windows encryption and you're like, ah, man, really?  So they say Windows, or on your Mac, you can jump through a lot of hoops in creating an encrypted file container, too.  But I don't know the jury's still out on TrueCrypt.  It was undergoing an audit at the time and the guy who's doing the audit, Matthew Green, I talked to him and he said, the code base is still pretty clean and clear but I don't have an answer for you.  TrueCrypt is an easier tool to use.

> Do you know much about, like, the firevault, the Mac sort of disk encryption stuff.  Like, is there -- has that been audited?  Is there any way to know that it's secure?

JEFF:  It's closed-source but it's written by Apple.  It's the same sentence as it's closed source but it's written by Microsoft.  I don't know.  I don't know, I mean, the cops aren't going to break it.  You know, again, right, you know, my questions are always, "Who is going to want this stuff in this encryption?"  How much more difficult does it make my life, right?  And are there any sort of, like, things that oog (phonetic) me out?  So when we were talking about all this before, going through the issue tracker -- audits before -- Archy Say (phonetic) at the New York Times made one for me, one time but I don't know how to make that particular one on a Mac, so I just never honestly used it because it makes my life harder in a weird way, right, because I load it after five minutes the searching size fuck this, I'll just use TrueCrypt.  But if that's your jam and and if you want to do that I would say bundle it all up in a zip -- you gotta ask yourself what you're using it for.  Are you using it to have an encrypted file that, maybe you'll lock yourself out of in a year because you don't remember the password?  And it's not really all that sensitive material, or whatever and it's sitting on your computer, it's not traveling anywhere then I would say, think that through.  If it's, you know, if you -- if you want to send the file to somebody, you know, encrypted containers are actually really great -- if you want to send multiple files to somebody, encrypted containers are great because they're just a volume and you just send it to them via OnionShare or something like that, and it makes your life easier in that instance.  It's not that hard to set one up.  You just drag all your files and you send them to them.  And you just say, hey, log in to Cryptocat, or Pond, or something like that, well no one use Pond, please.  And you know, send a password over a different channel and then you're set, right?  And that's a pretty easy workflow and one that you could work with.  And the benefit of that is it's in a little bucket:  Here's all your files that you requested.  All right, so let's see... did I yammer past -- well, I yammered past our thing.  So those are the tools.  I want to fix this.  I only have seven minutes left.  We got sort of, like, obsessed with tools, which I would say -- that is the current state-of-the-art with crypto.  We're all obsessed with tools.  And tools don't help make your job -- or do your job or live your life.  I mean, they help you but if you're focused on the tools you're not building your house, right.  You're just like, I've got a fucking sweet hammer.  And I went, and I did research.  And in the end your house is just a bunch of bricks, right.  But things like Keybase, Cryptocat, Onion Lock and OnionShare.  But as news nerds we build things for reporters we build tools for ourselves.  And I would say, like, maybe there's some way that we can help it in this situation.  And it doesn't have to be perfect because not everybody is, you know, protecting against a global network advesary, so a lot of these tools sacrifice usability for perfectness.  We're really good at doing visualizations and explaining things to people.  But it sort of makes sense, we take this difficult thing to do and we start working on security tools, maybe something be bubble out of this community.  Maybe, next time Ryan Pitts can generate a PGP key or something.  And I don't know, necessarily -- I feel like I'm talking at you but -- does anybody have any ideas on how to make it better?  Like, one idea I would say is the idea of keys doesn't make any sense.  You can't have two keys because -- one's a lock and one's a key, right.  You can't -- you can't unlock anything with two keys, you know?

> A lot of it just seems like language.

JEFF:  What?

> Like, if somebody had just written -- if they would just write something these things, it would not make sense to someone who's not a nerd.  Like, I found -- I'm pretty nerdy, and I found a lot of the stuff that was supposed to explain PGP actually impenetrable.  Keybase actually be a pretty good job.

JEFF:  Who?

> Keybase, in explaining that kind of stuff, actually thinking about the language around it and talking about it in a way like, you're approaching in a way people who don't already have all this background information, you know, who aren't cryptographers, I think, makes a big difference, and importantly -- and I think this is sometimes tough for the community of people doing this.  You have to talk in a way that's accessible and, like, not offensive.  I think it's really easy to talk down to people.

JEFF:  Yeah, yeah, yeah.  Definitely.

> Kind of on that point if you're in a newsroom and you, like, I sit with people who could help me do this, and I don't want to bug them.

JEFF:  Right.

> And like -- if you know how to do it, making yourself more available and making it clear that the person who needs help isn't done.

JEFF:  The fun -- the fun -- the reason that I gotta assigned this Snowden story was because I figured out how to open the documents and they were like, well, Jeff should... so there's benefits, I guess.  Self-accessible.

> I think you need almost, like, tiers.  Like off the shelf you're an average beat reporter, here's these tools -- Tor, and stuff like that.  Ford journalism had something like that.  Different degrees of security, like, okay, shit's getting real and there are things in newsrooms where I hate to say this but IT's at fault.  You ever a new laptop, and here's base setup instead of having -- you know, news nerds have to go set up.

> So it's more of an opinion aid stance on it because there are a lot of options for people that are just getting into it and it's a choice pay-off.

> But I like the idea of Robert's though.  Because it reminds me of what Jonathan Stray is trying to get over people's head, what's your threat model.  Who are you trying to protect yourself against?  The local cops?  The state government?  The NSA, or some corporation?  But in this case, do this thing.  Here's how it would be wonderful.

JEFF:  I also think because reporters and people write so sure, talking about threat modeling and stuff that's very, very important, but answering this question, how is this tool going to make my life better, right, you know?

> Well, you have to understand, like, why do you need it?

JEFF:  Why do you need it?

> Do you think you still need to convince people?

JEFF:  What.

> Do you think you need to still convince at least journalists saying this shit?

> I think so, if you're an education reporter, like, and you're getting emails from a source who works, you know for the teachers' union or whatever.

> I didn't even think.

> And the email trail, your source gets fired because of the emails that they sent to you.  And and it's like dude, you don't want to lose your source.  Making that argument I think is helpful.
> And it's helpful.

> And it's different if we protect our sources.  We go to jail if I don't protect my source.

> But I think a lot of reporters that aren't thinking I'm just emailing back and forth.  There's a trail now that even if our IT department reads it one way.

> I think it makes a difference whether it's like can tell whether there was email traffic or what it was the documents that were sent, or that sort of thing that probably people like want it -- you know that that's, I feel like that's the thinking that people don't necessarily have as part of their --

> I also would imagine in some cases cases it would be easier to have a couple of burner phones and transfer the documents.

JEFF:  And again, some of this stuff is in person but you know, rent car and go.

> I think there's a need for a basic understanding of technology and the Internet, right, like you have to sort of know how the Internet works in a really basic sense in order to understand why you need encryption.

JEFF:  Sure. And I feel like -- And I just want to point out, right?  Like, I've circled these ones for a reason because these are the easiest.  These are the ones that if --
JEFF:  Every reporter used this if they were on Cryptocat chatting and if they were using MiniLock, they wouldn't need PGP, right?  If they were using OnionShare, Secure Drop disappears, do you know what I'm saying?  And all of a sudden, these easy tools, while they may not be perfect, have benefited their lives.  You know?  I encourage you guys to take a look at this.  Because all of a sudden, because, explaining how the Internet works falls under -- I didn't write it down -- like, being nice and not talking down.  The reporters don't give a shit how the Internet works.  On what https.

> But if they were like hey use this and they don't know why they're using it or if they somehow get hacked around it for whatever.

JEFF:  Yeah, I understand.

> You have to understand a little bit of the larger concept, you can't just be like hey use this because this is the best.

JEFF:  Because the NSA, that's my favorite thing.  Use this because the NSA is watching you.  Well, who cares?  I'm not doing anything wrong.

> Or each of us has a different focus like, I'm just going to push okay, know where to do that.

JEFF:  So at the outset I asked how many people clicked okay on the cert error.  It's like okay, who cares, I just want to go home and see my kid, right?  I don't have time -- I asked how many people actually did fingerprint verification and everyone was like, 'cause why would you do that?  So I definitely got your point, and I think that's an great point.  And I think framing it in a way that -- the way that I've done it in the past for reporters is, this will make your life better plus here's how the Internet works.

> Right.

JEFF:  You know?  And why you want to use this tool instead of um, Skype, or something.  Did we run...?  Sorry guys, I talked far too much and didn't let you guys climb in enough.  But I'm -- chime in enough.  But I'm Jeff Larson, and I'm ProPublica and I think we're...
       [ Applause ]

> Thanks, Jeff.

> Jeff, what's slow crypto?

JEFF:  Slow crypto is artisanal crypto.

> It's Brooklyn crypto?

JEFF:  It's Brooklyn crypto.  It's crypto that if you're interested in cryptography and you play around and encrypt a bunch of shit and there's a library that fits in 100 beats called NACL and it's written by two of the best cryptographers in the world.  So if you were to have sort of play around with it, it's a great library.  It literally has encrypt, decrypt, and those are the functions you can do.  And I would definitely check it out.  I was going to show you guys graphs and stuff on how encryption works but... and elliptic curves.

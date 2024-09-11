/*
    Project 01
    
    Requirements (for 15 base points)
    - Create an interactive fiction story with at least 8 knots 
    - Create at least one major choice that the player can make
    - Reflect that choice back to the player
    - Include at least one loop
    
    To get a full 20 points, expand upon the game in the following ways
    [+2] Include more than eight passages
    [+1] Allow the player to pick up items and change the state of the game if certain items are in the inventory. Acknowledge if a player does or does not have a certain item
    [+1] Give the player statistics, and allow them to upgrade once or twice. Gate certain options based on statistics (high or low. Maybe a weak person can only do things a strong person can't, and vice versa)
    [+1] Keep track of visited passages and only display the description when visiting for the first time (or requested)
    
    Make sure to list the items you changed for points in the Readme.md. I cannot guess your intentions!

*/

VAR goodness = 0
VAR first_cycle = ""
VAR second_cycle = ""
VAR final_cycle = ""
VAR badness = 0
VAR midness = 0
VAR gong = -1


-> spotsatykotse 

== spotsatykotse == 
Spotsatykotse
*[Begin] -> pre_stir

==pre_stir==
{gong_sound()}
+ [(⊙_⊙)]->a_stir

== a_stir ==

REEEEEEEEEEEEEEEEEEEE.

What a horribly piercing sound.

The only thing worse is your headache.  
+ [Get up] -> judgement_hall

== judgement_hall ==
{your_surroundings: | Painfully, you slowly but surly rise to your feet.}  The last thing you remember is falling and hitting your head, now you stand in the middle of an expansive dimly lit room with a huge door in it's center.
* [Examine your surroundings] -> your_surroundings
* {first_cycle != ""}{second_cycle == ""} [Examine the Door] ->examine_door
* {second_cycle != ""}{final_cycle == ""} [Examine the Door] ->examine_door
* {final_cycle != ""} [Accept the Door] ->accept_door
{gong_sound()}
* {big_voice}[Choose your Karma] -> tripping_death
* {first_cycle == "Lemon Party"} [Choose your Karma] -> another_death1
* {first_cycle == "Chrismas Vacation"} [Choose your Karma] -> another_death2
*{first_cycle == "Pillar of the Community"} [Choose your Karma] -> another_death3
* {first_cycle == "Lemon Party" && second_cycle == "Chrismas Vacation"} [Choose your Karma] -> final_death1
*{first_cycle == "Chrismas Vacation" && second_cycle == "Lemon Party"} [Choose your Karma] -> final_death1
* {first_cycle == "Lemon Party" && second_cycle == "Pillar of the Community"} [Choose your Karma] -> final_death2
*{first_cycle == "Pillar of the Community" && second_cycle == "Lemon Party"} [Choose your Karma] -> final_death2
* {first_cycle == "Pillar of the Community" && second_cycle == "Chrismas Vacation"} [Choose your Karma] -> final_death3
*{first_cycle == "Chrismas Vacation" && second_cycle == "Pillar of the Community"} [Choose your Karma] -> final_death3
+ {accept_door} [Enter the Door] -> karma_score

==karma_score==
The space you enter is a completely white void, you are the only think here, you think.. 

You take one last look behind you at the door but you see it has disappeared completely upon closing.

All of a sudden you here a familiar big booming voice.

"CONGRATULATIONS PLAYER ON A JOB WELL DONE!!! LET'S TALLY UP THEM KARMA SCORE'S FOLKS!."

{goodness} POINT'S IN GOOD KARMA
{midness} POINT'S IN NEUTRAL KARMA
{badness} POINT'S IN BAD KARMA

"ALL RIGHTY THEN, I HOPE YOU WERE SATISFIED FOLKS, IT'S BEEN GREAT TO GO ON THIS JOURNEY WITH YOU BUT AS THEY SAY ALL THINGS MUST COME TO AN END, EXCEPT THE PLAYER'S NEW ETERNAL HOME THAT IS, LET'S SEE THIER FINAL GRAND PRIZE!!!!!

* {badness >= midness && badness >= goodness} [Final Destination] 
->bad_ending
* {goodness >= midness && goodness >= badness} [Final Destination] 
->good_ending
* {midness >= goodness && midness >= badness} [Final Destination]
->mid_ending
* {goodness == badness && goodness == midness}   [пожалуйста, товарищ]
->hello_comrad
==good_ending==
Congrats, you did everything right.  Seriously, go pat yourself on the back for just how good you are.  You just were that awesome.  All the checkmarks were checked, the crannies nooked, and you had 100% completion on everything you ever did.  You have EARNED your peace, that's just a fact.  Here you are in a state of permanent bliss never to have a real problem ever again, it's incredibly easy.  Oh dont worry you wont get bored, we promise.  Sure, you'll still have some resemblence to something that was once a real individual with your own thoughts and feelings, sure, sure.  We promise you wont just be a big homogenous grey blob of goodness alright, it will just be big, homogenous and good, don't sweat the small stuff brotha.  Just go rolling over to that empty corner of blissful stillness over there and have fun, or well peacefulness... 
->DONE

==bad_ending==
Gosh you just kinda suck dont ya and it's not just us thinking that.  Man were you a jerk, all those lifetime's and you never learned, hell you never wanted to.  You just did the same bad stuff every single time, damn the consequences right.  And yeah the universe was designed to reward that bad behavior at every single turn containing no inheritly postive lessons but cmon dude that's quite, rude.  What a fricken meanie, sheesh.  Like were not gonna go into all that horrifying stuff you did but boy howdie it was bad, I mean you were there so you know, probably.  Anyways, welcome to stinkmeaner territory bub, it really reeks alot here and you never get used to it.  If you take any lesson from all that transpired here in one final kernal of given knowledge, know this... This is your place now and you deserve it.
->DONE
==mid_ending==
Well you existed, I guess. Consider us whelmed.  Ambitions, mediocre, possetions, mediocre, relationships, mediocre, graphic's card, medicore.  I think you get the picture.  Im yawning from just trying to remember it, what a stagnant but sometime's mildy curious journey.  It's kinda crazy you just never got more interesting that whole time huh.  All those interesting people you saw and met, none of it rubbed off, I guess.  Damn, I almost feel bad for you, but it's not really bad per say here, not so good either, more meloncholy apathy-esk to be honest... At least you have a bit more range of what you can do and feel here, unfortunately it's all mid as fuck. But hey what kind of eternal place can you expect for being a true 7 out of 10 individual.  
->DONE

==hello_comrad==
Where you emerge you see a POWERFUL Red Sky, deep in its heart you make out a striking image of a yellow hammer and sickle with a star above.

You hear a loud, bellowing Bass coming from everywhere singing "UNITED FOREVER IN FRIENDSHIP and LABOR, OUR MIGHTY REPUBLICS WILL EVER ENDURE.."

All of sudden under the crimson sky you see burly bearded large men smiling as far as the eye can see all dressed in warm looking black uniform's.

Then a voice from the sky begins to speak.

*[☭] ->for_motharussia

==for_motharussia==

"AH YES WELCOME HOME COMRADE, WELCOME HOME.  WE HAVE BEEN EXPECTING YOU FOR SO VERY LONG. HERE UNDER THE IRON CURTAIN WE LEAVE NONE OF OUR BROTHERS AND SISTERS BEHIND.  ALL ARE THE SAME IN THE MOTHERLAND."

Suddenly a beam of light come's from under the iconic sybol in front of your feet.

"NOW THAT THE WAIT FOR OUR MISSING LAMB IS OVER COMRADE IT'S TIME FOR YOU TO RETURN WITH US TO THE MOTHERLAND WITH THAT STEADY WORKING HAND AND A HEART OF IRON.  YOU CAN HELP ENSURE THAT WE WIN THE FIGHT FOR TRUE EQUALITY FOR ALL.  WE MUST UNITE!!!"

The beam begin's to pull your soul toward's the hammer and sickle.

"OH YEAH, ONE MORE THING, THIS TIME TRY TO PAY ATTENSION TO WHERE YOUR GOING SO YOU DONT TRIP AND FALL, DUMBASS.."

You are born on the year 1878 in the outskirts of the modest city of Gori, Georgia to a humbe shoemaker....

Everything has led to this, destiny has open her gates, the moral stage is set for you to save the world.

->DONE

== your_surroundings ==
The room seems to be shaped in a wide circle, with very tall maroon walls, the ceiling has several black chandeilier's hanging from above holding a vareity of differently sized candle's with blue wax and purple flame.  Besides the center gate there seem's to be no other door's visable. 
* [Examine Gate] -> examine_door

== examine_door ==
The door's size cannot be understated but it is hard to tell just how large it is due to the expansive nature of the room.  On the door you can see interesting linework with symbol's you dont understand.  In the center of the door is a wide frame split into three sections.  {first_cycle == "Pillar of the Community": The left section has the picture of a man with an arm on his back and the other hand giving a thumbs up,|}{ first_cycle == "Chrismas Vacation": The left section has the picture of a VHS tape,| } { first_cycle == "Lemon Party": The left section has the picture of a lemon,|} {tripping_death: |The left section is blank,} {second_cycle == "Pillar of the Community": the center section has the picture of a man with an arm on his back and the other hand giving a thumbs up,|}{ second_cycle == "Chrismas Vacation": the center section has the picture of a VHS tape,| } { second_cycle == "Lemon Party": The center section has the picture of a lemon,|} {second_cycle != "": |the center section is blank,} {final_cycle == "Pillar of the Community": and the right section has the picture of a man with an arm on his back and the other hand giving a thumbs up.|}{ final_cycle == "Chrismas Vacation": and the right section has the picture of a VHS tape,| } { final_cycle == "Lemon Party": and the right section has the picture of a lemon,|} {final_cycle != "": |and the right section is blank.}  {final_cycle != "":  Underneath the center is the outline of a huge keyhole... as you stare it begins to glow with a bright intensity.  After bracing your eye's you begin to notice it reforming into a strange design, a design of something very close to you, the core of your being...  You realise it's a picture of your soul, deep down you understand what this means.  The door crack's open.|Underneath the center is the outline of a huge keyhole.  You have no idea what any of this means.}
* [?] -> journey_begins
+ {big_voice} [Next] -> judgement_hall

==accept_door==
The door's size cannot be understated but it is hard to tell just how large it is due to the expansive nature of the room.  On the door you can see interesting linework with symbol's you dont understand.  In the center of the door is a wide frame split into three sections.  {first_cycle == "Pillar of the Community": The left section has the picture of a man with an arm on his back and the other hand giving a thumbs up,|}{ first_cycle == "Chrismas Vacation": The left section has the picture of a VHS tape,| } { first_cycle == "Lemon Party": The left section has the picture of a lemon,|} {tripping_death: |The left section is blank,} {second_cycle == "Pillar of the Community": the center section has the picture of a man with an arm on his back and the other hand giving a thumbs up,|}{ second_cycle == "Chrismas Vacation": the center section has the picture of a VHS tape,| } { second_cycle == "Lemon Party": The center section has the picture of a lemon,|} {second_cycle != "": |the center section is blank,} {final_cycle == "Pillar of the Community": and the right section has the picture of a man with an arm on his back and the other hand giving a thumbs up.|}{ final_cycle == "Chrismas Vacation": and the right section has the picture of a VHS tape,| } { final_cycle == "Lemon Party": and the right section has the picture of a lemon,|} {final_cycle != "": |and the right section is blank.}  {final_cycle != "":  Underneath the center is the outline of a huge keyhole... as you stare it begins to glow with a bright intensity.  After bracing your eye's you begin to notice it reforming into a strange design, a design of something very close to you, the core of your being...  You realise it's a picture of your soul, deep down you understand what this means.  The door crack's open.|Underneath the center is the outline of a huge keyhole.  You have no idea what any of this means.}
* [Accept your Karma] -> journey_ends
==journey_ends==
...
+ {accept_door} [Enter the Door] -> karma_score

== tripping_death ==
There are three white cloud's before you.  Staring at the first cloud make's your taste bud's sour all the while giving you a comforting feeling of being somewhere clean.  Staring at the second cloud you feel an overwhelming sense of nostalgia and holiday cheer, for some reason you are reminded of hawaii as well.  Staring at the third cloud give's you a sense of failure as if you have broken some ancient custom that should never have been broken, you do get the feeling you might make alot of money though.  All you can tell is what you choose will affect you in a way deeper than you could ever know.

* [First Cloud] 
 ~ first_cycle = "Lemon Party"
 ~ goodness = goodness + 1
 -> guide_rufiki
 
* [Second Cloud] 
~ first_cycle = "Chrismas Vacation"
   ~ midness = midness + 1
   -> guide_sleddy
    
* [Third Cloud] 
~ first_cycle = "Pillar of the Community"
~ badness = badness + 1
-> guide_mother

==another_death1==
* [Left Cloud] 
~ second_cycle = "Chrismas Vacation"
   -> guide_sleddy
    
* [Right Cloud] 
~ second_cycle = "Pillar of the Community"
-> guide_mother

==another_death2==
* [Left Cloud] 
 ~ second_cycle = "Lemon Party"
 -> guide_rufiki
* [Right Cloud] 
~ second_cycle = "Pillar of the Community"
-> guide_mother

==another_death3==
* [Left Cloud] 
 ~ second_cycle = "Lemon Party"
 -> guide_rufiki
 
* [Right Cloud] 
~ second_cycle = "Chrismas Vacation"
   -> guide_sleddy
   
==final_death3==
* [Final Cloud] 
 ~ final_cycle = "Lemon Party"
 ~ goodness = goodness + 1
 -> guide_rufiki

==final_death2==
* [Final Cloud] 
~ final_cycle = "Chrismas Vacation"
   ~ midness = midness + 1
   -> guide_sleddy

==final_death1==
* [Final Cloud] 
~ final_cycle = "Pillar of the Community"
~ badness = badness + 1
-> guide_mother

== rufiki_guide ==
You see before you what looks to be an old grey baboon with crazy prism looking eyes using one arm to hold onto a vine that is appearing out of thin air.  The other hand is balled into a fist clearly concealing something.  
* ["Who are you and why am I here"] -> first_answer
* {first_answer} ["You seem familiar, is your name..."] -> no_relation
* {first_answer} [Answer a Riddle] -> good_riddle
* {first_answer} [Answer some fun Trivia] -> good_trivia

== good_riddle == 
"What did the doctor prescribe to the sick lemon who's hospital room had incredibly dirty floors?"
* [Pinesol] -> sorta_wrong1
* [Lemonaid] -> lemon_reborn

== lemon_reborn ==
Again the aboon begins meniacally laughing while swinging violently back and forth in place.

"My work here is done."  

He then reveal's whats in his closed hand, a beautiful pure yellow Lemon stand's proudly between his finger.
* [Reincarnate as the Lemon] -> positive_lemon
* [Enter Pinsol Heaven] -> pinesol_heaven

==positive_lemon==
"Change is good, for the body and the soul."

You have been reborn as this beautiful Lemon, you will surely be plucked and chosen for a delicious dish or perhaps you will await in the produce ilse of the grocery establish until you find a new home.  Perhaps you will have salt poured on you to be eaten as a snake or squeezed into a fresh batch of lemonaid, either way Im sure you will enjoy it.  After this hundreds of positive lifetime's will surely follow.
* [The Cycle Continues] ->pre_stir

== pinesol_heaven==
"Cant cut it out, it will grow right back."

"Alright then, come now, come."  The Baboon wave's you over to him.

He begin's to point at your chest, "Let us go to Pinsolupendi forever."

* [Go to Pinsolupendi] ->pinsol_upendi

==pinsol_upendi==

You and the Baboon begin to fly high at astronomical speed's.  The jungle expand's at a rapid rate, you see lemon's everywhere.  Even the cloud's are lemon shaped.  Gorgeous waterfalls made of the lemony fresh elixer are everywhere the eye can see.  There is no place in all of creation more clean and you feel at peace. 
-> DONE
== sorta_wrong1 ==

"Wait how would Pinesol help cure a sick lemon, it's literally made with the blood of innocent lemon's, such a dissapointing answer, it seem's you have not learned from the past and are not ready for sour ascension."
~ goodness = goodness - 2
* [One Last Chance] -> rufiki_guide

== good_trivia ==
"How did you get here?"
* ["I slipped on a floor recently treated with pinsol splitting my head open."] -> right_pinsol
* ["While turning a street corner a large TV playing the classic movie "The Lion King" plummeted from a window onto my head."] -> lemon_hell

== lemon_hell ==

The strange baboon squashes what was in it's hand and a liquid leaks from its clentch.
"WRONG!"

He then proceed's to yank down on the unnatural magical hanging vine to reveal a trapdoor underneath your feet.
* [Kuzimi] -> worst_lemon

== worst_lemon ==
You plummet into what look's to be some sort of large container falling onto what seem's to be rotten lemon's.  You can only hear the awful static of buzzing all around of inscects feasting on the rot.  The only light that pierces through is small oval shaped hole's in the side of the container.  However they soon begin to dissapear as a distinct liquid with a lemony fresh odar pour's through them filling the container to the brim.  This is your new permanent home.
->DONE

== right_pinsol ==
"Oh, yes, the past can hurt. But the way I see it, you can either run from it or learn to smell from it.  Always smell for lemonfresh."  "There is still for your escape from the cycle yet.  Now go return and use what you have learned." 

"As for myself it's time for a yoga break."
* [Return back to your old Life] -> pinesol_return

== pinesol_return ==
You wake up in a hospital bed, on the surface you believe it was all a dream but deep down you know the lemony truth.  From this point on you always made sure to scout out lemonfresh with your sniffer when entering any room.  But life goes on and even though one life changing mistake is corrected another event is just around the corner.
* [Ooups] -> pre_stir

== no_relation ==
"No, no, no, no.  My name is RO-fiki, very legally distinct.  I've never even been to Africa before my chosimba."
~ goodness = goodness + 1
+ [Consider your next steps] -> rufiki_guide


== first_answer == 
"Who are you, that is the real question."

"Maybe YOU should be asking why to yourself.  The ANSWER live's in you."

The Baboon begins meniacally laughing at his response while swinging violently back and forth in place.

"It is time, there are 2 path's, make your choice. Don't dawdle hurry up."
+ [Consider your next steps] -> rufiki_guide

== guide_rufiki ==
You enter the first cloud and emerge somewhere new.  It' seems you have been transported to an opening in a lush jungle with what look like palm tree's hanging over.  It's somewhat humid but to your surprise the jungle floor is very clean, there are no annoying bug's whatsoever and it smell's quite.. fresh.  All of a sudden you hear a voice speaking some mumbo jumbo. 

"ASANTE SANA SQUASH LEMONA.."
*[Turn Around] -> rufiki_guide
== guide_sleddy ==
You enter the second cloud and emerge somewhere new.  It's a snowy hill leading to a forest open trail with a tiny shack nearby, it looked perfect for sleding, in the distance you can see a road with a Walmart across it, this is the not a place you thought you would end up in.  All of a sudden you notice a song being played from all around loudly like its coming from a large speaker.  It's a christmas song.

IT'S THAT TIME, CHRISTMAS TIME IS HERE, 
EVERYBODY KNOWS THERE'S NOT A BETTER TIME OF YEAR,
HEAR THAT SLEIGH, SANTA'S ON HIS WAY...

Then all of the sudden the music muffle's down to a purr and a loud cheery voice can be heard behind you singing.. "HIP HIP HOORAY FOR CHRISTMAS VACATION!!!"
*[Turn Around] -> sleddy_guide






== sleddy_guide ==
  You see before something youd never thought youd see, a large talking sled with animated eyes and a mouth somehow standing before you upright with no arms or legs {second_answer: |singing a song with christmas spirit}.
* ["What in the world.."] -> second_answer
* {second_answer} ["I've never seen National Lampoon's Christmas Vacation.."] -> intense_responce
* {second_answer} [Answer a Riddle] -> mid_riddle
* {second_answer} [Answer some fun Trivia] -> mid_trivia

==mid_trivia==
The two of you seemingly warp to a branching path in the middle of the forest you witnessed from the hill.  There is a red hue here that keep's you uneasy.
"How did you get here?"
* ["Going to class I was walking down a ramp and slipped on a patch of ice, my head bounced of the concrete like a basketball."] -> right_ice 
* ["My cat got fried from chewing on my Christmas Tree Light's cord, long story short I was nearby so my hair caught on fire, in a panic I ran to the kitchen and accidentally knocked my head hard against a doorway that was a bit too short."] -> sled_judgement
==right_ice==
"Dang that's a bit of bad luck, in Christmas Vacation a little sliding around never hurt anybody, pretty unlucky."

"You know what, I cant just stand here denying you and your family the joy of watching Christmas Vacation together, it would be like when Clark Griswold's boss didnt give out bonuses that year, I'd just be downright heartless."

The sled does a little spin to create a tiny tornado that head's your way that causes you to fall and slip on your bum (this time) heading towards the left path.

The sled begins to yell as you slide, "Mele Kalikimaka partner, make sure to keep your eye's open for ice patches, especially during the winter month's.." The voice fade's out.
* [Return back to your old Life] -> ice_return

==ice_return==
You wake up on a bench inside a university building with a crowd of people around.  Everyone was worried about you and it makes you feel less alone.  You remember what Sledy said and take it to heart, you immediately go out and buy slick resistant footware for the winter month's.  And heck all that yappin about National Lampoon's Christmas Vacation get's you to buy it on blu ray since you live in the year 2009, what do you know it's an instant classic and now you watch it year after year with your folks building up a nostalgic treasure.  But life is long and fancy footware for just winter wont protect you from everything.
* [****] -> pre_stir
==sled_judgement==
"You gotta kidding me, you just ripped that story off from Christmas Vacation."

"HOW DARE YOU!"  "BEGONE DEFILER OF THE RIGHTIOUS NOSTALGIC SPIRIT, BLASPHEME NEVERMORE."

A huge gust of icey freezing cold wind below's behind you that blow's you toward the right side of the hill. 

* [Tartarus] -> sled_hell
==sled_hell==
You begin bign to spin rapidly on the icy path, you spin, spin and spin.  Your skin begin's to chaffe open as the cold icey wind dry's it out.  It's freezing and you see no end path in sight.  You are completely disoriented with no end in sight, eventually even up and down doesnt make any sense anymore you have such powerful vertigo and nausea.  Somehow that isnt even the worst part, the whole time you exist in this eternity just as you had entered this realm you hear the loud song singing "IT'S THAT TIME, CHRISTMAS TIME IS HERE, EVERYBODY KNOWS THERE'S NOT A, BETTER TIME OF YEAR, HEAR THAT SLEIGH, SANTA'S ON HIS WAY, HIP HIP HOORAY FOR CHRISTMAS VACATION."  
->DONE
== mid_riddle==
"What is the greatest Chrismas movie on planet earth and a place the coolest sled ever gets to slide."
*[National Lampoon's Christmas Vacation] -> vhs_reborn
*[A patch of Ice] -> kinda_wrong

==vhs_reborn==
"Halleluya, holy ****" screamed the sled at the top of his lung's.
"You did it partner, through the lesson's of faith and family you surely pulled through."

The sled does a back flip.

"This call's for a change of scenery."

Instantly both you and the sled seemingly warp deep inside the forest you withnessed from the hill before.  There is an odd blue hue to the area that bring's you comfort.  There lay two pathway's on the hill before you.

The sled stare's patiently at you as if wanting you to make a decision.
*[Point to the left toward Nostalgic Growth] -> vhs_ascension 
*[Point to the right for Endless Nostalgia] -> endless_vacation
== vhs_ascension ==
"I see you have chosen to ascend to a Nostalgic Buhdda.  You will be a beacon for so many beautiful memories for year's to come.  I know you'll transcend the cycle yet."

The sled flip's down in front you, "Hop on partner."

You jump on the sled and an instant you hear a loud WHOOOOOSH as flame's lay in the sled's wake and off you go.  As the sled goes faster you begin to reform into a the shape of a VHS tape, but not just any VHS tape.  You become a VHS tape copy of Nationl Lampoon's Chrismas Vacation.  You are back in the early 90's placed on a cozy shelf of a loving home where you will be watched year after year and for the next hour and thrity seven minute's will fill a family's hearts full of joy and of course later nostalgia.  Im sure after your VHS tape stops working you will be reborn into a variety of live's.
*[The Cycle Continues] -> pre_stir
==endless_vacation==
"Really pal, that's just downright awesome, your coming home with me brother."

The sled slide's himself under you causing you to land on your stomach safe and sound on top of him.  You hear a powerful VROOOM and flame's shoot out from the side's.
The speed is insane but you don't feel afraid, in fact you feel quite nostalgic.  Finally at the apex of the path is an uppward tilted slop.

ZOOM!!!

You and Sledy are flying now, up, up and away.  You begin to see everything you ever felt nostalgic for in your life pass you by and it feel's so good but you don't stop there.  No, not yet, there's a whole new more powerful level of nostalgic spritual energy to reach, that of sledy's demeanor.  The christmas VHS realm where filled with a variety of huge CRT TV's all playing the greatest christmas film ever witnessed, forever and ever.
-> DONE


==kinda_wrong==
"What are you on brother, what does an ice patch have to do with faith and family value's, what are you talking about."
"I mean there is patches of ice in the movie but still cmon man the answer was Christmas Vacation, it was an easy layup man, kind of a buzzkill."  
The sled give's a dissapointing look.
~ midness = midness - 2
*[One Last Chance] -> sleddy_guide

==intense_responce==
The sled looks caught off guard.

"What the ****, how in tarnations have you not seen National Lampoon's Christmas Vacation, what are you some kind of savage beast."

Quickly the sled recorrects his demeanor.

"Well shoot, that's a real shame, real shame there partner.  No wonder im here to help you, you aint got nostalgic spirt to bask in."

The sled says with a sly grin, "But dont you worry you'll be a seeing plenty of old Clark Griswold's crazy antic's soon enough.
~ midness = midness + 1
* [Make a Choice] ->sleddy_guide
== second_answer==
Before you could finish speaking the sled interupts with an enthusiastic tone.

"Well hey there partner, Im Sledy the sled, you know the sled from National Lampoon's Christmas Vacation.  I heard you might be in a little bit of trouble and came to see ya through."

The sled paused as it took note of your confused demeanor.

"Oh right youz probly wondering what I wassa yoddlin there.  I was just being a little nostalgic is all, singing the opening from the legendary National Lampoon's Christmas Vacation, you know the incredible move im from.  Im sure you've heard it somewhere."

"Anywho, like I said Im here to get ya going again, so here' a couple of options!"
* [Make a choice] -> sleddy_guide

== guide_mother ==
You enter the third cloud and emerge somewhere familiar.  It's a living room, your living room or well it used to be.  It was your parent's old place you lived at the first eight year's of your life but it had to be demolished because the government had to build some shopping malls for the community or something like that, so you moved.  All of a sudden you can hear what sounds to be an oven door open behind you and the intense aroma of your favorite kind of cookie's hit's the air.

You hear a slam of the stove closing followed by a hollar, "OWWWWW, Good Lord!!"  That voice, you know that voice, could it be..?

*[Turn Around] -> mother_guide

== mother_guide ==
  It appears to be your, Mother? She look's like she was when you were small, one would think that is strange enough but she appear's to be hunkerd over in pain with a hunchback.  It' look's terribly painful.
* ["Mom, how are you here, what's going on"] -> third_answer
* {third_answer} ["Mom what the hell happened to your back?"] -> moms_back
* {third_answer} [Answer a Riddle] -> bad_riddle
* {third_answer} [Answer some fun Trivia] -> bad_trivia

==bad_trivia==
You see your mother take a deep anxiety filled breath

"How did you get here?"
* ["I was busy buying you a mother's day present and planning to come by to see you an all that, but, Swear To God, as I was reaching down for one of them funny card's I always get you with the silly sounds somebody bumped into me and the whole carrying case of them fell on top of my head, can you believe it."] -> hell_awaits
* ["I was walking down the street late at night in a bad part of town, tripped and stepped on a crack in the sidewalk breaking your back and my head.  I'm Sorry Mama."] -> your_forgiven

==hell_awaits==
An ominous organ begins to play.

Your mother begins to tremble and tears pour from her eye's.

"Oh lord please no, please, dont take em, please dont take em, take me, TAKE ME-AAAAUUUUUUGGGGGGGHHHHHHHHHHHHHOUUUUUUUUUUUHGHHHHHHHHH."  This was the big one.

You reach out towards your mama out of desperation to help and the fear you now deeply felt.  Instead of reaching her the floor fall's out from beneath you.
* [6 H.E. DOUBLE 6 HOCKEY STICKZ 6] -> youdid_this

==youdid_this==
Well you were warned.  From the time you were a little kid till you were grown your mama warned ya to take care.  And take care you did not. There's no need to going into to much detail as you know how it goes down there.  It's all just like in the various books, movie's, tv shows and comic's youv'e already seen, especially the movie's.  Ya know like the Keanu Reeve's film Constantine or the other Keanu Reeve's film The Devil's Advocate.  Yeah it's Preeeeetty Bad...
->DONE


==your_forgiven==
"It's ok, it's ok, your forgiven sweetheart, I know ya didnt mean it."

She hit's her hump a couple time's.

"It may hurt like a beayotch but you told the truth and that's all that matter's."

A white light begin's to glow above you.

"And it look's like it doesnt just matter to me, oh thank you lord."

Your being sucked into the light.

* [Return back to your old life] -> another_chance

==another_chance==
You wake up on the edge of a sidewalk and are just a little dizzy but mostly fine, well except for the fact your phone, wallet and shoe's were stolen while you were out but hey at least your alive.  That night you call your mama and tell her all about what happened, she tries to comfort you even if she think's your crazy, she's just glad your alive, you apologize several times for breaking her back.  When you visit her she's still the same older mamma that you left and not the younger one you spoke to there.  Was it all a dream? Maybe, either way you make sure to never step on a crack again, ever.  But let's be honest paying attension to every little crack does make you an easy target for something else to happen, just sayin..
* [Huh?] -> pre_stir
==bad_riddle==
"What doctor's favorite way to swim is the back stroke, they also lose buisiness when thing's are properly cemented. 
* [A Chiropracter] -> thatsmy_boy
* [Sidewalks] -> what_why

==thatsmy_boy==
Your mother's hunchback is miraculously healed.  She looks just like you remembered her as a small kid.
"Oh honey, thank you sweet baby jesus, thank you."
"I knew you could do it honey im so proud."  
A wave of relief flowed over her agony ridden face.
"Your all right now honey, it's gonna be allll right."

She thinks to herself for a moment after collecting herself.

"Child there is one more descision I as your mama can be apart of."
"I let you go long ago, so it's up to you if you wish to move forward or stay here with me."
* [Stay with your Mom] -> home_forever
* [Move Forward] -> chiropracter_reborn

==home_forever==
A look of relief and a pure joy cause your mother's face to tremble.  You can tell this is the best news she could ever recieve in any lifetime, words cannot do it justice.

After a moment she speaks.

"Okay honey just take my hand real quick."

You take her hand and all of a sudden your a child again, your old house you used to love spring's to life, it's exactly as you remember it.  All your toy's, your favorite cartoon's, your happy mom and heck it's even your favorite temperature.  Oh but you cant forget about those cookie's, the endless amount of your favorite cookies that you could just eat forever nonstop and in fact I think that just might be what you do.
-> DONE

== chiropracter_reborn ==
Your mother's eye's well up with tears. "I know honey, I know, it's time to part our way's"
"You become the bestest most kindest chiropracter the world has ever seen."

You begin to be pulled away from the house now by a force as your spirit begins to be carried. 

You can hear your mom yell some final encouraging words, "Now you go and make me proud, fix more back's than anyone has ever bothered to fix, and make yourself a ton of money, haha."  She end's with the sound of laughter.

Your mind and soul are reborn into the body of a young man who's soul and mind were sucked right on out from messing with witchcraft.  You use this new opportunity to get a license to chiropracter, make lot's of money and hopefully help a few people along the way, maybe.  Even though you have a new set of parent's you'll never forget what your old mama did for you.  After year's of messing with people's backs and amounting a massive amount of wealth you fade away in your country mansion.  Im sure you reborn into many lives that may or may not take advantage of other's for profit, from a certain point of view...
* [Continue the Cycle] -> pre_stir
==what_why==
"AAHHH OOWWWW"
"Why in the world are you babblin about a sidewalk child, a sidewalk isnt gonna fix my back child, they are the PROBLEM not the SOLUTION."  "I thought the cement comment would throw you an easy one not distract you, I don't know what Im going to do with you."  She shake's her head in utter dissapointment.
~ badness = badness - 2
* [One more shot] -> mother_guide
==moms_back==
"What the hell happened to my back, WHAT THE HELL HAPPENED TO MY BACK?"  

She pauses to manage the pain.

"YOU DID, I told you to watch out where you were going, I always told you to watch out for crack's and now look what ya did to your poor mother.  I KNOW I raised you better than that."
 ~ badness = badness + 1
* [Consider things carefully] -> mother_guide

==third_answer==
"Now calm down with your panick-." "OOOOOWWWWWW, WHY DID YOU DO THIS TO ME CHILD, WHY OH WHY." your mother wail's.
"All you had to do was pay attension, why didnt you pay attension of your dear old mother."
"As for how and why Im here my sweet southern child I have no idea, I just know it has to do with my aching posterior, my lord I need some vicoden.  The only thing's here are cookie dough and some baking sheets, so I figured with you coming by I might as well make some."  She extends out the plate, "Here child, eeuggh, ittsss for you." she barely completes the sentence.

Although concerned you gladly take several cookie's scarfing them down quickly.

She smile's through the pain at your geniune enjoyment, however the smile quickly fades and it's not due to the back.

"My child, I think.. I think im here to help set you straight, there are some important decisions you are going to have to make that ya mamma cant make for ya, ya hear."  
She grab's her chest, "Im afraid these may have heavy consequences, I only just hope... EEEEEEEUGGGGGGH... I only hope I raised you right."
* [Consider things carefully] -> mother_guide


== journey_begins ==

OOUUUUEEEEYAAAAA, OOUUUUEEEEYEEEEEEAYAEEEEEEEEEEEEEE 

SHIMILACKAHAMA, SHIMILACKAHAMA.

OOUUUUEEEEYAAAAA, OOUUUUEEEEYEEEEEEAYAEEEEEEEEEEEEEE

Booming chant's bellow across the open air leaving you freightened and confused.

Out of nowhere three seperate white cloud's appear before you on the ground..

* [!!!] -> big_voice

== big_voice ==

"CHOOOOSE YOOUUUUUUR KARMAAAAAAAAAAAAAA!!!" screams a lound echoing gruff voice from the ceiling.  It remind's you of an intense game show announcer.

* [Next] -> judgement_hall

 == function gong_sound ==
    ~ gong = gong + 1
    
    {
    - gong > 3:
    ~ gong = 0
    }
    
    {
    - gong == 0:
    ~ return "GONG"
    
    - gong == 1:
    ~ return "GONG GONG"
    
    - gong == 2:
    ~ return "GONG GONG GONG"
    
    - gong == 3:
    ~ return "𓍊𓋼𓍊𓋼𓍊𓃦╶⃝⃤𓃥𓍊𓋼𓍊𓋼𓍊"
    
    }
    
    ~ return gong






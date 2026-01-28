VAR friend_name = ""
VAR friend_prns = ""
VAR candies = 0

VAR time = 0


-> name_friend
== name_friend ==
You show up to your best friend's house, ready for your annual Halloween sleepover. Your best friend named... (Select the letters in order to create your friend’s name, then select "Done" at the bottom when finished.)
* [A]
	~ friend_name += "A"
	-> name_friend1
* [B]
	~ friend_name += "B"
	-> name_friend1
* [C]
	~ friend_name += "C"
	-> name_friend1
* [D]
	~ friend_name += "D"
	-> name_friend1
* [E]
	~ friend_name += "E"
	-> name_friend1
* [F]
	~ friend_name += "F"
	-> name_friend1
* [G]
	~ friend_name += "G"
	-> name_friend1
* [H]
	~ friend_name += "H"
	-> name_friend1
* [I]
	~ friend_name += "I"
	-> name_friend1
* [J]
	~ friend_name += "J"
	-> name_friend1
* [K]
	~ friend_name += "K"
	-> name_friend1
* [L]
	~ friend_name += "L"
	-> name_friend1
* [M]
	~ friend_name += "M"
	-> name_friend1
* [N]
	~ friend_name += "N"
	-> name_friend1
* [O]
	~ friend_name += "O"
	-> name_friend1
* [P]
	~ friend_name += "P"
	-> name_friend1
* [Q]
	~ friend_name += "Q"
	-> name_friend1
* [R]
	~ friend_name += "R"
	-> name_friend1
* [S]
	~ friend_name += "S"
	-> name_friend1
* [T]
	~ friend_name += "T"
	-> name_friend1
* [U]
	~ friend_name += "U"
	-> name_friend1
* [V]
	~ friend_name += "V"
	-> name_friend1
* [W]
	~ friend_name += "W"
	-> name_friend1
* [X]
	~ friend_name += "X"
	-> name_friend1
* [Y]
	~ friend_name += "Y"
	-> name_friend1
* [Z]
	~ friend_name += "Z"
	-> name_friend1

== name_friend1 ==
{friend_name}
+ [a]
	~ friend_name += "a"
	-> name_friend1
+ [b]
	~ friend_name += "b"
	-> name_friend1
+ [c]
	~ friend_name += "c"
	-> name_friend1
+ [d]
	~ friend_name += "d"
	-> name_friend1
+ [e]
	~ friend_name += "e"
	-> name_friend1
+ [f]
	~ friend_name += "f"
	-> name_friend1
+ [g]
	~ friend_name += "g"
	-> name_friend1
+ [h]
	~ friend_name += "h"
	-> name_friend1
+ [i]
	~ friend_name += "i"
	-> name_friend1
+ [j]
	~ friend_name += "j"
	-> name_friend1
+ [k]
	~ friend_name += "k"
	-> name_friend1
+ [l]
	~ friend_name += "l"
	-> name_friend1
+ [m]
	~ friend_name += "m"
	-> name_friend1
+ [n]
	~ friend_name += "n"
	-> name_friend1
+ [o]
	~ friend_name += "o"
	-> name_friend1
+ [p]
	~ friend_name += "p"
	-> name_friend1
+ [q]
	~ friend_name += "q"
	-> name_friend1
+ [r]
	~ friend_name += "r"
	-> name_friend1
+ [s]
	~ friend_name += "s"
	-> name_friend1
+ [t]
	~ friend_name += "t"
	-> name_friend1
+ [u]
	~ friend_name += "u"
	-> name_friend1
+ [v]
	~ friend_name += "v"
	-> name_friend1
+ [w]
	~ friend_name += "w"
	-> name_friend1
+ [x]
	~ friend_name += "x"
	-> name_friend1
+ [y]
	~ friend_name += "y"
	-> name_friend1
+ [z]
	~ friend_name += "z"
	-> name_friend1
* [Done]
	-> prn_friend

== prn_friend ==
{friend_name}. Sounds about right. And what were their pronouns again?
* [she/her]
	~ friend_prns = "she/her"
	-> friend_house
* [he/him]
	~ friend_prns = "he/him"
	-> friend_house
* [they/them]
	~ friend_prns = "they/them"
	-> friend_intro


== friend_intro ==
While you’re busy remembering {friend_name}’s name and pronouns, {friend_prns == "she/her":she opens}{friend_prns == "he/him":he opens}{friend_prns == "they/them":they open} the door to  house, which you are currently standing in front of.
“You’re early!! I’m still setting up, but in the meantime, why don’t you do some trick-or-treating?”
* [“Can’t I just wait inside with you?”]
You ask if you can just chill inside instead.
“Um,, no.... And not because it’s still a huge mess in here or anything” -> friend_intro1
== friend_intro1 ==
* [You groan.]
You groan.
“I mean I guess you can... buuutt,, I’ll tell you what. If you can come back with at least five candies I’ll give you,, twenty dollars...? And don’t cheat and pick up candy off of the floor, because you’re gonna have to eat your five before making me part with my precious money.”
You were still annoyed, but twenty dollars is twenty dollars.
“..aaand actually I’m only going to give you 10 minutes because I really don’t wanna lose twenty dollars today.. Trick or treating is almost over anyways, there’s only two houses left with their lights on.”
You’re going to have to hope that the house you go to has a very generous owner if you want that twenty dollars. 
“Personally, I’d go to that house over on the right. That other house wayyy over on the left has some weird goth chick that most kids won’t go near. The only kid to ever go missing around here was last spotted at her house...”
You look at the house on the left, it has tons of dark and gloomy halloween decorations compared to all the other houses in the neighborhood.
“...but you’ll have to hurry, I don’t think that that owner stays up as late as the other house.”
You take a second to consider your options. You’ve only got ten minutes, and each of your actions will take five. You could go to both houses, starting with the right, but if you only get two candies from each, then you’ll be out of time. You reason that you could go looking around for any spilled candy, but eating it will be a gamble. You see some trick-or-treaters going home, and realize that if you hurry, you could ask for some candy before they go home for the night.
->friend_house

== friend_house ==
It is {print_time()}. {time == 1:With only {candies} candies and fewer options, you consider sneaking inside to steal some of {friend_name}’s candy, but if {friend_prns == "she/her":she catches}{friend_prns == "he/him":he catches}{friend_prns == "they/them":they catch} you, you can kiss that twenty dollars goodbye.} What do you do?
* {time == 0}  [Go right] -> right_house
* [Go left] -> left_house
* [Look for candy on the ground] -> floor_candy
* {time == 0}  [Ask trick-or-treaters for candy] -> trick_or_treaters
* {time == 1} [Attempt to steal {friend_name}’s candy] -> candy_theft

== function print_time ==
    {    
        - time == 0:
            ~ return "8:00"
        
        - time == 1:
            ~ return "8:05"
        
        - time ==2:
            ~ return "8:10"
    }

== function advance_time ==

    ~ time = time + 1
    
== time_action(x) ==
    {
        - x > 1:
            -> inside
        - x <= 1:
            -> friend_house
    }
    
== time_passes ==
{advance_time()} -> time_action(time)
    

== right_house ==
You decide to take your friend’s advice and go to the house on the right.
* [Knock on door]
You hear a voice from inside.
“Another one? I thought they were done.. oh dang I left my porch light on.”
This does not sound good for you. -> right_house1
== right_house1 ==
* [*door opens*]
“Well hi! I’ve had lots of trick-or-treaters tonight, but I still have a few pieces here..”
They drop three pieces into your sad basket.
~ candies +=3
“Happy Halloween!”
They promptly shut the door and turn off their porch light.
-> time_passes

== left_house ==
Since less kids are going to this house, you’ve got a better chance of getting more candy, and thus a better shot at those twenty dollars.
* [Knock on door]
The “goth chick” {friend_name} warned you about eagerly opens the door, dressed in a cool looking witch costume. She seems excited just to have someone at her door, and holds out a bowl full of candy. -> left_house1
== left_house1 ==
“Happy halloween!! I have tons of candy left, so grab as much as you want! I must’ve only had about six or seven trick-or-treaters this year :(”
* [SIX SEVENNNN] -> six_seven
* [ignore that option and be grateful for your candy]
You grab fistfuls of candy, quickly filling your bucket while thanking her profusely. {time == 0:Even though you have 5 minutes left, you have more than enough candy to win {friend_name}’s challenge, and decide to just head back to {friend_prns == "she/her":her}{friend_prns == "he/him":his}{friend_prns == "they/them":their} house. The cool homeowner }{time == 1:She} waves as you happily strut back to the house.
~ candies += 56478356
~ time += 1
-> time_passes

== six_seven ==
You can’t help it. You hear the words come out of her mouth and burst out saying the thing.
In an instant, you feel warm liquid running down your neck. You see that she has somehow plunged a dagger into your neck without you even realizing. She yanks it back and you drop to your knees.
She leans over you.
“Sorry, I just really hate that meme, dude.”
Why did you have to make that stupid joke....
-> END

== floor_candy ==
You search the floor for five minutes, but are only able to find two trampled pieces of candy. You add them to your basket. Man, eating this is not gonna be fun…
~ candies += 2
-> time_passes

== trick_or_treaters ==
You approach the trick-or-treaters and ask for just five candies. They’re a bit weirded out, but seem willing to share their candy. That is, until their parents show up and usher them away to teach them about stranger danger. What a great waste of five minutes.
-> time_passes
== candy_theft ==
Although it’s risky, if you can successfully pull this off then you’ll be guaranteed that twenty dollars. You come in through the back door, trying to locate {friend_name}’s candy bucket. It’s nowhere to be found, but neither {friend_prns == "she/her":is she}{friend_prns == "he/him":is he}{friend_prns == "they/them":are they}. You’re going to have to enter another room, so you pray that {friend_name} isn’t in the...
* [Living Room] -> living_room
* [Kitchen] -> kitchen

== living_room ==
You peek around the corner to see...
...{friend_name} sitting on the couch.
“What are you doing in here? You still have five more minutes, you know. Did you give up?”
Defeated, you sit down in a huff while {friend_prns == "she/her":she chuckles}{friend_prns == "he/him":he chuckles}{friend_prns == "they/them":they chuckle}. You mumble something about how you didn’t want that stupid money anyways.
-> END

== kitchen ==
You peek around the corner to see...
...a basket of candy waiting for you on the kitchen counter! Well, obviously it wasn’t put there for you, but you stroll over to it like it was. You grab {(5 - candies)} candies so that you now have exactly five, and exit through the back door so that you can come in through the front door to fool {friend_name}.
~ candies = 5
-> time_passes

== inside ==
“Alright, how much candy did you manage to get?” {friend_name} asks, as soon as you get inside.
You look down at your bucket.
{candies < 5:You have only {candies} pieces of candy. Not enough for twenty dollars, but at least you didn’t get murdered, you guess.}
{candies == 5 && floor_candy:You have barely five pieces of candy, and quickly eat it all for that sweet cash. But eating trampled candy you found on the ground outside is not the smartest thing to do. You get some sort of food poisoning, and spend the rest of the sleepover in and out of the bathroom. But hey, twenty dollars is twenty dollars, right?}
{candies == 5 && candy_theft:You have barely five pieces of candy, and quickly eat it all for that sweet cash. {friend_name} doesn’t notice that {friend_prns == "she/her":her}{friend_prns == "he/him":his}{friend_prns == "they/them":their} candy is missing until much later, but by then you’ve already tucked away your cash prize and refuse to give it back, much to {friend_prns == "she/her":her}{friend_prns == "he/him":his}{friend_prns == "they/them":their} annoyance.}
{candies > 5:You grin as you hold up your completely full basket of candy, much to {friend_prns == "she/her":her}{friend_prns == "he/him":his}{friend_prns == "they/them":their} surprise. You explain how the house on the left ended up having a really friendly owner who was eager to give you tons of candy. {friend_name} is skeptical of the candy, but you spend the night happily enjoying your bucket of candy and your twenty dollars.}
->END

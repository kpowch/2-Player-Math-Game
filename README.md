# TwO-O-Player Math game
## Description
Create a 2-Player math game where players take turns to answer simple math addition problems. A new math question is generated for each turn by picking two numbers between 1 and 20. The player whose turn it is is prompted the question and must answer correctly or lose a life.

## Learning Outcomes

<li> Can create a multi-class Project using Ruby and OOP
<li> Can demonstrate encapsulation with Classical OOP
<li> Can demonstrate separation of concern between I/O and logic using Classes
<li> Can demonstrate message passing between objects in Ruby



## Goal
Plan out the strategy in building an OOP-based command-line application with Ruby in order to practice and demonstrate OOP fundamentals.

## Details
Both players start with 3 lives. They lose a life if they mis-answer a question. If a player gets a question wrong, the game should output the new scores for both players, so players know where they stand.

The game doesn’t end until one of the players loses all their lives. At this point, the game should announce who won and what the other player’s score is.

### Example prompt
```
----- NEW TURN -----
Player 1: What does 5 plus 3 equal?
> 9
Player 1: Seriously?? No!
P1: 2/3 vs P2: 3/3
----- NEW TURN -----
Player 2: What does 2 plus 6 equal?
> 7
Player ZOMG No NO NO!
P1: 2/3 vs P2: 2/3
----- NEW TURN -----
... some time later ...
Player 1 wins with a score of 1/3
----- GAME OVER -----
Goodbye!
```

## Tasks
### Extract Nouns for Classes (and their associated rolls)
Math game:
<ul>
<li> Evaluates if command-line answer is correct??
<li> Will contain the game loop (i.e. where each instance of the loop is the other player's turn)
</ul>

Player:
<ul>
<li> Initialize a player
<li> Stores state: how many lives the player has
</ul>

Turn:
<ul>
<li> Stores state: who is `current_player`
<li> Determines who goes next
</ul>

Question:
<ul>
<li> Generates new question by picking 2 numbers between 1 & 20
<li> Answer will have to be public
</ul>

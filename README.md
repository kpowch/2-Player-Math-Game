# Description
Create a 2-Player math game where players take turns to answer simple math addition problems. A new math question is generated for each turn by picking two numbers between 1 and 20. The player whose turn it is is prompted the question and must answer correctly or lose a life.

# Learning Outcomes
* Can create a multi-class Project using Ruby and OOP
* Can demonstrate encapsulation with Classical OOP
* Can demonstrate separation of concern between I/O and logic using Classes
* Can demonstrate message passing between objects in Ruby

# Goal
Plan out the strategy to build an OOP-based command-line application with Ruby in order to practice and demonstrate OOP fundamentals, and then implement it.

# Details
Both players start with 3 lives. They lose a life if they answer a question wrong. The game should output the new scores for both players, so players know where they stand.

The game doesn’t end until one of the players loses all their lives. At this point, the game should announce who won and what the other player’s score is. It will also prompt if the players want to play again.

## Example prompt
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

# Tasks
## Extract Nouns for Classes (and their associated rolls)
MathGame:
* Stores constants for the other classes

Game:
* Contains the game loop and associated methods
* i.e. starts game, makes players, keeps track of current player, gets question and evaluates answers then updates player appropriately, keeps track of when to end the game

GameMaster:
* Prints text to the CLI or prompts the user for input

Player:
* Initializes a player 
* Stores the player's state (i.e. number of lives, and number of correct answers)

Question: 
* Makes a question 
* Stores question answer for evaluation

Main (not a class but a file): 
* File that gets called to run the game

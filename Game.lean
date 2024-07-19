import Game.Levels.DemoWorld
import Game.Levels.LogicalStatements
import Game.Levels.TrueAndFalse
import Game.Levels.AndOr
import Game.Levels.LogicLaws
import Game.Levels.NotLogic
import Game.Levels.DeMorgansLaws
import Game.Levels.MoreTrueAndFalse
import Game.Levels.Bonus

-- Here's what we'll put on the title screen
Title "Dungeons and De Morgan's: The logic Game"
Introduction
"


## By Chris Birkbeck and Niki Kalaydzhieva

Go on a Mathemagical quest to learn some logic!

# What is this game?

This is a game to teach you some mathematical logic using Lean.

Have fun!

Leaderboard:

```md
|  Name   | Time    |
| --------|---------|
| Chris B | 168hrs  |
```

"

Info "

# Credits

Some levels have been shamelessly borrowed from Kevin Buzzard's and Mohammad Pedramfar's
Natural Numbers Game
as well  as Kevin Buzzard's Formalising mathematics
course at Imperial College London.

"

/-! Information to be displayed on the servers landing page. -/
Languages "English"
CaptionShort "Game Template"
CaptionLong "You should use this game as a template for your own game and add your own levels."
-- Prerequisites "" -- add this if your game depends on other games
-- CoverImage "images/cover.png"

/-! Build the game. Show's warnings if it found a problem with your game. -/
MakeGame

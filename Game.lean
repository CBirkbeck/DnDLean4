import Game.Levels.DemoWorld

-- Here's what we'll put on the title screen
Title "Dungeons and De Morgan's: The logic Game"
Introduction
"
# Dungeons and De Morgan's: The logic Game

## By Chris Birkbeck and Niki Kalaydzhieva

Go on a Mathemagical quest to learn some logic!

# What is this game?

This is a game to teach you some mathematical logic using Lean.

Have fun!




"

Info "
# Credits

Some levels have been shamelessly borrowed from Kevin Buzzard's and Mohammad Pedramfar's
<a href="https://www.ma.imperial.ac.uk/~buzzard/xena/natural_number_game/" target="blank">Natural Numbers Game</a>
as well  as Kevin Buzzard's <a href="https://www.ma.imperial.ac.uk/~buzzard/xena/formalising-mathematics-2022/" target="blank">Formalising mathematics</a>
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

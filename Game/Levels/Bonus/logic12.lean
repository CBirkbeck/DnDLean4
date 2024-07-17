import Game.Levels.Bonus.logic11

World "Bonus"
Level 5

Title "Bonus 5"

Introduction
"
If you're sad that the game is over, here is some bonus content to keep you going.


"




/--
Are we there yet?
-/
Statement (P Q : Prop) : (((P → Q) → Q) → Q) → (P → Q) := by
  intro h1 hP
  apply h1
  intro hPQ
  exact hPQ hP







/- Use these commands to add items to the game's inventory. -/


-- NewTheorem Nat.add_comm Nat.add_assoc
-- NewDefinition Nat Add Eq

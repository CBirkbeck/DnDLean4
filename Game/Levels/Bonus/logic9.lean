import Game.Levels.Bonus.logic8

World "Bonus"
Level 2

Title "Bonus 2"

Introduction
"
If you're sad that the game is over, here is some bonus content to keep you going.


"




/--
A nested chain ofimplications.
-/
Statement (P Q: Prop) : (P → Q) → ((P → Q) → P) → Q :=by
  intro hPQ hPQP
  apply hPQ
  apply hPQP
  exact hPQ




/- Use these commands to add items to the game's inventory. -/


-- NewTheorem Nat.add_comm Nat.add_assoc
-- NewDefinition Nat Add Eq

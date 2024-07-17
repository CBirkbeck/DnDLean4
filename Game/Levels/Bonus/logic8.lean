import Game.Metadata
import Game.Levels.MoreTrueAndFalse

World "Bonus"
Level 1

Title "Bonus 1"

Introduction
"
If you're sad that the game is over, here is some bonus content to keep you going.


"




/--
A long chain of implications.
-/
Statement (P Q R S T : Prop) : (P → R) → (S → Q) → (R → T) → (Q → R) → S → T := by
  intro hPR hSQ hRT hQR hS
  apply hRT
  apply hQR
  apply hSQ
  exact hS




/- Use these commands to add items to the game's inventory. -/


-- NewTheorem Nat.add_comm Nat.add_assoc
-- NewDefinition Nat Add Eq

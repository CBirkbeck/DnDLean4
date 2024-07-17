import Game.Levels.Bonus.logic10

World "Bonus"
Level 4

Title "Bonus 4"

Introduction
"
If you're sad that the game is over, here is some bonus content to keep you going.


"




/--
This is getting silly now!
-/
Statement (P Q R : Prop) : ((Q → P) → P) → (Q → R) → (R → P) → P := by
  intro h1 h2 h3
  apply h1
  intro hQ
  apply h3
  apply h2
  exact hQ






/- Use these commands to add items to the game's inventory. -/


-- NewTheorem Nat.add_comm Nat.add_assoc
-- NewDefinition Nat Add Eq

import Game.Levels.Bonus.logic9

World "Bonus"
Level 3

Title "Bonus 3"

Introduction
"
If you're sad that the game is over, here is some bonus content to keep you going.


"




/--
An even more nested implications
-/
Statement (P Q R : Prop) : ((P → Q) → R) → ((Q → R) → P) → ((R → P) → Q) → P := by
  intro h1 h2 h3
  apply h2
  intro hQ
  apply h1
  intro hP
  exact hQ





/- Use these commands to add items to the game's inventory. -/


-- NewTheorem Nat.add_comm Nat.add_assoc
-- NewDefinition Nat Add Eq

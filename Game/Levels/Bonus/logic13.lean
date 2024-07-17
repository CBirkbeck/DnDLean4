import Game.Levels.Bonus.logic12

World "Bonus"
Level 6

Title "Bonus Boss"

Introduction
"
If you're sad that the game is over, here is some bonus content to keep you going.


"




/--
Time for another boss fight!
-/
Statement (P Q R : Prop) :
  (((P → Q → Q) → ((P → Q) → Q)) → R) →
  ((((P → P) → Q) → (P → P → Q)) → R) →
  (((P → P → Q) → ((P → P) → Q)) → R) → R :=by
  intro h1 h2 h3
  apply h2
  intro h1 hP h2
  apply h1
  intro hP
  exact h2







/- Use these commands to add items to the game's inventory. -/


-- NewTheorem Nat.add_comm Nat.add_assoc
-- NewDefinition Nat Add Eq

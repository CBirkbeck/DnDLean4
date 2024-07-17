import Game.Levels.TrueAndFalse.tf4

World "TrueAndFalse"
Level 5

Title "true implies false implies false"

Introduction
"

"

/-
The goal is to prove that `true → false` implies `false`.
-/
Statement : (true → false) → false := by
  intro t
  apply t
  rfl




Conclusion " "

/- Use these commands to add items to the game's inventory. -/


-- NewTheorem Nat.add_comm Nat.add_assoc
-- NewDefinition Nat Add Eq

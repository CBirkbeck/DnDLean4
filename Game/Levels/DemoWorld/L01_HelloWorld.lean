import Game.Metadata

World "DemoWorld"
Level 1

Title "Hello World"

Introduction
"
test

"

Statement example_one (P : Prop) (p : P) : P := by
  Hint "write exact p"
  exact p


Conclusion "Yay!"

/- Use these commands to add items to the game's inventory. -/

NewTactic rw rfl
-- NewTheorem Nat.add_comm Nat.add_assoc
-- NewDefinition Nat Add Eq

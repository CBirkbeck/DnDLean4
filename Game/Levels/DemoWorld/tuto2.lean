import Game.Levels.DemoWorld.tuto1

World "Tutorial"
Level 2

Title "Tutorial World 2"

Introduction
"

test
"

/--"If $P,Q$ are logical statements with respective proofs $p,q$, then $Q$ is true. " -/
Statement example_one
 (P Q : Prop) (p : P) (q : Q) : Q := by
  exact q

Conclusion " "

/- Use these commands to add items to the game's inventory. -/

-- NewTheorem Nat.add_comm Nat.add_assoc
-- NewDefinition Nat Add Eq

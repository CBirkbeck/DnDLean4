import Game.Metadata

World "Tutorial"
Level 2

Title "Tutorial World 2"

Introduction
"

test
"


/-Lemma
If $P,Q$ are logical statements with respective proofs $p,q$, then $Q$ is true.
-/
statement example_two (P Q : Prop) (p : P) (q : Q) : Q := by
  exact q

Conclusion "Yay!"

/- Use these commands to add items to the game's inventory. -/

NewTactic exact
-- NewTheorem Nat.add_comm Nat.add_assoc
-- NewDefinition Nat Add Eq

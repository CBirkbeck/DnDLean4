import Game.Levels.DemoWorld.tuto3

World "Tutorial"
Level 4

Title "Combining logical statements 2"

Introduction
"
Now try this!
"


Statement
"Let $P,Q,R$ be logical statements with $P$ implies $Q$ and $Q$ implies $R$. If $P$ is true, then so
is $R$."
 (P Q R : Prop) (h1 : P → Q) (h2 : Q → R) (p : P) : R := by
  exact h2 (h1 (p))


Conclusion "Yay!"

/- Use these commands to add items to the game's inventory. -/

-- NewTheorem Nat.add_comm Nat.add_assoc
-- NewDefinition Nat Add Eq

import Game.Levels.LogicalStatements.logic5

World "LogicalStatements"
Level 6

Title "Logical statements 6"

Introduction
"
The goal for this level is to show that implications are transitive.
That is, if `P → Q` and `Q → R` are true, then so is `P → R`.

"

/--If $P,Q,R$ are logical statements and $P \implies Q$ and $Q \implies R$ then $P \implies R$. -/
Statement (P Q R : Prop) : (P → Q) → (Q → R) → (P → R) := by
  Hint "It might be useful to start by using `intro hPQ hQR hP`."
  intro hPQ hQR hP
  apply hQR
  apply hPQ
  exact hP




Conclusion  ""

/- Use these commands to add items to the game's inventory. -/


-- NewTheorem Nat.add_comm Nat.add_assoc
-- NewDefinition Nat Add Eq

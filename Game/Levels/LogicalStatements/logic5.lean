import Game.Levels.LogicalStatements.logic4

World "LogicalStatements"
Level 5

Title "Logical statements 5"

Introduction
"
If we know `P`, and we also know `P → Q`, we can deduce `Q`.
This is called `Modus Ponens` by logicians.

"

/--If $P$ is true and $P \implies Q$ is true, then $Q$ is true. -/
Statement Modus_Ponens (P Q : Prop) : P → (P → Q) → Q := by
  intro hP hPQ
  apply hPQ
  exact hP




Conclusion  ""

/- Use these commands to add items to the game's inventory. -/


-- NewTheorem Nat.add_comm Nat.add_assoc
-- NewDefinition Nat Add Eq

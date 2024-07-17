import Game.Levels.LogicalStatements.logic2

World "LogicalStatements"
Level 3

Title "Logical statements 3"

Introduction
"


"

/--Let $P,Q$ be logical statement and assume $Q$ is true, then $P$ implies $Q$.-/
Statement  (P Q : Prop) (hQ : Q) : P → Q := by
  intro fish
  exact hQ





Conclusion "Why is this true?
This works because the implication `P → Q` is true unless `Q` is false and `P` is true. In this case
we are given that `Q` is always true, so the implication holds regardless of the truth value of `P`. "

/- Use these commands to add items to the game's inventory. -/


-- NewTheorem Nat.add_comm Nat.add_assoc
-- NewDefinition Nat Add Eq

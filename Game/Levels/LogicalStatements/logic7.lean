import Game.Levels.LogicalStatements.logic6

World "LogicalStatements"
Level 7

Title "Boss level"

Introduction
"

"

/--If $P,Q,R$ are logical statements and
 $(P \implies Q \implies R)$  then $((P \implies Q) \implies (P \implies R)$. -/
Statement (P Q R : Prop) : (P → Q → R) → (P → Q) → (P → R) := by
  Hint "Notice we have three implications, so we need to introduce all of them using `intro`."
  intro hPQR hPQ hP
  Hint "When using `apply` we need to make sure that we use an assumption that contains our goal."
  apply hPQR
  Hint "If we have more than one goal to prove, then we need to do them in order. By default the lean
applies the tactics to the first goal until complete and then moves on to the next.  "
  · exact hP
  · apply hPQ
    exact hP





Conclusion  ""

/- Use these commands to add items to the game's inventory. -/


-- NewTheorem Nat.add_comm Nat.add_assoc
-- NewDefinition Nat Add Eq

import Game.Levels.NotLogic.notlogic3

World "NotLogic"
Level 9

Title "Boss Level"

Introduction
"



"
/--
If $P, Q$ are logical statements then $(P \implies Q)$ is equivalent to $(¬P) ∨ Q$.
-/
Statement (P Q : Prop) : (P → Q) ↔ ¬ P ∨ Q := by
  constructor
  intro h
  by_cases p : P
  right
  apply h
  exact p
  left
  exact p
  intro h1 h2
  cases h1
  exfalso
  apply P_not_P_false P
  constructor
  exact h2
  exact h
  exact h

Conclusion "


"

/- Use these commands to add items to the game's inventory. -/


-- NewTheorem Nat.add_comm Nat.add_assoc
-- NewDefinition Nat Add Eq

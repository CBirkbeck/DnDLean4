import Game.Levels.AndOr.casestac2

World "AndOr"
Level 6

Title "and is commutative"

Introduction
"


"

/--
Let $P,Q$ be logical statements, then $P ∧ Q$ is true iff $Q ∧ P$ is true.
-/
Statement (P Q : Prop) : P ∧ Q ↔ Q ∧ P := by
  constructor
  intro h
  rcases h with ⟨hl, hr⟩
  constructor
  exact hr
  exact hl
  intro h
  constructor
  exact h.2
  exact h.1








Conclusion ""

/- Use these commands to add items to the game's inventory. -/


-- NewTheorem Nat.add_comm Nat.add_assoc
-- NewDefinition Nat Add Eq

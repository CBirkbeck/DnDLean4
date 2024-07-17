import Game.Levels.LogicLaws.logicalands

World "LogicLaws"
Level 2

Title "Second absorption law"

Introduction
"
This level proves the second absorption law.
"

/--
If $P,Q$ are logical statements then $P ∨ (P ∧ Q)$ is true if and only if $P$ is true.
-/
Statement (P Q : Prop) : P ∨ (P ∧ Q) ↔ P := by
  constructor
  intro h
  rcases h
  exact h
  rcases h with ⟨hl, hr⟩
  exact hl
  intro h
  left
  exact h



Conclusion ""

/- Use these commands to add items to the game's inventory. -/


-- NewTheorem Nat.add_comm Nat.add_assoc
-- NewDefinition Nat Add Eq

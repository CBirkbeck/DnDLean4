import Game.Metadata
import Game.Levels.AndOr

World "LogicLaws"
Level 1

Title "First absorption law"

Introduction
"
This level proves the first *absorption* law.
"

/--
If $P,Q$ are logical statements then $P ∧ (P ∨ Q)$ is true if and only if $P$ is true.
-/
Statement (P Q : Prop) : P ∧ (P ∨ Q) ↔ P := by
  constructor
  intro h
  rcases h with ⟨hP, hPQ⟩
  exact hP
  intro h
  constructor
  exact h
  left
  exact h



Conclusion ""

/- Use these commands to add items to the game's inventory. -/


-- NewTheorem Nat.add_comm Nat.add_assoc
-- NewDefinition Nat Add Eq

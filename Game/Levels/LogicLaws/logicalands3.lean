import Game.Levels.LogicLaws.logicalands2

World "LogicLaws"
Level 3

Title " Associative laws pt 1"

Introduction
"
This level proves that `∧` is *associative*.
"

/--
If $P,Q,R$ are logical statements, then $P ∧ (Q ∧ R)$ is true iff $(P ∧ Q) ∧ R$ is true.
-/
Statement (P Q R : Prop) : P ∧ (Q ∧ R) ↔ (P ∧ Q) ∧ R := by
  constructor
  intro h
  constructor
  rcases h with ⟨hl, hr⟩
  constructor
  exact hl
  rcases hr with ⟨hrl, hrr⟩
  exact hrl
  rcases h with ⟨h1, h2, h3⟩
  exact h3
  intro h
  constructor
  rcases h with ⟨hl, hr⟩
  exact hl.1
  constructor
  exact h.1.2
  exact h.2



Conclusion ""

/- Use these commands to add items to the game's inventory. -/


-- NewTheorem Nat.add_comm Nat.add_assoc
-- NewDefinition Nat Add Eq

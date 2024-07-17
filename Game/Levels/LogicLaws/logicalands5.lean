import Game.Levels.LogicLaws.logicalands4

World "LogicLaws"
Level 5

Title " Distributive laws 1"

Introduction
"
This level proves the *distributivity* of `∧` over `∨`.
"


/--
If $P,Q,R$ are logical statements then $P ∧ (Q ∨ R)$ is true iff $(P ∧ Q) ∨ (P ∧ R)$ is true.
-/
Statement (P Q R : Prop) : P ∧ (Q ∨ R) ↔ (P ∧ Q) ∨ (P ∧ R) := by
  constructor
  intro h
  rcases h with ⟨h1, h2⟩
  rcases h2 with h2 | h3
  left
  constructor
  exact h1
  exact h2
  right
  constructor
  exact h1
  exact h3
  intro h
  rcases h with h1 | h2
  constructor
  exact h1.1
  left
  exact h1.2
  constructor
  exact h2.1
  right
  exact h2.2


Conclusion ""

/- Use these commands to add items to the game's inventory. -/


-- NewTheorem Nat.add_comm Nat.add_assoc
-- NewDefinition Nat Add Eq

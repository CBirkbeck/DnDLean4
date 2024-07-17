import Game.Levels.LogicLaws.logicalands5

World "LogicLaws"
Level 6

Title " Distributive laws 2"

Introduction
"
This level proves the distributivity of `∨` over `∧`.
"


/--
If $P,Q,R$ are logical statements then $P ∨ (Q ∧ R)$ is true iff $(P ∨ Q) ∧ (P ∨ R)$ is true.
-/
Statement (P Q R : Prop) : P ∨ (Q ∧ R) ↔ (P ∨ Q) ∧ (P ∨ R) := by
  constructor
  intro h
  rcases h with h | h2
  constructor
  left
  exact h
  left
  exact h
  constructor
  right
  exact h2.1
  right
  exact h2.2
  intro h
  rcases h with ⟨h_left, h_right⟩
  rcases h_left with h1 | h2
  left
  exact h1
  rcases h_right with h4 | h5
  left
  exact h4
  right
  constructor
  exact h2
  exact h5


Conclusion ""

/- Use these commands to add items to the game's inventory. -/


-- NewTheorem Nat.add_comm Nat.add_assoc
-- NewDefinition Nat Add Eq

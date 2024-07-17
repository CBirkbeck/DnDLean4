import Game.Levels.LogicLaws.logicalands3

World "LogicLaws"
Level 4

Title " Associative laws pt 2"

Introduction
"
This level proves that `∨` is associative.
"

/--
If $P,Q,R$ are logical statements then $P ∨ (Q ∨ R)$ is true iff $(P ∨ Q) ∨ R$ is true.
-/
Statement (P Q R : Prop) : P ∨ (Q ∨ R) ↔ (P ∨ Q) ∨ R := by
  constructor
  intro h
  rcases h with h1 | h2
  left
  left
  exact h1
  rcases h2 with h2 |  h3
  left
  right
  exact h2
  right
  exact h3
  intro h
  rcases h with h1 | h2
  rcases h1 with h1 | h3
  left
  exact h1
  right
  left
  exact h3
  right
  right
  exact h2



Conclusion ""

/- Use these commands to add items to the game's inventory. -/


-- NewTheorem Nat.add_comm Nat.add_assoc
-- NewDefinition Nat Add Eq

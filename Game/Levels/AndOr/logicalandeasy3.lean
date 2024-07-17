import Game.Levels.AndOr.logicalandeasy2

World "AndOr"
Level 8

Title "and is transitive"

Introduction
"
This level will show that `∧` is *transitive*.

"


/--
If $P,Q,R$ are logical statements, then $P ∧ Q$ and $Q ∧ R$ imples $P ∧ R$.
-/
Statement (P Q R : Prop) : (P ∧ Q) → (Q ∧ R) → (P ∧ R)  := by
  intro ⟨hP, hQ⟩ ⟨_, hR⟩
  exact ⟨hP, hR⟩







Conclusion ""

/- Use these commands to add items to the game's inventory. -/


-- NewTheorem Nat.add_comm Nat.add_assoc
-- NewDefinition Nat Add Eq

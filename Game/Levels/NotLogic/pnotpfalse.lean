import Game.Levels.NotLogic.tf6

World "NotLogic"
Level 3

Title "P not P is false"

Introduction
"
In this level we will prove that `P ∧ ¬ P` is always false. This is an example of a *contradiction*.
"

/--
If $P$ is a logical statement, then $P ∧ ¬P$ is false.
-/
Statement P_not_P_false (P : Prop) : P ∧ ¬ P → False := by
  intro h
  rcases h with ⟨h1, h2⟩
  rw [not_iff_imp_false] at h2
  apply h2
  exact h1




Conclusion "


"

/- Use these commands to add items to the game's inventory. -/


-- NewTheorem Nat.add_comm Nat.add_assoc
-- NewDefinition Nat Add Eq

NewTheorem P_not_P_false

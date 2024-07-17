import Game.Levels.DeMorgan.demorgan1

World "DeMorgansLaws"
Level 2

Title "De Morgan's laws, Final Boss"

Introduction
"
For this final battle with De Morgan, you are on your own!
"


/--
If $P,Q$ are logical statements then $¬(P ∧ Q)$ is equivalent to $¬ P ∨ ¬Q$.
-/

Statement DeMorgan_two (P Q : Prop) :  ¬ (P ∧ Q) ↔ ¬ P ∨ ¬ Q :=by
  constructor
  { intro h
    by_cases hP : P
    { right
      intro hQ
      apply h
      exact ⟨hP, hQ⟩ }
    { left
      exact hP } }
  { intro (hnP) ⟨hP, hQ⟩
    rcases hnP with (hnP | hnQ)
    { exact hnP hP }
    { exact hnQ hQ } }



Conclusion "


"

/- Use these commands to add items to the game's inventory. -/


-- NewTheorem Nat.add_comm Nat.add_assoc
-- NewDefinition Nat Add Eq

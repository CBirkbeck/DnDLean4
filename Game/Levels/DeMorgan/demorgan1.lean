import Game.Metadata
import Game.Levels.NotLogic

World "DeMorgansLaws"
Level 1

Title "De Morgan's laws, First Boss"

Introduction
"
It is time to tackle our final bosses, the *De Morgans laws*. Use your tactics wisely!

"

/--
If $P,Q$ are logical statements  $¬(P ∨ Q)$ is equivalent to $¬ P ∧ ¬Q$.
-/
Statement DeMorgan_one (P Q : Prop) : ¬ (P ∨ Q) ↔ ¬ P ∧ ¬ Q := by
  Hint "You can do this only using `constructor`, `intro`, `apply`, `left`, `right`."
  Hint "If you have a goal `¬P` then `intro h` will turn your goal into `false` and give you
an extra assumption `h : P`."
  Hint "If you have a goal `false` and an assumption `h : ¬P`, then `apply h` will turn your goal
into `P`."
  constructor
  { intro h
    constructor
    { intro hP
      apply h
      left
      exact hP }
    { intro hQ
      apply h
      right
      exact hQ } }
  { intro h
    intro h2
    rcases h with ⟨h11, h21⟩

    rcases h2 with hl | hr
    exact h11 hl
    exact h21 hr }




Conclusion "


"

/- Use these commands to add items to the game's inventory. -/


-- NewTheorem Nat.add_comm Nat.add_assoc
-- NewDefinition Nat Add Eq

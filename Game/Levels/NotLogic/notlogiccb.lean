import Game.Levels.NotLogic.notlogic2

World "NotLogic"
Level 6

Title "more not logic"

Introduction
"



"

/--
If $P$ is a logical statement then $P \implies ¬P$ implies $\mathrm{false}$.
-/
Statement (P : Prop) : P → ¬ P → False := by
  intro h1 h2
  apply h2
  exact h1




Conclusion "


"

/- Use these commands to add items to the game's inventory. -/


-- NewTheorem Nat.add_comm Nat.add_assoc
-- NewDefinition Nat Add Eq

import Game.Levels.NotLogic.notlogiccb

World "NotLogic"
Level 7

Title "even more not logic"

Introduction
"



"
/--
If $P$ is a logical statement then $P \implies ¬ ¬P$.
-/
Statement (P : Prop) : P → ¬ (¬ P) := by
  intro P
  Hint "Try using `rw [not_iff_imp_false]`."
  rw [not_iff_imp_false]
  intro hp
  apply hp
  exact P



Conclusion "


"

/- Use these commands to add items to the game's inventory. -/


-- NewTheorem Nat.add_comm Nat.add_assoc
-- NewDefinition Nat Add Eq

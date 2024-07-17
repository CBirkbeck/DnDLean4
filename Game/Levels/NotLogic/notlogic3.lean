import Game.Levels.NotLogic.notlogiccb2

World "NotLogic"
Level 8

Title "even more not logic"

Introduction
"



"
/--
If $P$ is a logical statement then $¬(¬P) \implies P$.
-/
Statement (P : Prop) :¬ (¬ P) → P := by
  rw [not_iff_imp_false]
  intro hp
  by_cases hp2 : P
  exact hp2
  exfalso
  apply hp
  exact hp2

Conclusion "


"

/- Use these commands to add items to the game's inventory. -/


-- NewTheorem Nat.add_comm Nat.add_assoc
-- NewDefinition Nat Add Eq

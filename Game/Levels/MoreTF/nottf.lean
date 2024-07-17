import Game.Levels.MoreTF.nottf2

World "MoreTrueAndFalse"
Level 2

Title "More True and False 2"

Introduction
"


"
/--
$¬ \mathrm{true}$ implies $\mathrm{false}$.
-/
Statement: ¬ True → False := by
  rw [not_iff_imp_false]
  intro h
  apply h
  trivial




Conclusion "


"

/- Use these commands to add items to the game's inventory. -/


-- NewTheorem Nat.add_comm Nat.add_assoc
-- NewDefinition Nat Add Eq

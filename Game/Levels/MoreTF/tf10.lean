import Game.Levels.MoreTF.tf9

World "MoreTrueAndFalse"
Level 5

Title "More True and False 5"

Introduction
"


"

/--
For any logical statement $P$, $(\mathrm{true} \implies \mathrm{false})$ implies $P$.
-/
Statement (P : Prop) : (True → False) → P := by
 intro h
 exfalso
 apply h
 trivial






Conclusion "


"

/- Use these commands to add items to the game's inventory. -/


-- NewTheorem Nat.add_comm Nat.add_assoc
-- NewDefinition Nat Add Eq

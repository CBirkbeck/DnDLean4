import Game.Levels.MoreTF.tf8

World "MoreTrueAndFalse"
Level 4

Title "More True and False 4"

Introduction
"


"

/--
If $P, Q$ are logical statements then $P \implies \mathrm{false}$ implies $P \implies Q$.
-/
Statement (P Q : Prop) : (P → False) → P → Q := by
  intro hpf hp
  exfalso
  apply hpf
  exact hp




Conclusion "


"

/- Use these commands to add items to the game's inventory. -/


-- NewTheorem Nat.add_comm Nat.add_assoc
-- NewDefinition Nat Add Eq

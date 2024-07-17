import Game.Levels.MoreTF.nottf

World "MoreTrueAndFalse"
Level 3

Title "More True and False 3"

Introduction
"


"

/--
If $P$ is a logical statement then $P$ implies $(P \implies \mathrm{false}) \implies \mathrm{false}$
-/
Statement (P : Prop) :  P → ((P → False) → False) := by
   intro hp hpf
   apply hpf
   exact hp



Conclusion "


"

/- Use these commands to add items to the game's inventory. -/


-- NewTheorem Nat.add_comm Nat.add_assoc
-- NewDefinition Nat Add Eq

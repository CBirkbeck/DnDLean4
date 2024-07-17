import Game.Metadata
import Game.Levels.DeMorgansLaws

World "MoreTrueAndFalse"
Level 1

Title "More True and False 1"

Introduction
"


"

/--
$¬ \mathrm{false}$ implies $\mathrm{true}$.
-/
Statement : ¬ False → True := by
  intro h
  trivial



Conclusion "


"

/- Use these commands to add items to the game's inventory. -/


-- NewTheorem Nat.add_comm Nat.add_assoc
-- NewDefinition Nat Add Eq

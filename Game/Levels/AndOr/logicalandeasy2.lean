import Game.Levels.AndOr.logicalandeasy

World "AndOr"
Level 7

Title "and is commutative"

Introduction
"


"


/--
If $P,Q,R$ are logical statements then $P ∧ Q$ implies that
$(P \implies R) \implies (Q \implies R) \implies R$
-/
Statement (P Q R : Prop) :  P ∨ Q → (P → R) → (Q → R) → R := by
  intro hPoQ hPR hQR
  rcases hPoQ with hP | hQ
  · apply hPR
    exact hP
  · exact hQR hQ







Conclusion ""

/- Use these commands to add items to the game's inventory. -/


-- NewTheorem Nat.add_comm Nat.add_assoc
-- NewDefinition Nat Add Eq

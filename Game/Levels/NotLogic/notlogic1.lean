import Game.Levels.NotLogic.pnotpfalse

World "NotLogic"
Level 4

Title "Proof by contradiction."

Introduction
"
##  Proof by contradiction.

In this level we will see why proofs by contradiction are valid. The key is to note that for any
logical statements `P,Q`, we have that ` P ∧ (¬ P) → Q` is true.

-/

/-Hint : Why is this true?
We have just seen that `P ∧ (¬ P)`is always false and `false → Q` is always true.
-/




"

/--
If $P$ and $Q$ are logical statements, then
$(P\land(\lnot P))\implies Q.$
-/
Statement contra (P Q : Prop) : (P ∧ ¬ P) → Q := by
  Hint "Start by introducing your assumption and then using `exfalso`."
  intro h
  exfalso
  rcases h with ⟨p, np⟩
  rw [not_iff_imp_false] at np
  apply np
  exact p





Conclusion "
If you want to use to use this result later on then you can type `apply (contra P Q)`where `P,Q` are
the assumptions you want to use. You can also use the tactic `by_contra`
to achieve similar results.

"

/- Use these commands to add items to the game's inventory. -/


-- NewTheorem Nat.add_comm Nat.add_assoc
-- NewDefinition Nat Add Eq


NewTheorem contra

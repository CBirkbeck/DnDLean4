import Game.Metadata
import Game.Levels.LogicLaws

World "NotLogic"
Level 1

Title "contrapositive"

axiom not_iff_imp_false (P : Prop) : ¬ P ↔ P → False

Introduction
"

By definition `¬Q` is equivalent to `Q → false`. Lets call this result

`not_iff_imp_false (P : Prop) : ¬ P ↔ (P → false)`


You can convince yourself this is true by writting out the truth table for `¬ P` and `P → false`.


In order to use it, lets look at a new tactic.

## The `rw` tactic

The `rw`tactic (short for `rewrite`)
is a tactic that allows you to do a substitution. For example, if we have the
assumption `h : P ↔ Q`, then `rw [h]` will replace the (first) `P` in the goal with `Q`. If instead you would like to
turn the first `Q` in your goal to `P` then use `rw [←h]`. (To get the `←` arrow, type `backslash l`).

Combining `rw` and `not_iff_imp_false` (dont forget the []), try to prove the following:


"

/--
If $P$ and $Q$ are propositions, and $P\implies Q$, then
$\lnot Q\implies \lnot P$.
-/
Statement (P Q : Prop) : (P → Q) → (¬ Q → ¬ P) := by
  Hint "Start by using `rw [not_iff_imp_false]` and see what changes."
  rw [not_iff_imp_false]
  rw [not_iff_imp_false]
  intro f
  intro h
  intro p
  apply h
  apply f
  exact p



Conclusion "
 Tip
If you want to use the `rw` tactic on one of your assumptions then this can be done.

For example, if we have `h1 : P ↔ Q` and `h2` is the assumption we want to change, then
 `rw [h1] at h2` will substitute the first `P` in `h2` to `Q`.

"

/- Use these commands to add items to the game's inventory. -/


-- NewTheorem Nat.add_comm Nat.add_assoc
-- NewDefinition Nat Add Eq

/--
# The `rw` tactic

The `rw`tactic (short for `rewrite`)
is a tactic that allows you to do a substitution. For example, if we have the
assumption `h : P ↔ Q`, then `rw [h]` will replace the (first) `P` in the goal with `Q`. If instead you would like to
turn the first `Q` in your goal to `P` then use `rw [←h]`. (To get the `←` arrow, type `backslash l`).
-/
TacticDoc rw

NewTactic rw

NewTheorem not_iff_imp_false

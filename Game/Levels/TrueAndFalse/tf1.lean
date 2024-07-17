import Game.Metadata
import Game.Levels.LogicalStatements

World "TrueAndFalse"
Level 1

Title "trivial tactic"

Introduction
"
##  True and False

 `Prop` has two special inhabitants, the logical statements `true`,
with truth value true and `false` with truth value
false.


In the following levels we will work with logical statements combining `true` and `false`.

To help us we need to introduce a new tactic:

## The `trivial` tactic

If your lemma has the goal:

```
⊢ true
```

then `trivial` will complete the proof for you. Try it out below:

"

/-
The logical statement `true` is true.
-/
Statement : True  := by
  trivial





Conclusion "Yay!"

/- Use these commands to add items to the game's inventory. -/


-- NewTheorem Nat.add_comm Nat.add_assoc
-- NewDefinition Nat Add Eq

/--


## The `trivial` tactic
The `trivial` tactic can do many things, one of which is the following:

If your lemma has the goal:

```
⊢ true
```

then `trivial` will complete the proof for you.
-/
TacticDoc trivial


NewTactic trivial

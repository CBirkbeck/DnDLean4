import Game.Levels.NotLogic.notlogic

World "NotLogic"
Level 2

Title "The `exfalso` tactic."

Introduction
"
In this level we want to prove prove that `false` implies any proposition `P`.
"

/--
If $P$ is a logical statement then $\mathrm{false}$ implies $P$.
-/
Statement (P : Prop) : false → P := by
 intro h
 rcases h



Conclusion "
# What is going on here?

One way to solve this level is to use `intro h` followed by `rcases h`.  Notice that using `intro h`,
introduces the assumption `h : false`. Lean thinks of `false` as empty, i.e having no elements.
`rcases h` goes through each element in `h` and tries to prove our goal.
But since our assumption is `false` there are no cases, so the result is trivially true.
To make sense of this outside of Lean, we think that starting from a false statement we can have
any outcome, both true and false (see levels 3 & 4 of True and False world).

## The `exfalso` tactic

A way to use this result in Lean is with the `exfalso` tactic,
which changes any goal to `false`.

"

/- Use these commands to add items to the game's inventory. -/


-- NewTheorem Nat.add_comm Nat.add_assoc
-- NewDefinition Nat Add Eq

/--
## The `exfalso` tactic

A way to use this result in Lean is with the <mark style ="background-color : #ebdef0 "> `exfalso`</mark> tactic,
which changes any goal to `false`.
-/
TacticDoc exfalso

NewTactic exfalso

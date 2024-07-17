import Game.Levels.DemoWorld.tuto2

World "Logical Statements"
Level 1

Title "Apply tactic"

Introduction
"

## The `apply` tactic

If your lemma has the following state:

```
h : P → Q
⊢ Q
```

Here, we assume that `P` implies `Q` and our goal is to prove `Q`. Then the tactic `apply h`
will change our goal to `P` and leave our assumptions unchanged, i.e. your new state will be

```
h : P → Q
⊢ P
```

The `apply` tactic is useful for *arguing backwards*. It reduces the goal to a potentially easier
goal, without changing any hypotheses.

Here's an example we have already done, but try and do it using the `apply` tactic:


"
/--Let $P,Q$ be logical statements and $P$ implies $Q$. If $P$ is true, then so is $Q$.-/
Statement (P Q : Prop) (h : P → Q) (p : P) : Q := by
  apply h
  exact p



Conclusion "Yay!"

/- Use these commands to add items to the game's inventory. -/


-- NewTheorem Nat.add_comm Nat.add_assoc
-- NewDefinition Nat Add Eq

/--
## The `apply` tactic

If your lemma looks like

```
h : P → Q
⊢ Q
```

then the tactic `apply h,` will change it to

```
h : P → Q
⊢ P
```

The `apply` tactic is useful for *arguing backwards*. It reduces the goal to a potentially easier
goal, without changing any hypotheses.
-/
TacticDoc apply

NewTactic apply

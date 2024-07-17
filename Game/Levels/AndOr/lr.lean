import Game.Levels.AndOr.constac2

World "AndOr"
Level 3

Title "left and right"

Introduction
"
## `left` and `right`

If your lemma has the goal:

```
⊢ P ∨ Q
```

then   `left`  changes the goal to `⊢ P`.
Similarly, `right`  changes the goal to `⊢ Q`.
-/

/-Hint : Why does this work?
The logic is that `P` implies `P ∨ Q` so it is enough to prove `P`.

"

/--
Let $P,Q$ be logical statements and assume $P$ is true, then $P ∨ Q$ is true.
-/
Statement (P Q : Prop) (p : P) : P ∨ Q := by
  left
  exact p





Conclusion ""

/- Use these commands to add items to the game's inventory. -/


-- NewTheorem Nat.add_comm Nat.add_assoc
-- NewDefinition Nat Add Eq

/--
## The `left` tactic
If your lemma has the goal:

```
⊢ P ∨ Q
```

then   `left`  changes the goal to `⊢ P`.
-/
TacticDoc left

/--
## The `right` tactic
If your lemma has the goal:

```
⊢ P ∨ Q
```

then   `right`  changes the goal to `⊢ Q`.
-/
TacticDoc right

NewTactic right left

import Game.Metadata
import Game.Levels.TrueAndFalse

World "AndOr"
Level 1

Title "constructor tactic"

Introduction
"
## The `constructor` tactic

If your lemma has the goal:

```
⊢ P ∧ Q
```

then the  `constructor`  tactic will turn it
into *two* goals `⊢ P` and `⊢ Q`.

-/

/-Hint : Tip
It is best practice to indicate when you are working with two goals, either by using dots ·
which you get by typing `backslash` followed by `.`
brackets like this:

```
...
constructor
· working on P
· working on Q
```


"

/--
Let $P,Q$ be logical statements and assume that they are both true, then $P ∧ Q$ is
true.
-/
Statement (P Q : Prop) (p : P) (q : Q) : P ∧ Q := by
  constructor
  · exact p
  · exact q





Conclusion ""

/- Use these commands to add items to the game's inventory. -/


-- NewTheorem Nat.add_comm Nat.add_assoc
-- NewDefinition Nat Add Eq


NewTactic constructor

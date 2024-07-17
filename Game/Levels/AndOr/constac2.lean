import Game.Levels.AndOr.constac

World "AndOr"
Level 2

Title "constructor tactic part 2"

Introduction
"
`constructor` can also be used for if and only if statements. For example, if you have `⊢ P ↔ Q` and apply
`constructor`, then your goal will change from

```
⊢ P ↔ Q
```
to two goals, `⊢ P → Q` and `⊢ Q → P`.


"

/-- Let $P$ be a logical statement, then $P$ is true if and only if $P$ is true.
-/
Statement (P : Prop) : P ↔ P := by
  constructor
  intro p
  exact p
  intro p
  exact p




Conclusion ""

/- Use these commands to add items to the game's inventory. -/


-- NewTheorem Nat.add_comm Nat.add_assoc
-- NewDefinition Nat Add Eq

/--
## The `constructor` tactic

If your lemma has the goal:

```
⊢ P ∧ Q
```

then the  `constructor`  tactic will turn it
into *two* goals `⊢ P` and `⊢ Q`.

Moreover, if you have an iff `P ↔ Q` then splitting it will give you two goals, `P → Q`
(i.e "`P` only if `Q`") and `P ← Q ` (i.e "`P` if `Q`") to prove.
-/
TacticDoc constructor


NewTactic constructor

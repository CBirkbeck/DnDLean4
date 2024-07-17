import Game.Levels.NotLogic.notlogic1

World "NotLogic"
Level 5

Title "Proof by contradiction."

Introduction
"
We proved earlier that `(P → Q) → (¬ Q → ¬ P)`. The converse,
that `(¬ Q → ¬ P) → (P → Q)` is certainly true, but trying to prove
it using the tactics we've learnt so far is impossible.

# Why is this impossible?

Suppose we tried to prove this with the tactics we have seen so far, then our proof might look
something like:
```
intro h
intro p
rw [not_iff_imp_false] at h
rw [not_iff_imp_false] at h
```
You are then left with the following state:
```
P Q : Prop
h : (Q → false) → P → false
p : P
⊢ Q
```
and now we are stuck. In fact, using tactics such as `intro` and `apply` you will never be able to
prove this lemma as this is not provable in constructive logic. The key in proving this is to use
Lean's version of a truth table!

In order to continue we need a new tactic.

## The `by_cases` tactic

The tactic `by_cases` allows us to create Lean's
version of a truth table.

For example, if you have `P Q : Prop`, then `by_cases hp : P; by_cases hq : Q,`
will create four goals, one for each of the four  possibilities for `P,Q`, i.e.,

```md
| `P`     | `Q`     |
| --------|---------|
| `true`  | `true`  |
| `true`  | `false` |
| `false` | `true`  |
| `false` | `false` |
```

**Note the semicolon**! It means do the next tactic to all the goals, not just the first.




"

/--
If $P$ and $Q$ are logical statements, then
$(\lnot Q\implies \lnot P)\implies(P\implies Q).$
-/
Statement (P Q : Prop) : (¬ Q → ¬ P) → (P → Q) := by
  by_cases p : P; by_cases q : Q
  intro h hh
  exact q
  intro h hh
  exfalso
  rw [not_iff_imp_false] at h
  rw [not_iff_imp_false] at h
  rw [not_iff_imp_false] at q
  apply h
  exact q
  exact p
  intro h hh
  exfalso
  apply P_not_P_false P
  constructor
  exact hh
  apply h
  exfalso
  apply P_not_P_false P
  constructor
  exact hh
  exact p






Conclusion "


"

/- Use these commands to add items to the game's inventory. -/


-- NewTheorem Nat.add_comm Nat.add_assoc
-- NewDefinition Nat Add Eq


/--
## The `by_cases` tactic

The tactic `by_cases` allows us to create Lean's
version of a truth table.

For example, if you have `P Q : Prop`, then `by_cases hp : P; by_cases hq : Q,`
will create four goals, one for each of the four  possibilities for `P,Q`, i.e.,

```md
| `P`     | `Q`     |
| --------|---------|
| `true`  | `true`  |
| `true`  | `false` |
| `false` | `true`  |
| `false` | `false` |
```

**Note the semicolon**! It means do the next tactic to all the goals, not just the first.
-/
TacticDoc by_cases

NewTactic by_cases

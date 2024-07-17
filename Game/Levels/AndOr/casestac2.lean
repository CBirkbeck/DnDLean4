import Game.Levels.AndOr.casestac

World "AndOr"
Level 5

Title "rcases tactic part 2"

Introduction
"
You can also use `rcases` when working with the `∨` (or) connective. For example, if you have
the assumption

```
h : P ∨ Q
```

then `rcases h with hp | hq` will convert your state into the following two states:

```
P : Prop
hp : P
⊢ P
```
and

```
P : Prop
hq : Q
⊢ Q
```
one where `P` is true and one where `Q` is true.

Try this in the lemma below.


"

/--
If $P$ is a logical statement and $P$ or $P$ is true, then $P$ is true.
-/
Statement (P : Prop) (hp : P ∨ P) : P := by
  rcases hp with h1 | h2
  exact h1
  exact h2







Conclusion ""

/- Use these commands to add items to the game's inventory. -/


-- NewTheorem Nat.add_comm Nat.add_assoc
-- NewDefinition Nat Add Eq

/--
## The `rcases` tactic
if you have an assumption

```
h : P ∧ Q
```

then

`rcases h with ⟨hP hQ⟩ `

will delete `h` and replace it with

```
hP : P
hQ : Q
```
-/
TacticDoc rcases

NewTactic rcases

import Game.Levels.AndOr.lr

World "AndOr"
Level 4

Title "rcases tactic"

Introduction
"
## The `rcases` tactic

`cases` is a very general-purpose tactic for deconstructing hypotheses.
If `h` is an assumption which somehow bundles up two pieces of information,
then  `rcases h with ⟨h1, h2⟩` (to get ⟨ or ⟩ use backslash < or backslash >)  will make the
assumption `h` vanish and will replace it with the two components which made the proof of `h` in the first place.
An example of this occurring is if you have the assumption `h : P ∧ Q` which contains a
proof of `P` and a proof of `Q`.



For example, if you have an assumption

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
Try it out below.


"

/--
If $P,Q$ are logical statements and $P ∧ Q$ is true then so is $P$.
-/

Statement (P Q : Prop) (h : P ∧ Q) : P := by
  rcases h with ⟨hP, hQ⟩
  exact hP






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

-/
TacticDoc rcases

NewTactic rcases

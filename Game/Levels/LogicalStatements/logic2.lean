import Game.Levels.LogicalStatements.logic1

World "Logical Statements"
Level 2

Title "intro tactic"

Introduction
"

## The `intro` tactic.

If your goal is

```
⊢ P → Q
```

meaning we need to prove the `P` implies `Q` then the tactic `intro hp`
will take `P` as true with proof `hp` and add `hp : P` to the assumptions. In addition,
it turn your goal into `⊢ Q`.

In other words the state of the lemma becomes:

```
hp : P
⊢ Q
```

Lets look at an example that needs the `intro` tactic:


"

/--If $P$ is a logical statement then $P\implies P$.-/
Statement  (P : Prop) : P → P := by
  intro hp
  exact hp





Conclusion "Yay!"

/- Use these commands to add items to the game's inventory. -/


-- NewTheorem Nat.add_comm Nat.add_assoc
-- NewDefinition Nat Add Eq

/--

## The `intro` tactic.
If your goal is to prove the implication

```
⊢ P → Q
```

then the tactic

`intro hP,`

will add `hp : P` as an assumption (i.e. `hp` is the proof of `P`) and turn your goal into `⊢ Q`.
In other words we get:

```
hP : P
⊢ Q
```

Tip : `intro` can also be used to introduce
more than one assumption at once. Don't forget
to name your hypotheses, e.g. `intros hP hQ` if your goal is `P → Q → R`.
-/
TacticDoc intro


NewTactic intro

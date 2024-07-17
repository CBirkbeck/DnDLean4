import Game.Metadata

World "Tutorial"
Level 1

Title "Hello World"

Introduction
"
#Logical statements

In Logic, a *statement* is a sentence that is either true of false, for example:

```
1. The sum of two odd numbers is an even number
2. 36 is divisible by 3
3. x > 2
```

"

Statement example_one (P : Prop) (p : P) : P := by
  Hint "write exact p"
  exact p


Conclusion "Yay!"

/- Use these commands to add items to the game's inventory. -/

NewTactic rw rfl
-- NewTheorem Nat.add_comm Nat.add_assoc
-- NewDefinition Nat Add Eq

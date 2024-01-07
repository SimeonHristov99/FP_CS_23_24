# Important

Today we'll be having an unusual session.
The idea is for you to solve the tasks in groups and for us to help out whenever you have questions and/or problems.
Once a group is ready you'll send the solution over Moodle and we'll take a look at it.

Split in groups of 4-6 people and solve the tasks for today in groups.

> **Note**: If you have a question or problem, feel free to ask.

> **Note**: Please don't use webpages other than ones related to the Haskell documentation in order to simulate exam conditions.

## Task 1

Solve task `4` from `exam2_2023.pdf`.

Test cases:

```haskell
print $ maximumLevel t1 == 2
print $ maximumLevel t2 == 3
print $ maximumLevel t3 == 3

t1 = Node 94 (Node 73 Nil (Node 80 Nil Nil)) (Node 87 (Node 73 Nil Nil) Nil)
t2 = Node 94 (Node 73 Nil (Node 80 Nil Nil)) (Node 87 (Node 73 Nil Nil) (Node 7 Nil Nil))
t3 = Node 94 (Node 0 Nil (Node 42 Nil Nil)) (Node 0 (Node 42 Nil Nil) (Node 42 Nil Nil))
```

## Task 2

Solve task `4` from `exam2_2022.pdf`.

Test case:

```haskell
print $ isPerfectlyBalanced t1 == True

t1 = Node 'A' (Node 'B' (Node 'D' Nil Nil) (Node 'D' Nil Nil)) (Node 'C' (Node 'D' Nil Nil) (Node 'E' Nil Nil))
```

## Task 3

![Alt text](assets/football.png?raw=true "football.png")

Test cases:

```haskell
print $ maxGoalMinPoints tournament == "B"
print $ surpassSelf tournament == ["A", "B"]

tournament = [("A", "B", 1, 0), ("B", "C", 4, 1), ("C", "B", 3, 3), ("B", "A", 1, 2), ("A", "C", 0, 1)]
```

# Dart OOP Assignment: Kigali Bus Card

Name: Moayed Kamal
Student ID: 27224

## My numbers
D = 24
L = 4

Starting balance = 1240 RWF
Bus fare = 224 RWF
Student discount = 14%

## Part 4: Bug Hunt

| Bug | Line in original code | Why it was wrong | My fix |
|---|---|---|---|
| 1 | 7-8 | The variables had no starting values. | Added `''` and `0`. |
| 2 | 27 | SmartPhone did not call the Phone constructor. | Added `super(brand, battery)`. |
| 3 | 33 | Phone did not have a restart method to override. | Added `restart()` to Phone. |
| 4 | 43 | There was no setter to change the battery. | Added a setter that accepts 0 to 100. |
| 5 | 46 | Battery is a getter, not a function. | Changed `p.battery()` to `p.battery`. |

### Not a bug

`new Phone('Tecno', 50)` is correct because Dart allows the `new` keyword when creating an object.

### Output of bug_hunt.dart

```text
100
```

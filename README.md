# Dart OOP Assignment: Kigali Bus Card

**Name:** Moayed Kamal  
**Student ID:** 27224

## My numbers

- D = 24
- L = 4
- Starting balance = 1240 RWF
- Bus fare = 224 RWF
- Student discount = 14%

## Output of main.dart

```text
Error: name too short
Owner: Moayed Kamal | Balance: 1240 RWF
Owner: Moayed Kamal | Balance: 1240 RWF
Error: top-up must be 500 to 50000 RWF
Topped up 2000 RWF
Paid 224 RWF
Paid 224 RWF
Owner: Moayed Kamal | Balance: 2792 RWF
Student discount: 31 RWF
Paid 193 RWF
Owner: Moayed Kamal | Balance: 1047 RWF
Student card: 14% off
```

## Part 1: Why no setter for balance?

I did not add a setter because the balance should not be changed directly.
The balance can only change using topUp() and pay().
These methods check the amount before changing the balance.

## Part 2: What does ~/ do?

The ~/ operator divides two numbers and removes the decimal part.
The / operator gives a decimal result.

For example:

```dart
print(237 * 17 / 100);  // 40.29
print(237 * 17 ~/ 100); // 40
```

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

## Part 5: Predict the Output

### My prediction

```text
1
5
```

### Why

The first bag starts with 0 items. The add method adds 1.
The setter does not accept -5, so the value stays 1.

The second bag uses the add method twice.
Each call adds 2 items, so the total becomes 4.
Then 1 more item is added, making 5.

### Real output

```text
1
5
```

### Was I right?

Yes, my prediction was correct.
The first bag has 1 item.
The second bag has 5 items.

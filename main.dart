// Dart OOP Assignment: Kigali Bus Card
// Name: Moayed Kamal
// Student ID: 27224

// Part 1: BusCard class
// This class stores the card owner's name and balance.

class BusCard {
  // These variables store the card information.
  String _owner = '';
  int _balance = 0;

  // Constructor: gives the card its starting values.
  BusCard(String owner, int balance) {
    _owner = owner;
    _balance = balance;
  }

  // Getter: returns the owner's name.
  String get owner {
    return _owner;
  }

  // TODO 1: Getter for balance.
  // It allows us to read the balance.
  int get balance {
    return _balance;
  }

  // Setter: changes the owner's name.
  // The name must have at least 3 characters.
  set owner(String newName) {
    if (newName.length < 3) {
      print('Error: name too short');
    } else {
      _owner = newName;
    }
  }

  // Shows the owner's name and current balance.
  void showInfo() {
    print('Owner: $_owner | Balance: $_balance RWF');
  }

  // TODO 2: Add money to the card.
  // Only amounts from 500 to 50000 are allowed.
  void topUp(int amount) {
    if (amount >= 500 && amount <= 50000) {
      _balance = _balance + amount;
      print('Topped up $amount RWF');
    } else {
      print('Error: top-up must be 500 to 50000 RWF');
    }
  }

  // TODO 3: Pay the bus fare.
  // If the balance is too low, payment is refused.
  void pay(int fare) {
    if (fare > _balance) {
      print('Card declined');
    } else {
      _balance = _balance - fare;
      print('Paid $fare RWF');
    }
  }
}

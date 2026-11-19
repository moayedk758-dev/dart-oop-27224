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

// Part 2: StudentCard
// StudentCard is a BusCard, but students get a discount.
class StudentCard extends BusCard {
  int _discount = 0;

  // Constructor: super creates the parent BusCard.
  StudentCard(String owner, int balance, int discount)
      : super(owner, balance) {
    _discount = discount;
  }

  // This method shows the normal card information first.
  @override
  void showInfo() {
    super.showInfo();
    print('Student card: $_discount% off');
  }

  // TODO 4: Students pay less than the normal fare.
  @override
  void pay(int fare) {
    // Calculate the discount.
    int off = fare * _discount ~/ 100;

    // Show the discount.
    print('Student discount: $off RWF');

    // Use the parent's pay method with the reduced fare.
    super.pay(fare - off);
  }
}

// Part 3: Test the classes.
void main() {
  // My numbers: D = 24, L = 4
  // Starting balance = 1240 RWF
  // Bus fare = 224 RWF
  // Student discount = 14%

  // Create a normal bus card.
  BusCard card = BusCard('Moayed Kamal', 1240);

  // Try a short name. It should be refused.
  card.owner = 'Al';
  card.showInfo();

  // TODO 5: Change the owner and show information.
  card.owner = 'Moayed Kamal';
  card.showInfo();

  // TODO 6: Try an invalid and a valid top-up.
  card.topUp(100);
  card.topUp(2000);

  // TODO 7: Pay the normal bus fare twice.
  card.pay(224);
  card.pay(224);
  card.showInfo();

  // TODO 8: Create a student card with 14% discount.
  StudentCard student = StudentCard('Moayed Kamal', 1240, 14);

  // TODO 9: Pay the bus fare with the student card.
  student.pay(224);
  student.showInfo();
}

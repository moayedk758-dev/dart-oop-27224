// Name: Moayed Kamal
// Student ID: 27224
// Part 4: Bug Hunt

class Phone {
  // Store the phone information
  String _brand = '';
  int _battery = 0;

  // Set the phone brand and battery
  Phone(String brand, int battery) {
    _brand = brand;
    _battery = battery;
  }

  // Get the battery level
  int get battery {
    return _battery;
  }

  // Change the battery level
  set battery(int value) {
    // Battery must be between 0 and 100
    if (value >= 0 && value <= 100) {
      _battery = value;
    }
  }

  // Restart the phone
  void restart() {
    print('Restarting $_brand');
  }
}

class SmartPhone extends Phone {
  // Store the operating system
  String _system = '';

  // Call the Phone constructor first
  SmartPhone(String brand, int battery, String system)
      : super(brand, battery) {
    _system = system;
  }

  // Change the restart method for smartphones
  @override
  void restart() {
    print('Restarting $_system');
  }
}

void main() {
  // Create a phone with 50 battery
  Phone p = new Phone('Tecno', 50);

  // Change the battery to 100
  p.battery = 100;

  // Print the battery level
  print(p.battery);
}

class Customer {
  String name;          // ← data (field)
  double balance;       // ← data (field)

  Customer(this.name, this.balance); // constructor

  void deposit(double amount) {     // ← behaviour (method)
    balance += amount;
  }
}

void main() {
  var ayaan = Customer("Ayaan", 1000);
  var sara  = Customer("Sara",  500);

  ayaan.deposit(200);    // each object manages its OWN balance
  print(ayaan.balance); // 1200
  print(sara.balance);  // 500 — untouched
}
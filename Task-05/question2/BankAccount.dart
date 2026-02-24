class BankAccount {
  int? accountNumber;
  String? accountType;
  double Balance;
  String? currency;

  BankAccount(
    this.accountNumber,
    this.accountType,
    this.Balance,
    this.currency,
  );

  deposit(double number) {
    Balance += number;
  }

  withdraw(double number) {
    if (Balance >= number) {
      Balance -= number;
    } else {
      print("Balance not enough");
    }
  }

  @override
  String toString() {
    return "Account number: $accountNumber\nAccount Type: $accountType\nBalance: $Balance $currency\n\n";
  }
}

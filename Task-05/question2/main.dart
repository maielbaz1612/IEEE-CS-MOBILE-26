import 'BankAccount.dart';
import 'Client.dart';

void main() {
  Client client1 = Client(991316, "Ali Mohamed Nabil");
  BankAccount account1 = BankAccount(73740192, "Current", 25000, "EGP");
  BankAccount account2 = BankAccount(73700438, "Saving", 1800, "USD");
  client1.AddAccount(account1);
  client1.AddAccount(account2);

  account1.deposit(1500);
  account2.withdraw(5000);
  account2.withdraw(300);

  client1.printData();
}

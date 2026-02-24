import 'BankAccount.dart';

class Client {
  String? clientName;
  int? clientNumber;
  List<BankAccount> accounts = [];

  Client(this.clientNumber, this.clientName);

  AddAccount(BankAccount newAcc) {
    accounts.add(newAcc);
  }

  printData() {
    print(
      "Client number: $clientNumber\nClient name: $clientName\nAccount details:\n\n",
    );
    for (var acc in accounts) {
      print(acc.toString());
    }
  }
}

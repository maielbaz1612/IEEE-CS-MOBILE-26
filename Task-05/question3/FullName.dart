class FullName {
  String? firstName;
  String? lastName;
  String? surName;

  FullName(this.firstName, this.lastName, this.surName);

  get FirstName {
    return firstName;
  }

  set FirstName(String first) {
    this.firstName = first;
  }

  get LastName {
    return lastName;
  }

  set LastName(String last) {
    this.lastName = last;
  }

  get SurName {
    return surName;
  }

  set SurName(String sur) {
    this.surName = sur;
  }

  get fullName {
    return "$FirstName$LastName$SurName";
  }

  @override
  String toString() {
    return "$firstName $lastName $surName";
  }
}

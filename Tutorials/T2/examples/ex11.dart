class Person {
  String? firstName;
  String? lastName;
  int? _age;
  String? _gender;

  Person(this.firstName, this.lastName, this._age, this._gender);

  String get fullName => "$firstName $lastName";

  int get age => _age!;

  String get gender => _gender!;
}

void main() {
  Person p = Person("John", "Doe", 30, "Male");
  print("Full Name: ${p.fullName}");
  print("Age: ${p.age}");
  print("Gender: ${p.gender}");
}

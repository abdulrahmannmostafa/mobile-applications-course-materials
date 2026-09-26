// Named constructors

class Student {
  String? name;
  int? age;
  int? rollNumber;
  Student() {
    print("This is a default constructor");
  }

  Student.namedConstructor(String name, int age, int rollNumber) {
    this.name = name;
    this.age = age;
    this.rollNumber = rollNumber;
  }

  Student.namedConstructor2({String? name, int? age, int? rollNumber = 0}) {
    this.name = name;
    this.age = age;
    this.rollNumber = rollNumber;
  }
}

void main() {
  Student student = Student.namedConstructor("John", 20, 1);
  Student student2 = Student.namedConstructor2(
    name: "Jane",
    age: 22,
    rollNumber: 2,
  );
  Student student3 = Student.namedConstructor2(name: "Mike", age: 21);

  print("Name: ${student.name}");
  print("Age: ${student.age}");
  print("Roll Number: ${student.rollNumber}");
  print("--------------------");
  print("Name: ${student2.name}");
  print("Age: ${student2.age}");
  print("Roll Number: ${student2.rollNumber}");
  print("--------------------");
  print("Name: ${student3.name}");
  print("Age: ${student3.age}");
  print("Roll Number: ${student3.rollNumber}");
}

// Constant constructors

class Student {
  final String? name;
  final int? age;
  final int? rollNumber;
  const Student({this.name, this.age, this.rollNumber});
}

void main() {
  const Student student = Student(name: "John", age: 20, rollNumber: 1);
  const Student student2 = Student(name: "John", age: 20, rollNumber: 2);

  print("Name: ${student.name}");
  print("Age: ${student.age}");
  print("Roll Number: ${student.rollNumber}");
  print("--------------------");
  print("Name: ${student2.name}");
  print("Age: ${student2.age}");
  print("Roll Number: ${student2.rollNumber}");
  print("--------------------");
  print("Are student and student2 equal? ${student == student2}");
}

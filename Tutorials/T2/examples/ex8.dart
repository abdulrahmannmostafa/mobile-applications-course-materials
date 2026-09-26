// Constructor with default values and named parameters

class Table {
  String? name;
  String? color;

  Table({this.name = "Solid Wood", this.color = "Brown"});

  void display() {
    print("Name: ${this.name}");
    print("Color: ${this.color}");
  }
}

class Laptop {
  String? brand;
  int? prize;

  Laptop() {
    print("This is a default constructor");
  }

  void display() {
    print("Brand: ${this.brand}");
    print("Prize: ${this.prize}");
  }
}

void main() {
  Table table = Table(name: "Table1", color: "Red");

  Table table2 = Table(color: "Blue", name: "Table2");
  table.display();
  table2.display();

  print("--------------------");

  Laptop laptop = Laptop();
  laptop.display();
}

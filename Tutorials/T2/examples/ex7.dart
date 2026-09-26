// Constructor with named parameters

class Chair {
  String? name;
  String? color;

  Chair({this.name, this.color});

  void display() {
    print("Name: ${this.name}");
    print("Color: ${this.color}");
  }
}

void main() {
  // order of named parameters does not matter
  Chair chair = Chair(name: "Chair1", color: "Red");

  Chair chair2 = Chair(color: "Blue", name: "Chair2");
  chair.display();
  chair2.display();
}

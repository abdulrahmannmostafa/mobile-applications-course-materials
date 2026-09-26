class NoteBook {
  String? _name;
  double? _prize;

  set name(String name) => this._name = name;
  set prize(double prize) {
    if (prize < 0) {
      print("Price cannot be negative");
    } else {
      this._prize = prize;
    }
  }

  void display() {
    print("Name: ${_name}");
    print("Price: ${_prize}");
  }
}

void main() {
  NoteBook nb = new NoteBook();
  nb.name = "Dell";
  nb.prize = 500.00;
  nb.display();

  print("--------------------");

  NoteBook nb2 = new NoteBook();
  nb2.name = "HP";
  nb2.prize = -100.00;

  nb2.display();
}

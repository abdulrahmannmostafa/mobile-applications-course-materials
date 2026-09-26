// Constructors in Dart

class Mobile {
  String modelname;
  int man_year;

  Mobile(modelname, man_year) : modelname = modelname, man_year = man_year {
    print(
      "Mobile's model name is: ${modelname}, and the manufacture year is: ${man_year}",
    );
  }

  // Mobile(this.modelname, this.man_year) {
  //   print(
  //     "Mobile's model name is: ${modelname}, and the manufacture year is: ${man_year}",
  //   );
  // }

  // Mobile(modelname, man_year) {
  //   this.modelname = modelname;
  //   this.man_year = man_year;
  //   print(
  //     "Mobile's model name is: ${modelname}, and the manufacture year is: ${man_year}",
  //   );
  // }
}

void main() {
  Mobile mob = new Mobile("iPhone 11 ", 2020);

  print("The model name is: ${mob.modelname}");
  print("The manufacture year is: ${mob.man_year}");
}

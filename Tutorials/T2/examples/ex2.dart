void simpleFunction() {
  double calculateInterest(double principal, double rate, double time) {
    double interest = principal * rate * time / 100;
    return interest;
  }

  double principal = 5000;
  double time = 3;
  double rate = 3;
  double result = calculateInterest(principal, rate, time);
  print("The simple interest is $result.");
}

void arrowFunction() {
  double calculateInterest(double principal, double rate, double time) =>
      principal * rate * time / 100;

  double principal = 5000;
  double time = 3;
  double rate = 3;
  double result = calculateInterest(principal, rate, time);
  print("The simple interest is $result.");
}

void main() {
  simpleFunction();
  arrowFunction();
}

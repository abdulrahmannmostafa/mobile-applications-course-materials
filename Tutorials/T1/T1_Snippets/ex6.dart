void main() {
  List<int> numbers = [50, 10, 30, 20, 40];

  print("List: $numbers");

  numbers.add(60);
  print("After adding: $numbers");

  numbers.remove(30);
  print("After removing: $numbers");

  numbers.sort();
  print("Sorted List: $numbers");

  int sum = numbers.reduce((value, element) => value + element);
  print("Sum of all elements: $sum");

  int max = numbers.reduce(
    (value, element) => value > element ? value : element,
  );
  print("Maximum element: $max");

  int min = numbers.reduce(
    (value, element) => value < element ? value : element,
  );
  print("Minimum element: $min");
}

void main() {
  // Sets
  Set<int> numbers = {1, 2, 3, 4, 5};

  numbers.add(6);
  numbers.remove(3);

  print("Set: $numbers");
  print("Contains 4? ${numbers.contains(4)}");

  Set<int> anotherSet = {4, 5, 6, 7, 8};

  Set<int> unionSet = numbers.union(anotherSet);
  Set<int> intersectionSet = numbers.intersection(anotherSet);

  print("Union: $unionSet");
  print("Intersection: $intersectionSet");
  print("Difference: ${numbers.difference(anotherSet)}");

  // Maps
  Map<String, int> scores = {"Ali": 85, "Omar": 92, "Sara": 78};
  print("Student Scores: $scores");

  String query = "Sar";
  (scores.containsKey(query))
      ? print("$query's score: ${scores[query]}")
      : print("$query not found in the scores");
}

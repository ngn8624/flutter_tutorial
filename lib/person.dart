class Person {
  String? name; // Nullable
  // String name // Non-Nullable
  int? age;
  String? sex;
  Person({this.name, this.age, this.sex}); // namedArgument
  // Person(String name, int age, String sex) {
  //   this.name = name;
  //   this.age = age;
  //   this.sex = sex;
  // }
}

int addNumber(int num1, int num2) {
  return num1 + num2;
}

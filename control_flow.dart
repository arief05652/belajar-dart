void main() {
  // if statement control
  print("==== IF ELSE ====");
  var weather = "cloudy";

  if (weather == "cloudy") {
    print("Weather cloudy now!");
  } else if (weather == "raining") {
    print("Weather raining now!");
  } else {
    print("Weather clear");
  }

  // for control (membership iterable)
  print("==== FOR ====");
  List<String> cars = ["Toyota", "Volkswagen", "Hyundai"];

  for (final indeks in cars) {
    print("Merk $indeks");
  }

  // for control with range
  print("==== FOR WITH RANGE ====");
  for (int month = 1; month <= 5; month++) {
    print(month);
  }

  // while control
  print("==== WHILE CONTROL ====");
  int age = 0;
  while (age < 5) {
    age += 1;
    print(age);
  }
}

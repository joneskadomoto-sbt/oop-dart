// ignore_for_file: unused_local_variable

void main(List<String> arguments) {
  String name = "Laranja";
  double weight = 100.2;
  String color = "Verde e amarela";
  String flavor = "Doce e cítrica";
  int daysSinceHarvest = 29; //args
  bool isMature = funcIsMature(daysSinceHarvest);

  print(isMature);
  maturityStatus(fruit: name, days: daysSinceHarvest, color: "Azul");
}

bool funcIsMature(int days /* params */) {
  return days >= 30 ? true : false;
}

void maturityStatus(
    {required String fruit, required int days, String color = "sem cor"}) {
  days >= 30
      ? print("A $fruit está madura")
      : print("A $fruit não está madura");

  print("A $fruit é $color");
}

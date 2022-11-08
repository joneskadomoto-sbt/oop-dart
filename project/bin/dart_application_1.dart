// ignore_for_file: unused_local_variable

void main(List<String> arguments) {
  String name = "Laranja";
  double weight = 100.2;
  String color = "Verde e amarela";
  String flavor = "Doce e cítrica";
  int daysSinceHarvest = 31; //args
  bool isMature = funcIsMature(daysSinceHarvest);

  print(isMature);
  maturityStatus(fruit: name, days: daysSinceHarvest, color: "Azul");
  funcTimeToMature(daysSinceHarvest: daysSinceHarvest);
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

funcTimeToMature({required int daysSinceHarvest}) {
  int daysToMature = 30;
  if (daysSinceHarvest >= 30) return;
  int daysRemaining = daysToMature - daysSinceHarvest;
  daysRemaining != 1
      ? print("Faltam $daysRemaining dias para amadurecer")
      : print("Falta $daysRemaining dia para amadurecer");
}

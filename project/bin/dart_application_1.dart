// ignore_for_file: unused_local_variable

void main(List<String> arguments) {
  String name = "Laranja";
  double weight = 100.2;
  String color = "Verde e amarela";
  String flavor = "Doce e cítrica";
  int daysSinceHarvest = 31; //args
  bool isMature = funcIsMature(daysSinceHarvest);

  Fruta fruta01 = Fruta(name, weight, color, flavor, daysSinceHarvest);

  Fruta fruta02 = Fruta('Uva', 40, "Roxa", "Doce", 20);
  print(fruta01);
  print(fruta02);
}

class Fruta {
  String name;
  double weight;
  String color;
  String flavor;
  int daysSinceHarvest;
  bool? isMature;

  Fruta(this.name, this.weight, this.color, this.flavor, this.daysSinceHarvest,
      {this.isMature});
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

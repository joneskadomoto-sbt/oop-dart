// ignore_for_file: unused_local_variable

void main(List<String> arguments) {
  String name = "Laranja";
  double weight = 100.2;
  String color = "Verde e amarela";
  String flavor = "Doce e cítrica";
  int daysSinceHarvest = 31; //args
  bool isMature = funcIsMature(daysSinceHarvest);

  daysSinceHarvest >= 30 ? true : false;
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

class Food {
  String name;
  double weight;
  String color;

  Food(this.name, this.weight, this.color);

  void printFood() {
    print('Este(a) $name pesa $weight gramas e é $color');
  }
}

class Fruit extends Food {
  String flavor;
  int daysSinceHarvest;
  bool? isMature;

  Fruit(String name, double weight, String color, this.flavor,
      this.daysSinceHarvest,
      {this.isMature})
      : super(name, weight, color);

  methIsMature(int daysToMature) {
    isMature = daysSinceHarvest >= daysToMature;

    var isMatureConvert = isMature == true ? "Sim" : "Não";
    print("A sua $name foi colhida a $daysSinceHarvest"
        "e precisa de $daysToMature dias para poder comer."
        "Ela está madura ? $isMatureConvert");
  }

  void makeJuice() {
    print("Você fez um ótimo suco de $name");
  }
}

class Vegetables extends Food {
  bool isNeedToCook;

  Vegetables(String name, double weight, String color, this.isNeedToCook)
      : super(name, weight, color);

  void cook() {
    isNeedToCook
        ? print("O $name está cozinhando")
        : print("O $name está cozido");
  }
}

class Citrus {
  String name;
  double weight;
  String color;
  int daysSinceHarvest;
  bool isMature;
  double citricLevel;

  Citrus(this.name, this.weight, this.color, this.daysSinceHarvest,
      this.isMature, this.citricLevel);
}

class Nuts {
  String name;
  double weight;
  String color;
  int daysSinceHarvest;
  bool isMature;
  double oilPercentage;

  Nuts(this.name, this.weight, this.color, this.daysSinceHarvest, this.isMature,
      this.oilPercentage);
}

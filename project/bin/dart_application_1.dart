// ignore_for_file: unused_local_variable

void main(List<String> arguments) {
  String name = "Laranja";
  double weight = 100.2;
  String color = "Verde e amarela";
  String flavor = "Doce e cítrica";
  int daysSinceHarvest = 29;
  bool isMature = funcIsMature(daysSinceHarvest);

  print(isMature);
}

bool funcIsMature(int days) {
  return days >= 30 ? true : false;
}

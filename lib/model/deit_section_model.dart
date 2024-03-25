class DietSectionModel {
  String name;
  String iconPath;
  int amount;

  DietSectionModel(
      {required this.name, required this.iconPath, required this.amount});
  List<DietSectionModel> getDietSection() {
    List<DietSectionModel> dietSection = [];

    dietSection.add(
      DietSectionModel(
          name: "naflkjslgjme",
          iconPath: "iconPakjkfjdkfjkdjth",
          amount: 37654),
    );

    return dietSection;
  }
}

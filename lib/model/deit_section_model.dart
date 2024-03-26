class DietSectionModel {
  String name;
  String iconPath;
  String level;
  String duration;
  String calories;
  bool isViewSelected;

  DietSectionModel(
      {required this.name,
      required this.iconPath,
      required this.level,
      required this.duration,
      required this.calories,
      required this.isViewSelected});

  static List<DietSectionModel> getDietSection() {
    List<DietSectionModel> dietSection = [];

    dietSection.add(
      DietSectionModel(
          name: 'Honey',
          iconPath: './assets/icon/honey-pancakes.svg',
          level: 'Easy',
          duration: '30 minutes',
          calories: '200cal',
          isViewSelected: false),
    );

    dietSection.add(
      DietSectionModel(
          name: 'Honey',
          iconPath: './assets/icon/honey-pancakes.svg',
          level: 'Hard',
          duration: '30 minutes',
          calories: '200cal',
          isViewSelected: false),
    );
    dietSection.add(
      DietSectionModel(
          name: 'Honey',
          iconPath: './assets/icon/honey-pancakes.svg',
          level: 'Easy',
          duration: '30 minutes',
          calories: '200cal',
          isViewSelected: false),
    );
    dietSection.add(
      DietSectionModel(
          name: 'Expert',
          iconPath: './assets/icon/honey-pancakes.svg',
          level: 'Easy',
          duration: '30 minutes',
          calories: '200cal',
          isViewSelected: false),
    );

    return dietSection;
  }
}

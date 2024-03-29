class PopularModel {
  String name;
  String iconPath;
  String level;
  String duration;
  String calories;
  bool isViewSelected;

  PopularModel(
      {required this.name,
      required this.iconPath,
      required this.level,
      required this.duration,
      required this.calories,
      required this.isViewSelected});

  static List<PopularModel> getPopular() {
    List<PopularModel> popular = [];

    popular.add(
      PopularModel(
          name: 'Expert',
          iconPath: './assets/icon/canai-bread.svg',
          level: 'Easy',
          duration: '30min',
          calories: '200cal',
          isViewSelected: false),
    );

    popular.add(
      PopularModel(
          name: 'Honey',
          iconPath: './assets/icon/honey-pancakes.svg',
          level: 'Easy',
          duration: '30min',
          calories: '200cal',
          isViewSelected: false),
    );

    return popular;
  }
}

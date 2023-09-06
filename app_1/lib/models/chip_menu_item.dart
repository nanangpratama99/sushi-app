class ChipMenuModel {
  String title;
  String icon;

  ChipMenuModel({required this.title, required this.icon});
}

List<ChipMenuModel> chipMenuData = [
  ChipMenuModel(title: "Sushi", icon: 'assets/images/sushi.png'),
  ChipMenuModel(title: "Sashimi", icon: 'assets/images/sashimi.png'),
  ChipMenuModel(title: "Onigiri", icon: 'assets/images/onigiri.png'),
  ChipMenuModel(title: "Ramen", icon: 'assets/images/ramen.png'),
];

class SashimiItem {
  String title;
  String icon;
  String rating;

  SashimiItem({required this.title, required this.icon, required this.rating});
}

List<SashimiItem> sashimiItemData = [
  SashimiItem(
    title: "Sashimi",
    icon: 'assets/images/sashimi.png',
    rating: '3.5',
  ),
  SashimiItem(
    title: "Sashimi",
    icon: 'assets/images/sashimi.png',
    rating: '4.0',
  ),
  SashimiItem(
    title: "Sashimi",
    icon: 'assets/images/sashimi.png',
    rating: '3.0',
  ),
  SashimiItem(
    title: "Sashimi",
    icon: 'assets/images/sashimi.png',
    rating: '5.0',
  ),
];

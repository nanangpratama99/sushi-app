class SushiItem {
  String title;
  String icon;
  String rating;

  SushiItem({required this.title, required this.icon, required this.rating});
}

List<SushiItem> sushiItemData = [
  SushiItem(title: "Sushi", icon: 'assets/images/sushi.png', rating: '4.2'),
  SushiItem(title: "Sushi", icon: 'assets/images/sushi.png', rating: '2.5'),
  SushiItem(title: "Sushi", icon: 'assets/images/sushi-2.png', rating: '3.5'),
  SushiItem(title: "Sushi", icon: 'assets/images/sushi-3.png', rating: '5.0'),
];

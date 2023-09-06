class IngredientListModel {
  String name;
  String image;

  IngredientListModel({
    required this.name,
    required this.image,
  });
}

List<IngredientListModel> ingredientData = [
  IngredientListModel(name: 'Rice', image: 'assets/images/sushi-2.png'),
  IngredientListModel(name: 'Tuna', image: 'assets/images/sushi.png'),
  IngredientListModel(name: 'Onigiri', image: 'assets/images/sushi-3.png'),
  IngredientListModel(name: 'Onion', image: 'assets/images/sushi.png'),
];

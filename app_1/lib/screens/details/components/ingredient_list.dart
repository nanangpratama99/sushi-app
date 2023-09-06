import 'package:app_1/models/ingredient_list.dart';
import 'package:app_1/screens/details/components/body.dart';
import 'package:app_1/screens/details/components/ingredient_item.dart';
import 'package:flutter/material.dart';

class IngredientList extends StatefulWidget {
  const IngredientList({
    super.key,
  });

  @override
  State<IngredientList> createState() => _IngredientListState();
}

class _IngredientListState extends State<IngredientList> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.builder(
        itemCount: ingredientData.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return BuildIngredientList(
            onTap: () {
              setState(() {
                // Anda perlu mengatur selectedIndex di luar BuildIngredientList
                selectedIndex = index;
              });
              print(ingredientData[index]);
            },
            ingredientModal: ingredientData[index],
            // Tambahkan operasi ternary untuk mengatur warna latar belakang
            selectedIndex: selectedIndex == index,
          );
        },
      ),
    );
  }
}
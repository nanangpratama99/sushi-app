import 'package:app_1/models/ingredient_list.dart';
import 'package:flutter/material.dart';

class BuildIngredientList extends StatefulWidget {
  BuildIngredientList({
    super.key,
    required this.ingredientModal,
    required this.onTap,
    required this.selectedIndex,
  });

  final IngredientListModel ingredientModal;
  void Function()? onTap;
  bool selectedIndex;

  @override
  State<BuildIngredientList> createState() => _BuildIngredientListState();
}

class _BuildIngredientListState extends State<BuildIngredientList> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        margin: const EdgeInsets.only(right: 20),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: widget.selectedIndex
                ? const Color.fromARGB(255, 138, 60, 55)
                : Colors.black.withOpacity(0.1)),
        child: Row(
          children: [
            Image.asset(
              widget.ingredientModal.image,
              width: 20,
            ),
            const SizedBox(width: 10),
            Text(
              widget.ingredientModal.name,
              style: TextStyle(
                  color: widget.selectedIndex ? Colors.white : Colors.black),
            )
          ],
        ),
      ),
    );
  }
}
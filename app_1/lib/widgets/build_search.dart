import 'package:app_1/widgets/custom_widgets.dart';
import 'package:flutter/material.dart';

class SearchInput extends StatefulWidget {
  const SearchInput({super.key});

  @override
  State<SearchInput> createState() => _SearchInputState();
}

class _SearchInputState extends State<SearchInput> {
  CustomWidget customWidget = CustomWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20, left: 20, top: 30),
      child: TextFormField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white.withOpacity(0.2),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          border: customWidget.inputBorder,
          errorBorder: customWidget.inputBorder,
          enabledBorder: customWidget.inputBorder,
          focusedBorder: customWidget.inputBorder,
          hintText: 'Search here ...',
          suffixIcon: Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Image.asset(
              'assets/images/search.png',
              width: 20,
            ),
          ),
        ),
      ),
    );
  }
}

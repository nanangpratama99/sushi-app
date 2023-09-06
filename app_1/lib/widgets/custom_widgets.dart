import 'package:flutter/material.dart';

class CustomWidget {
  final OutlineInputBorder inputBorder = const OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.grey,
    ),
    borderRadius: BorderRadius.all(
      Radius.circular(15),
    ),
  );

  final BoxShadow boxShadow = BoxShadow(
    color: Colors.black.withOpacity(0.1),
    blurRadius: 5,
    spreadRadius: 2,
    offset: const Offset(0, 1),
  );
}

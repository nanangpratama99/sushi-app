import 'package:flutter/material.dart';


class buildButton extends StatelessWidget {
  const buildButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          const EdgeInsets.symmetric(horizontal: 25, vertical: 40),
      height: 70,
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: Colors.white.withOpacity(0.2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        onPressed: () {},
        child: const Text(
          "Get Started",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}

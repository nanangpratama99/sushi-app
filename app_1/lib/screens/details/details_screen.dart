import 'package:app_1/screens/details/components/body.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // backgroundColor: Colors.grey.shade200,
      backgroundColor: Color.fromARGB(255, 138, 60, 55),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      // backgroundColor: Colors.grey.shade200,
      backgroundColor: const Color.fromARGB(255, 138, 60, 55),
      elevation: 0,
      leading: const Icon(
        Icons.arrow_back_ios,
        color: Colors.white,
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 10.0),
          child: Image.asset(
            'assets/images/save-1.png',
            width: 30,
          ),
        )
      ],
    );
  }
}

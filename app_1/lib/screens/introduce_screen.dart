import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/build_slider.dart';

class IntroduceScreen extends StatelessWidget {
  const IntroduceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 138, 60, 55),
      body: Stack(
        alignment: Alignment.centerRight,
        children: [
          SafeArea(
            child: Column(
              children: [
                const SizedBox(height: 20),
                Text(
                  "Yoshinoya",
                  style:
                      GoogleFonts.notoSerif(color: Colors.white, fontSize: 40),
                ),
                const Spacer(flex: 1),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: Image.asset(
                    "assets/images/sushi-3.png",
                    width: 300,
                  ),
                ),
                const Spacer(),
                const buildSlider(),
              ],
            ),
          ),
          Positioned(
            right: 0,
            child: RotatedBox(
              quarterTurns: 1,
              child: Text(
                "すし, 寿司, 鮨, 鮓",
                style: GoogleFonts.notoSans(
                  color: Colors.white.withOpacity(0.7),
                  fontSize: 50,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:slide_action/slide_action.dart';

import '../screens/home/home_screen.dart';

class buildSlider extends StatefulWidget {
  const buildSlider({
    super.key,
  });

  @override
  State<buildSlider> createState() => _buildSliderState();
}

class _buildSliderState extends State<buildSlider> {
  bool thumbReachedEnd = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
      child: SlideAction(
        trackBuilder: (context, currentState) {
          // Kode untuk membangun track slider
          return AnimatedContainer(
            padding: const EdgeInsets.all(10),
            duration: const Duration(milliseconds: 500),
            height:
                thumbReachedEnd ? 30.0 : 4.0, // Resizing tinggi trackBuilder
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white.withOpacity(0.5),
            ),
            child: const Center(
              child: Text(
                "Slide to Act",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ), // Warna track sesuai keinginan Anda
          );
        },
        thumbBuilder: (context, currentState) {
          // Kode untuk membangun thumb slider
          return AnimatedContainer(
            margin: const EdgeInsets.all(5),
            duration: const Duration(milliseconds: 500),
            width: 40, // Atur lebar thumb sesuai kebutuhan Anda
            height: 40, // Atur tinggi thumb sesuai kebutuhan Anda
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white, // Warna thumb sesuai keinginan Anda
            ),
            child: Center(
              child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 500),
                child: thumbReachedEnd
                    ? const Icon(
                        Icons.check,
                        key: Key('check_icon_key'),
                        color: Colors
                            .black45, // Warna ikon tanda centang sesuai keinginan Anda
                        size:
                            24, // Ukuran ikon tanda centang sesuai kebutuhan Anda
                      )
                    : const Icon(
                        Icons.arrow_forward,
                        key: Key('arrow_icon_key'),
                        color: Colors
                            .black45, // Warna ikon panah sesuai keinginan Anda
                        size: 24, // Ukuran ikon panah sesuai kebutuhan Anda
                      ),
              ),
            ),
          );
        },
        action: () {
          setState(() {
            thumbReachedEnd = !thumbReachedEnd;
          });

          Future.delayed(const Duration(seconds: 1), () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const HomeScreen(),
              ),
            );
          });
        },
      ),
    );
  }
}

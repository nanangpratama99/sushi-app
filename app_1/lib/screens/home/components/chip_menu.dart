import 'package:flutter/material.dart';

import '../../../models/chip_menu_item.dart';

class BuildChipMenu extends StatefulWidget {
  const BuildChipMenu({
    super.key,
  });

  @override
  State<BuildChipMenu> createState() => _BuildChipMenuState();
}

int selectedChipIndex = 0;

class _BuildChipMenuState extends State<BuildChipMenu> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: chipMenuData.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedChipIndex = index;
                print(selectedChipIndex);
              });
            },
            child: Container(
              margin: const EdgeInsets.only(left: 20),
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              decoration: BoxDecoration(
                color: selectedChipIndex == index
                    ? const Color.fromARGB(255, 138, 60, 55).withOpacity(0.5)
                    : Colors.grey.withOpacity(0.2),
                borderRadius: BorderRadius.circular(18),
              ),
              child: Row(
                children: [
                  Image.asset(
                    chipMenuData[index].icon,
                    width: 40,
                  ),
                  const SizedBox(width: 10),
                  Text(
                    chipMenuData[index].title,
                    style: TextStyle(
                      color: selectedChipIndex == index
                          ? Colors.white
                          : Colors.black87,
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

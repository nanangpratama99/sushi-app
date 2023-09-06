import 'package:app_1/screens/home/components/chip_menu.dart';
import 'package:flutter/material.dart';

import '../../../models/sashimi_item.dart';
import '../../../models/sushi_item.dart';

class BuildCardMenu extends StatefulWidget {
  const BuildCardMenu({
    super.key,
  });

  @override
  State<BuildCardMenu> createState() => _BuildCardMenuState();
}

class _BuildCardMenuState extends State<BuildCardMenu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      padding: const EdgeInsets.all(20),
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: selectedChipIndex == 0
            ? sushiItemData.length
            : selectedChipIndex == 1
                ? sashimiItemData.length
                : sushiItemData.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              print(selectedChipIndex);
            },
            child: Container(
              margin: const EdgeInsets.only(left: 20),
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.4),
                borderRadius: BorderRadius.circular(18),
                // boxShadow: [CustomWidget().boxShadow],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    selectedChipIndex == 0
                        ? sushiItemData[index].icon
                        : sashimiItemData[index].icon,
                    width: 100,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        selectedChipIndex == 0
                            ? sushiItemData[index].title
                            : sashimiItemData[index].title,
                        style: const TextStyle(
                          color: Colors.black54,
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(width: 30),
                      Row(
                        children: [
                          const Icon(
                            Icons.star,
                            size: 20,
                            color: Colors.amber,
                          ),
                          Text(
                            selectedChipIndex == 0
                                ? sushiItemData[index].rating
                                : sashimiItemData[index].rating,
                            style: const TextStyle(
                              color: Colors.black54,
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      )
                    ],
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

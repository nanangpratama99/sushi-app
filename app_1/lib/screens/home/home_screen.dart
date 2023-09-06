import 'package:app_1/models/chip_menu_item.dart';
import 'package:app_1/models/sashimi_item.dart';
import 'package:flutter/material.dart';

import '../../models/menu_drawer.dart';
import '../../models/sushi_item.dart';
import '../../widgets/build_search.dart';
import '../../widgets/custom_widgets.dart';
import 'components/banner.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

int selectedChipIndex = 0;
int selectedMenuIndex = 0;

CustomWidget boxShadow = CustomWidget();
final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.grey.shade200,
      appBar: buildAppBar(),
      drawer: Drawer(
        shadowColor: Colors.transparent,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(45),
            bottomRight: Radius.circular(45),
          ),
        ),
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 138, 60, 55),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.3),
                        shape: BoxShape.circle,
                      ),
                      child: GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: const Icon(
                          Icons.arrow_back_rounded,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    const Text(
                      "Setting",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 30),
                // account
                const Row(
                  children: [
                    CircleAvatar(
                      radius: 37,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage('assets/images/3.jpeg'),
                      ),
                    ),
                    SizedBox(width: 20),
                    Text(
                      "Name",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),

                // divider
                const Divider(
                  color: Colors.white,
                  thickness: 3,
                  height: 50,
                  indent: 10,
                ),

                // list menu
                Expanded(
                  child: ListView.builder(
                    itemCount: menuData.length,
                    itemBuilder: (context, index) {
                      bool isSelected = (selectedMenuIndex == index);
                      return BuildListMenu(
                        icon: menuData[index].icon,
                        text: menuData[index].text,
                        isSelected: isSelected,
                        onTap: () {
                          setState(() {
                            selectedMenuIndex = index;
                          });
                        },
                      );
                    },
                  ),
                ),

                GestureDetector(
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 20),
                    padding: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.transparent,
                    ),
                    child: const ListTile(
                      leading: Icon(
                        Icons.logout_rounded,
                        color: Colors.white,
                        size: 35,
                      ),
                      title: Text(
                        "Logout",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // <----------------- Banner --------------->
            const BuildBanner(),
            const SizedBox(height: 30),

            // <----------------- Chip Menu --------------->
            SizedBox(
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
                      });
                    },
                    child: Container(
                      margin: const EdgeInsets.only(left: 20),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 5),
                      decoration: BoxDecoration(
                        color: selectedChipIndex == index
                            ? const Color.fromARGB(255, 138, 60, 55)
                                .withOpacity(0.5)
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
            ),

            // <-------------- Search Input -------------->
            const SearchInput(),
            const SizedBox(height: 20),

            // <-------------- Cards Menu -------------->
            buildTitle(selectedChipIndex == 0 ? 'Sushi' : 'Sashimi'),

            Container(
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
                    child: Container(
                      margin: const EdgeInsets.only(left: 20),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 25, vertical: 15),
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
            ),

            const SizedBox(height: 20),

            // <-------------- Cards Menu -------------->
            buildTitle(selectedChipIndex == 0 ? 'List Sushi' : 'List Sashimi'),
            ListView.builder(
              shrinkWrap: true,
              itemCount: sushiItemData.length,
              itemBuilder: (context, index) {
                return Container(
                  margin:
                      const EdgeInsets.only(bottom: 20, left: 20, right: 20),
                  width: MediaQuery.of(context).size.width,
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: ListTile(
                    leading: Image.asset(sushiItemData[index].icon),
                    title: Text(sushiItemData[index].title),
                    subtitle: Row(
                      children: [
                        const Icon(
                          Icons.star_border,
                          size: 15,
                        ),
                        const SizedBox(width: 5),
                        Text(sushiItemData[index].rating),
                      ],
                    ),
                    trailing: const Icon(
                      Icons.add_circle_outline,
                      size: 30,
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }

  Widget buildTitle(String text) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, bottom: 20),
      child: Text(
        text,
        style: const TextStyle(fontSize: 25),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.grey.shade200,
      automaticallyImplyLeading: false,
      elevation: 0,
      title: const Text(
        'Home',
        style: TextStyle(color: Colors.black54, fontSize: 20),
      ),
      leading: IconButton(
        onPressed: () {
          _scaffoldKey.currentState?.openDrawer();
        },
        icon: const Icon(
          Icons.menu,
          size: 30,
          color: Colors.black54,
        ),
      ),
      actions: const [
        Padding(
          padding: EdgeInsets.only(right: 20.0),
          child: Row(
            children: [
              Icon(
                Icons.tips_and_updates_outlined,
                color: Colors.black45,
                size: 30,
              )
            ],
          ),
        )
      ],
    );
  }
}

class BuildListMenu extends StatefulWidget {
  VoidCallback onTap;
  final IconData icon;
  final String text;
  bool isSelected;
  BuildListMenu({
    super.key,
    required this.icon,
    required this.text,
    required this.isSelected,
    required this.onTap,
  });

  @override
  State<BuildListMenu> createState() => _BuildListMenuState();
}

class _BuildListMenuState extends State<BuildListMenu> {
  int selectedMenuIndex = 0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 20),
        padding: const EdgeInsets.all(3),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: widget.isSelected
              ? Colors.white.withOpacity(0.2)
              : Colors.transparent,
        ),
        child: ListTile(
          leading: Icon(
            widget.icon,
            color: Colors.white,
            size: 35,
          ),
          title: Text(
            widget.text,
            style: const TextStyle(color: Colors.white, fontSize: 20),
          ),
          trailing: const Icon(
            Icons.arrow_forward_ios_rounded,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

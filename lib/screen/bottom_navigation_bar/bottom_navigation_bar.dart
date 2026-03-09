import 'package:flutter/material.dart';
import 'package:project_6/core/conestate.dart';
import 'package:project_6/screen/bottom_navigation_bar/home.dart';
import 'package:project_6/screen/bottom_navigation_bar/widget/drawer/drawer.dart';

class NavigationBarAppSimple extends StatefulWidget {
  @override
  State<NavigationBarAppSimple> createState() => _NavigationBarAppSimpleState();
}

class _NavigationBarAppSimpleState extends State<NavigationBarAppSimple> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  int selectedIndex = 0;
  DrawerType? currentDrawer;

  late final List<Widget> screens;

  @override
  void initState() {
    super.initState();
    screens = [
      Home(openDrawer: openDrawer),
      Home(openDrawer: openDrawer), // ✅ هنا صح

    ];
  }

  void openDrawer(DrawerType type) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        currentDrawer = type;
      });
      scaffoldKey.currentState?.openEndDrawer();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      key: scaffoldKey,
      endDrawer: Drawer(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(120),
            bottomLeft: Radius.circular(120),
          ),
        ),
        backgroundColor: sacandryColor,
        child: buildDrawerContent(currentDrawer),
      ),
      body: screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: sacandryColor,

        currentIndex: selectedIndex,
        onTap: (index) => setState(() => selectedIndex = index),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
      ),
    );
  }


}

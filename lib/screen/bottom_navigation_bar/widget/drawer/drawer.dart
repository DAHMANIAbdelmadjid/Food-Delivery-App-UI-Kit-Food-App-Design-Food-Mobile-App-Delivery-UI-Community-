import 'package:flutter/material.dart';
import 'package:project_6/core/conestate.dart';
import 'package:project_6/screen/bottom_navigation_bar/widget/drawer/drawer_cart.dart';
import 'package:project_6/screen/bottom_navigation_bar/widget/drawer/drawer_notification.dart';
import 'package:project_6/screen/bottom_navigation_bar/widget/drawer/drawer_profile.dart';

Widget buildDrawerContent(DrawerType? type) {
  print(' راني هنا');
  switch (type) {
    case DrawerType.cart:
      return DrawerCart();
    case DrawerType.notification:
      return DrawerNotification();
    case DrawerType.profile:
      return DrawerProfile();
    default:
      return const SizedBox();
  }
}

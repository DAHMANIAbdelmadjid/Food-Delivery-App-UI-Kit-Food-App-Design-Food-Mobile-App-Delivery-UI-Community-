import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project_6/core/conestate.dart';

class DrawerNotification extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        children: [
          SizedBox(height: 40),

          SizedBox(
            width: double.infinity,
            child: Center(
              child: Row(
                mainAxisSize: MainAxisSize.min,

                children: [
                  SvgPicture.asset(
                    'assets/icon/Vector (2).svg',
                    color: white,
                    width: 40,
                    height: 40,
                  ),

                  SizedBox(width: 20),
                  Text(
                    'Notifications',
                    style: TextStyle(color: yellow, fontSize: 25),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 40),

          Container(width: double.infinity, height: 1, color: white),
          SizedBox(height: 40),

          DrawerIcon(
            image: 'assets/icon/Cookware.svg',
            name: "We have added \na product you \nmight like.",
          ),
          DrawerIcon(
            image: 'assets/icon/Heart Icon.svg',
            name: 'One of your \nfavorite is on \npromotion.',
          ),
          DrawerIcon(
            image: 'assets/icon/Pin Location Icon.svg',
            name: 'Your order has \nbeen delivered',
          ),
          DrawerIcon(
            image: 'assets/icon/Card icon.svg',
            name: 'The delivery is \non his way',
          ),

          SizedBox(height: 40),
        ],
      ),
    );
  }
}

class DrawerIcon extends StatelessWidget {
  final String image;
  final String name;

  const DrawerIcon({required this.image, required this.name});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10),

        Row(
          children: [
            Container(
              padding: const EdgeInsets.all(8.0),

              width: 40,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                shape: BoxShape.rectangle,
                color: white,
              ),
              child: SvgPicture.asset(image),
            ),
            SizedBox(width: 20),
            Text(name, style: TextStyle(color: yellow)),
          ],
        ),
        SizedBox(height: 10),

        Container(width: double.infinity, height: 1, color: white),
      ],
    );
  }
}

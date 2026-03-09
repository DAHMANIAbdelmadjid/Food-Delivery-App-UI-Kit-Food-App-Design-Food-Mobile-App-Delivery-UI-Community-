import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project_6/core/conestate.dart';

class DrawerProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        children: [
          SizedBox(height: 40),

          Row(
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  child: Image.asset(
                    'assets/image/view-delicious-dish-food.jpg',
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(width: 20),
              Column(
                children: [
                  Text(
                    'John Smith',
                    style: TextStyle(color: yellow, fontSize: 30),
                  ),
                  Text('Loremipsum@email.com', style: TextStyle(color: yellow)),
                ],
              ),
            ],
          ),
          SizedBox(height: 40),

          DrawerIcon(image: 'assets/icon/Write icon.svg', name: 'My Orders'),
          DrawerIcon(image: 'assets/icon/User Icon.svg', name: 'My Profile'),
          DrawerIcon(
            image: 'assets/icon/Pin Location Icon.svg',
            name: 'Delivery Address',
          ),
          DrawerIcon(
            image: 'assets/icon/Card icon.svg',
            name: 'Payment Methods',
          ),
          DrawerIcon(image: 'assets/icon/Call On.svg', name: 'Contact Us'),
          DrawerIcon(image: 'assets/icon/Write icon.svg', name: 'Help & FAQs'),
          DrawerIcon(image: 'assets/icon/Settings Icon.svg', name: 'Settings'),
          SizedBox(height: 40),

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
                child: SvgPicture.asset('assets/icon/Log Out icon.svg'),
              ),
              SizedBox(width: 20),
              Text('Log Out', style: TextStyle(color: yellow, fontSize: 20)),
            ],
          ),
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
            Text(name, style: TextStyle(color: yellow, fontSize: 20)),
            
          ],
        ),
        SizedBox(height: 10),

        Container(width: double.infinity, height: 1, color: white),
      ],
    );
  }
}

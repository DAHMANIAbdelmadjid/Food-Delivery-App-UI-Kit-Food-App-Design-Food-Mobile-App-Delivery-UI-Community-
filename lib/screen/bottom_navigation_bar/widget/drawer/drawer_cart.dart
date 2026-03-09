import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project_6/core/conestate.dart';

class DrawerCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(children: []),
        Expanded(
          child: ListView.builder(
            itemCount: 3,
            itemBuilder: (BuildContext context, int index) {},
          ),
        ),
        Row(children: []),
      ],
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
        Row(
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: white,
              ),
              child: SvgPicture.asset(image),
            ),
            SizedBox(width:50),
            Text(name,style:TextStyle(color:yellow,fontSize:20,)),
          ],
        ),
        Container()
      ],
    );
  }
}

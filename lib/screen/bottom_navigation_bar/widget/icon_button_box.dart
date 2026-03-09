import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project_6/core/conestate.dart';

class IconButtonBox extends StatelessWidget {
  final String asset;
  final VoidCallback openDrawer;
  const IconButtonBox({
    super.key,
    required this.asset,
    required this.openDrawer,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
          onTap: () {
            openDrawer();
          },
          child: SvgPicture.asset(asset, width: 26, height: 26),
        ),
      ),
    );
  }
}

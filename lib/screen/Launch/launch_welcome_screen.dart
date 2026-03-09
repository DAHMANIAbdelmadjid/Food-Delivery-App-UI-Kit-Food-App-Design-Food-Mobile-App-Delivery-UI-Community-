import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:project_6/core/conestate.dart';

class LaunchWelcomeScreen extends StatelessWidget {
  const LaunchWelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: sacandryColor,
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              SizedBox(
                width: 200,
                height: 200,
                child: SvgPicture.asset('assets/icon/Group 271.svg'),
              ),
              SizedBox(height: 20),

              Text(
                textAlign: TextAlign.center,
                style: TextStyle(color: white),
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod.',
              ),
              SizedBox(height: 20),

              SizedBox(
                width: 200,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: yellow),
                  onPressed: () {
                    context.go('/on_boarding');
                  },
                  child: Text(
                    'OnBoarding',
                    style: TextStyle(color: sacandryColor, fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

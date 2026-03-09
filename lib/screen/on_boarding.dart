import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:project_6/core/conestate.dart';
import 'package:project_6/model/onboarding.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoarding extends StatefulWidget {
  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    void nextPage() {
      setState(() {
        if (currentIndex < onboardingPages.length - 1) {
          currentIndex++;
        } else {
          context.go('/logIn');
        }
      });
    }

    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              onboardingPages[currentIndex].image,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                color: white,
              ),
              width: size.width,
              height: 300,
              child: Column(
                children: [
                  SizedBox(height: 20),
                  SvgPicture.asset(
                    onboardingPages[currentIndex].icon,
                    width: 50,
                    height: 50,
                  ),
                  SizedBox(height: 20),

                  Text(
                    onboardingPages[currentIndex].title,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: sacandryColor,
                    ),
                  ),
                  Text(
                    textAlign: TextAlign.center,

                    'Lorem ipsum dolor sit amet, conse ctetur\nadipiscing elit, sed do eiusmod tempor\nincididunt ut labore et dolore magna.',
                  ),
                  SizedBox(height: 20),

                  AnimatedSmoothIndicator(
                    activeIndex: currentIndex,
                    count: 3,
                    effect: WormEffect(
                      dotHeight: 4,
                      dotWidth: 20,
                      activeDotColor: sacandryColor,
                      dotColor: yellow,
                    ),
                  ),
                  SizedBox(height: 20),

                  SizedBox(
                    width: 133,
                    height: 36,
                    child: ElevatedButton(
                      onPressed: nextPage,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: sacandryColor,
                      ),

                      child: Text(
                        onboardingPages[currentIndex].next,
                        style: TextStyle(color: white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

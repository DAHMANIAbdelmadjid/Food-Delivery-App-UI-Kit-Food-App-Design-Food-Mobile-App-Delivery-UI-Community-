import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class LaunchFirstScreen extends StatefulWidget {
  const LaunchFirstScreen({super.key});

  @override
  State<LaunchFirstScreen> createState() => _LaunchFirstScreenState();
}

class _LaunchFirstScreenState extends State<LaunchFirstScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 2), () {
      context.go('/launchWelcomeScreen');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          child: SvgPicture.asset('assets/icon/Group 270.svg'),
        ),
      ),
    );
  }
}

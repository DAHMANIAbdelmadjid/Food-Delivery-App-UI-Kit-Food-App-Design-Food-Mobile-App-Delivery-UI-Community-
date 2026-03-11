import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_6/core/conestate.dart';
import 'package:project_6/router/router.dart';
import 'package:project_6/screen/search/search_drinks.dart';
import 'package:project_6/screen/search/search_snacks.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp
    .router
    (
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme(
          brightness: Brightness.light,
          primary: primaryColor,
          onPrimary: fontColor,
          secondary: sacandryColor,
          onSecondary: fontColorSacandry,
          surface: orange,
          onSurface: fontColor,
          error: Colors.red,
          onError: fontColorSacandry,
        ),
      ),
      routerConfig: goRouter,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:maqraa/color.dart';
import 'home.dart';

Future<void> _setupSystemChrome() async {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: AppColors.defaultColor,
    statusBarColor: AppColors.defaultColor,
  ));

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await _setupSystemChrome();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: AppColors.defaultColor,
        accentColor: AppColors.defaultColor,
      ),
      home: HomeView(),
    );
  }
}

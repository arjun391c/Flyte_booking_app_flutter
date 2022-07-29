import 'package:flutter/material.dart';
import 'package:flyte/utils/app_styles.dart';
import 'package:flyte/widgets/layouts/bottom_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flyte',
      theme: ThemeData(primaryColor: primary),
      home: const BottomBar(),
    );
  }
}

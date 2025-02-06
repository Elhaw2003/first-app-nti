import 'package:ffffiff/features/frist_screen/view/main_widget_screen.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(const NtiApp());
}
class NtiApp extends StatelessWidget {
  const NtiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MainWidgetScreen(),
      ),
    );
  }
}

import 'package:elearningui/theme/colors.dart';
import 'package:elearningui/widgets/appbars.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      // extendBodyBehindAppBar: false,
      appBar: getAppbar(),
    );
  }
}

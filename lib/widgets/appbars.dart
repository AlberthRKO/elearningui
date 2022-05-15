import 'package:elearningui/theme/colors.dart';
// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

PreferredSize getAppbar() {
  return PreferredSize(
    preferredSize: Size.fromHeight(0),
    child: AppBar(
      elevation: 0,
      backgroundColor: background,
      // brightness: Brightness.dark,
    ),
  );
}

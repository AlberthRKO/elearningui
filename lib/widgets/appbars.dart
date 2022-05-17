// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

PreferredSize getAppbar(fondo) {
  return PreferredSize(
    preferredSize: Size.fromHeight(0),
    child: AppBar(
      elevation: 0,
      backgroundColor: fondo,
      // brightness: Brightness.dark,
    ),
  );
}

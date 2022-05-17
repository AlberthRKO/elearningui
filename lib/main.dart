// import 'package:device_preview/device_preview.dart';
import 'package:elearningui/app_root.dart';
// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'WorkSans',
      ),
      home: const RootApp(),
    );
  }
}

// * Device Preview
/* void main() => runApp(
      DevicePreview(
        builder: (context) => MyApp(),
        enabled: !kReleaseMode,
      ),
    );

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData(
        fontFamily: 'WorkSans',
      ),
      home: const RootApp(),
    );
  }
} */

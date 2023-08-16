import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../utils/color_utils.dart';
import 'pages/color_selection_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // vamos a usar GetMaterialApp para pdoer usar un diálogo sin context
    return GetMaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: ColorUtils.CreateMaterialColor('5F7161'),
        ),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const ColorSelectionPage(),
    );
  }
}

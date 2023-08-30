import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart';

import '../../utils/color_utils.dart';
import '../widgets/color_palette.dart';

class ColorSelectionPage extends StatelessWidget {
  const ColorSelectionPage({Key? key}) : super(key: key);

  void showDialog() {
    Get.dialog(const AlertDialog(
      title: Text('Flutter'),
      content: Text('Dialog'),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Color palette app'),
        actions: [
          IconButton(
            onPressed: showDialog,
            icon: const Icon(Icons.info_outline),
          )
        ],
      ),
      // https://colorhunt.co/
      body: Center(
        child: SingleChildScrollView(
          child: Column(children: [
            ColorPalette(
              baseColor: "FF0000",
              callback: showColor,
            ),
            ColorPalette(
              baseColor: "00FF00",
              callback: showColor,
            ),
          ]),
        ),
      ),
    );
  }

  // está es la función que será llamada con cada click a un ColorPalette
  void showColor(String value) {
    Clipboard.setData(ClipboardData(text: value));
    Get.snackbar(
      'Color palette',
      'Valor copiado: $value',
      backgroundColor: ColorUtils.FromHex(value),
      snackPosition: SnackPosition.BOTTOM,
    );
  }
}

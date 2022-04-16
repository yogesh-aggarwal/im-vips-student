import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class ChilloutPage extends StatelessWidget {
  const ChilloutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return [
      "Chillout".text.make(),
    ].vStack();
  }
}

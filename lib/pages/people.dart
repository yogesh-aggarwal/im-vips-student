import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class PeoplePage extends StatelessWidget {
  const PeoplePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return [
      "People".text.make(),
    ].vStack();
  }
}

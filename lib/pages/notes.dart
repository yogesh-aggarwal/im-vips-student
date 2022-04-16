import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class NotesPage extends StatelessWidget {
  const NotesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return [
      "Notes".text.make(),
    ].vStack();
  }
}

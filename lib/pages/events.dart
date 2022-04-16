import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class EventsPage extends StatelessWidget {
  const EventsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return [
      "Events".text.make(),
    ].vStack();
  }
}

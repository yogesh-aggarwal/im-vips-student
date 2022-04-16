import 'package:flutter/material.dart';
import 'package:im_vips_student/pages/chillout.dart';
import 'package:im_vips_student/pages/events.dart';
import 'package:im_vips_student/pages/notes.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:im_vips_student/core/routes.dart';

import 'package:im_vips_student/widgets/appbar.dart';
import 'package:im_vips_student/widgets/bottombar.dart';

import 'package:im_vips_student/pages/home.dart';
import 'package:im_vips_student/pages/people.dart';

class RootPage extends StatelessWidget {
  const RootPage({Key? key}) : super(key: key);

  Widget _buildBody(BuildContext context) {
    VxState.watch(context, on: [RouteTo]);

    switch (VxState.store?.currentRoute) {
      case Routes.home:
        return HomePage();
      case Routes.notes:
        return NotesPage();
      case Routes.events:
        return EventsPage();
      case Routes.chillout:
        return ChilloutPage();
      case Routes.people:
        return PeoplePage();
      default:
        return HomePage();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: IMVSAppBar(context),
      bottomNavigationBar: IMVSBottomAppBar(context),
      body: [
        [_buildBody(context)]
            .vStack(crossAlignment: CrossAxisAlignment.start)
            .px16()
            .expand(),
      ].hStack().py16().scrollVertical(),
    );
  }
}

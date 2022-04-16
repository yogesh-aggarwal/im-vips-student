import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:im_vips_student/core/routes.dart';

import 'package:im_vips_student/widgets/appbar.dart';
import 'package:im_vips_student/widgets/bottombar.dart';

import 'package:im_vips_student/pages/home.dart';
import 'package:im_vips_student/pages/settings.dart';

class RootPage extends StatelessWidget {
  const RootPage({Key? key}) : super(key: key);

  Widget _buildBody(BuildContext context) {
    VxState.watch(context, on: [RouteTo]);

    switch (VxState.store?.currentRoute) {
      case "/":
        return HomePage();
      case "/settings":
        return SettingsPage();
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

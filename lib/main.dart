import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:im_vips_student/widgets/root.dart';
import 'package:im_vips_student/core/theme.dart';
import 'package:im_vips_student/core/store.dart';

void main() {
  runApp(VxState(
    store: GStore(),
    child: IMVipsStudent(),
  ));
}

class ScrollBehaviorModified extends ScrollBehavior {
  const ScrollBehaviorModified();
  @override
  ScrollPhysics getScrollPhysics(BuildContext context) {
    switch (getPlatform(context)) {
      case TargetPlatform.iOS:
      case TargetPlatform.macOS:
      case TargetPlatform.android:
        return BouncingScrollPhysics();
      case TargetPlatform.fuchsia:
      case TargetPlatform.linux:
      case TargetPlatform.windows:
        return ClampingScrollPhysics();
    }
  }
}

class IMVipsStudent extends StatelessWidget {
  const IMVipsStudent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: Themes.lightTheme,
      darkTheme: Themes.darkTheme,
      home: RootPage(),
      builder: (context, widget) {
        return ScrollConfiguration(
          behavior: ScrollBehaviorModified(),
          child: widget ?? Container(),
        );
      },
    );
  }
}

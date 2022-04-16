import 'package:velocity_x/velocity_x.dart';

import 'package:im_vips_student/core/store.dart';

class Routes {
  static const home = "/";
  static const notes = "/notes";
  static const events = "/events";
  static const chillout = "/chillout";
  static const people = "/people";
}

class RouteTo extends VxMutation<GStore> {
  final String to;
  RouteTo({
    required this.to,
  });

  @override
  perform() {
    VxState.store?.currentRoute = to;
  }
}

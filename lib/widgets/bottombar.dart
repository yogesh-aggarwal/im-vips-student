import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:im_vips_student/core/routes.dart';
import 'package:im_vips_student/core/tools.dart';

class BottomActionWidget extends StatelessWidget {
  final IconData icon;
  final String routeTo;

  const BottomActionWidget({
    Key? key,
    required this.icon,
    required this.routeTo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => RouteTo(to: routeTo),
      icon: Icon(icon, size: 22),
    );
  }
}

// ignore: non_constant_identifier_names
PreferredSize IMVSBottomAppBar(BuildContext context) {
  const double height = 60.0;

  return PreferredSize(
    preferredSize: Size.fromHeight(height),
    child: SizedBox(
      height: height,
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              color: isDarkMode(context)
                  ? Colors.grey.shade800
                  : Colors.grey.shade200,
            ),
          ),
        ),
        child: [
          BottomActionWidget(
            routeTo: Routes.home,
            icon: LineAwesomeIcons.home,
          ),
          BottomActionWidget(
            routeTo: Routes.notes,
            icon: LineAwesomeIcons.book,
          ),
          BottomActionWidget(
            routeTo: Routes.events,
            icon: LineAwesomeIcons.calendar,
          ),
          BottomActionWidget(
            routeTo: Routes.chillout,
            icon: LineAwesomeIcons.glass_cheers,
          ),
          BottomActionWidget(
            routeTo: Routes.people,
            icon: LineAwesomeIcons.user_friends,
          ),
        ].hStack(alignment: MainAxisAlignment.spaceBetween).px16(),
      ),
    ),
  );
}

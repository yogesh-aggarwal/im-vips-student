import 'package:flutter/material.dart';
import 'package:im_vips_student/core/routes.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:im_vips_student/core/tools.dart';

// ignore: non_constant_identifier_names
PreferredSize IMVSBottomAppBar(BuildContext context) {
  const double height = 65.0;

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
          IconButton(
            onPressed: () {
              RouteTo(to: "/");
            },
            icon: Icon(LineAwesomeIcons.home, size: 24),
          ),
          IconButton(
            onPressed: () {
              RouteTo(to: "/notes");
            },
            icon: Icon(LineAwesomeIcons.book, size: 24),
          ),
          IconButton(
            onPressed: () {
              RouteTo(to: "/people");
            },
            icon: Icon(LineAwesomeIcons.user_friends, size: 24),
          ),
          IconButton(
            onPressed: () {
              RouteTo(to: "/chillout");
            },
            icon: Icon(LineAwesomeIcons.glass_cheers, size: 24),
          ),
          IconButton(
            onPressed: () {
              RouteTo(to: "/events");
            },
            icon: Icon(LineAwesomeIcons.calendar, size: 24),
          ),
          IconButton(
            onPressed: () {
              RouteTo(to: "/settings");
            },
            icon: Icon(LineAwesomeIcons.cog, size: 24),
          ),
        ].hStack(alignment: MainAxisAlignment.spaceBetween).px16(),
      ),
    ),
  );
}

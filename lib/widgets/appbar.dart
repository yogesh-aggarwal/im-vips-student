import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:im_vips_student/core/tools.dart';

// ignore: non_constant_identifier_names
PreferredSize IMVSAppBar(BuildContext context) {
  const double height = 60.0;

  return PreferredSize(
    preferredSize: Size.fromHeight(height),
    child: SizedBox(
      height: height,
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: isDarkMode(context)
                  ? Colors.grey.shade800
                  : Colors.grey.shade200,
            ),
          ),
        ),
        child: [
          "IMVS".text.size(18).bold.make(),
        ].hStack(alignment: MainAxisAlignment.center).px16(),
      ),
    ).pOnly(top: MediaQuery.of(context).padding.top),
  );
}

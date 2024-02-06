import 'dart:developer';

import 'package:admin_dashboard/utils/size_config.dart';
import 'package:flutter/material.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout(
      {super.key,
      required this.mobileLayout,
      required this.tabLayout,
      required this.deskTopLayout});
  final WidgetBuilder mobileLayout, tabLayout, deskTopLayout;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      log(constraints.maxWidth.toString());
      if (constraints.maxWidth < SizeConfig.tablet) {
        return mobileLayout(context);
      } else if (constraints.maxWidth < SizeConfig.desktop) {
        return tabLayout(context);
      } else {
        return deskTopLayout(context);
      }
    });
  }
}

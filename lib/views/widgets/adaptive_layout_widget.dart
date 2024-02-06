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
      if (constraints.maxWidth < 850) {
        return mobileLayout(context);
      } else if (constraints.maxWidth < 1000) {
        return tabLayout(context);
      } else {
        return deskTopLayout(context);
      }
    });
  }
}

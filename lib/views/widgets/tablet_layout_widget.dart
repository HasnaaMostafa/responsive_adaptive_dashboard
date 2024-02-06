import 'package:admin_dashboard/views/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';

import 'mobile_layout.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
        SizedBox(
          width: 20,
        ),
        Expanded(flex: 3, child: MobileLayout()),
        SizedBox(
          width: 20,
        ),
      ],
    );
  }
}

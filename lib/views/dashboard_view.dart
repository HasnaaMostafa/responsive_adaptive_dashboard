import 'package:admin_dashboard/utils/size_config.dart';
import 'package:admin_dashboard/views/widgets/adaptive_layout_widget.dart';
import 'package:admin_dashboard/views/widgets/custom_drawer.dart';
import 'package:admin_dashboard/views/widgets/desktop_layout_widget.dart';
import 'package:admin_dashboard/views/widgets/mobile_layout.dart';
import 'package:admin_dashboard/views/widgets/tablet_layout_widget.dart';
import 'package:flutter/material.dart';

class DashBoardView extends StatefulWidget {
  const DashBoardView({super.key});

  @override
  State<DashBoardView> createState() => _DashBoardViewState();
}

class _DashBoardViewState extends State<DashBoardView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: MediaQuery.sizeOf(context).width < SizeConfig.tablet
          ? const CustomDrawer()
          : null,
      appBar: MediaQuery.sizeOf(context).width < SizeConfig.tablet
          ? AppBar(
              backgroundColor: const Color(0xff4EB7F2),
              elevation: 0,
              leading: IconButton(
                onPressed: () {
                  scaffoldKey.currentState!.openDrawer();
                },
                icon: const Icon(Icons.menu),
              ))
          : null,
      body: AdaptiveLayout(
          mobileLayout: (context) => const MobileLayout(),
          tabLayout: (context) => const TabletLayout(),
          deskTopLayout: (context) => const DeskTopLayout()),
    );
  }
}

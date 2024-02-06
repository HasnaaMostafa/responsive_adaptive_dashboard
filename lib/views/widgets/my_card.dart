import 'package:admin_dashboard/utils/app_styles.dart';
import 'package:admin_dashboard/views/widgets/page_view_card.dart';
import 'package:flutter/material.dart';

import 'dots_indicator.dart';

class MyCard extends StatefulWidget {
  const MyCard({super.key});

  @override
  State<MyCard> createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  late PageController pageController;
  int currentPageIndex = 0;

  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      currentPageIndex = pageController.page!.round();
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "My card",
          style: AppStyles.styleSemiBold20,
        ),
        const SizedBox(
          height: 12,
        ),
        PageViewCard(pageController: pageController),
        const SizedBox(
          height: 8,
        ),
        DotsIndicator(
          currentPageIndex: currentPageIndex,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 3.0),
          child: Divider(),
        )
      ],
    );
  }
}

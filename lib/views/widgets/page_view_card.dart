import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';

import 'custom_card.dart';

class PageViewCard extends StatelessWidget {
  const PageViewCard(
      {super.key, required this.pageController, required this.isDesktop});

  final bool isDesktop;

  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(
        controller: pageController,
        scrollDirection: Axis.horizontal,
        children: List.generate(
            3,
            (index) => CustomCard(
                  isDesktop: isDesktop,
                )));
  }
}

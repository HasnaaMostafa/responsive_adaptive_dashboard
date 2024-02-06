import 'package:admin_dashboard/views/widgets/Income_header.dart';
import 'package:admin_dashboard/views/widgets/custom_background_container.dart';
import 'package:flutter/material.dart';

import 'income_chart.dart';
import 'income_chart_details_list_view.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key, required this.isDesktop});

  final bool isDesktop;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: isDesktop
          ? const EdgeInsets.only(left: 25.0, right: 25, top: 8)
          : EdgeInsets.zero,
      child: CustomBackgroundContainer(
        padding: 14,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const IncomeHeader(),
            isDesktop
                ? const Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                            child: Align(
                          alignment: Alignment.centerLeft,
                          child: IncomeChart(),
                        )),
                        Expanded(child: IncomeChartDetailsListView()),
                      ],
                    ),
                  )
                : const Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          child: Align(
                        alignment: Alignment.centerLeft,
                        child: IncomeChart(),
                      )),
                      Expanded(child: IncomeChartDetailsListView()),
                    ],
                  ),
          ],
        ),
      ),
    );
  }
}

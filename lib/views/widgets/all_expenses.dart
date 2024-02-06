import 'package:admin_dashboard/views/widgets/all_expenses_item_list_view.dart';
import 'package:flutter/material.dart';

import 'all_expenses_header.dart';
import 'custom_background_container.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      padding: 14,
      child: Column(
        children: [
          AllExpensesHeader(),
          AllExpensesItemListView(),
        ],
      ),
    );
  }
}

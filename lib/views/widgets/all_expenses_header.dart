import 'package:admin_dashboard/views/widgets/range_options.dart';
import 'package:flutter/material.dart';

import '../../utils/app_styles.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 8),
      child: Row(
        children: [
          Text(
            "All Expenses",
            style: AppStyles.styleSemiBold16(context),
          ),
          const Spacer(),
          const RangeOptions()
        ],
      ),
    );
  }
}

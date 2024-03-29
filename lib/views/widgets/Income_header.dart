import 'package:admin_dashboard/views/widgets/range_options.dart';
import 'package:flutter/material.dart';

import '../../utils/app_styles.dart';

class IncomeHeader extends StatelessWidget {
  const IncomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Income",
          style: AppStyles.styleSemiBold16(context),
        ),
        const RangeOptions()
      ],
    );
  }
}

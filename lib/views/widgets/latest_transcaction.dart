import 'package:admin_dashboard/views/widgets/latest_transcation_list_view.dart';
import 'package:flutter/material.dart';

import '../../utils/app_styles.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Latest Transaction",
          textAlign: TextAlign.start,
          style: AppStyles.styleMedium12(context),
        ),
        const SizedBox(
          height: 8,
        ),
        const LatestTransactionListView()
      ],
    );
  }
}

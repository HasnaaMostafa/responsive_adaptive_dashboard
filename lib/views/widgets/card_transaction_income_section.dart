import 'package:flutter/material.dart';

import 'card_and_transaction_history.dart';
import 'income_section.dart';

class CardTransactionIncomeSection extends StatelessWidget {
  const CardTransactionIncomeSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CardAndTransactionHistorySection(
          isDesktop: true,
        ),
        Expanded(
            child: IncomeSection(
          isDesktop: true,
        )),
      ],
    );
  }
}

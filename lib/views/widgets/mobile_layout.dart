import 'package:flutter/material.dart';

import 'all_expenses_and_quick_invoice_section.dart';
import 'card_and_transaction_history.dart';
import 'income_section.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpensesAndQuickInvoiceSection(
            isDesktop: false,
          ),
          Padding(
            padding: EdgeInsets.only(top: 8.0, bottom: 8),
            child: CardAndTransactionHistorySection(isDesktop: false),
          ),
          IncomeSection(
            isDesktop: false,
          ),
        ],
      ),
    );
  }
}

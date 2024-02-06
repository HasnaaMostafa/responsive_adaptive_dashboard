import 'package:admin_dashboard/views/widgets/quick_invoice.dart';
import 'package:flutter/material.dart';

import 'all_expenses.dart';

class AllExpensesAndQuickInvoiceSection extends StatelessWidget {
  const AllExpensesAndQuickInvoiceSection({
    super.key,
    required this.isDesktop,
  });

  final bool isDesktop;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const AllExpenses(),
        const SizedBox(
          height: 15,
        ),
        isDesktop
            ? Expanded(
                child: QuickInvoice(
                isDesktop: isDesktop,
              ))
            : QuickInvoice(
                isDesktop: isDesktop,
              )
      ],
    );
  }
}

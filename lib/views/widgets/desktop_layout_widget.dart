import 'package:admin_dashboard/views/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';

import 'all_expenses_and_quick_invoice_section.dart';
import 'card_transaction_income_section.dart';

class DeskTopLayout extends StatelessWidget {
  const DeskTopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xfff7f9fa),
      body: Row(
        children: [
          Expanded(child: CustomDrawer()),
          SizedBox(
            width: 32,
          ),
          Expanded(
            flex: 5,
            child: CustomScrollView(
              slivers: [
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: AllExpensesAndQuickInvoiceSection(
                          isDesktop: true,
                        ),
                      ),
                      Expanded(flex: 2, child: CardTransactionIncomeSection()),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

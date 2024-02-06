import 'package:admin_dashboard/views/widgets/tarnsaction_history_header.dart';
import 'package:admin_dashboard/views/widgets/transaction_history_list_view.dart';
import 'package:flutter/material.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [TransactionHistoryHeader(), TransactionHistoryItemListView()],
    );
  }
}

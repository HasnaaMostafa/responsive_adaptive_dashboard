import 'package:admin_dashboard/views/widgets/transaction_history.dart';
import 'package:flutter/material.dart';

import 'custom_background_container.dart';
import 'my_card.dart';

class CardAndTransactionHistorySection extends StatelessWidget {
  const CardAndTransactionHistorySection({super.key, required this.isDesktop});

  final bool isDesktop;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: isDesktop
            ? const EdgeInsets.symmetric(horizontal: 20.0)
            : EdgeInsets.zero,
        child: const CustomBackgroundContainer(
          padding: 14,
          child: Column(
            children: [
              MyCard(),
              TransactionHistory(),
            ],
          ),
        ));
  }
}

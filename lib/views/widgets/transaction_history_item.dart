import 'package:flutter/material.dart';

import '../../models/transaction_history_model.dart';
import '../../utils/app_styles.dart';

class TransactionHistoryItem extends StatelessWidget {
  const TransactionHistoryItem(
      {super.key, required this.transactionHistoryModel});

  final TransactionHistoryModel transactionHistoryModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xffFAFAFA),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        title: Text(
          transactionHistoryModel.title,
          style: AppStyles.styleSemiBold12(context),
        ),
        subtitle: Text(
          transactionHistoryModel.date,
          style: AppStyles.styleRegular12(context),
        ),
        trailing: Text(
          transactionHistoryModel.amount,
          style: AppStyles.styleSemiBold16(context).copyWith(
              color: transactionHistoryModel.isWithdrawal
                  ? const Color(0xfff3735E)
                  : const Color(0xff7DD97B)),
        ),
      ),
    );
  }
}

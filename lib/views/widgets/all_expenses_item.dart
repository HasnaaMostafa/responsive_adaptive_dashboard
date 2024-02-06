import 'package:flutter/material.dart';

import '../../models/all_expenses_model.dart';
import 'active_and_inactive_all_expenses_item.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem(
      {super.key, required this.allExpensesModel, required this.isActive});
  final AllExpensesModel allExpensesModel;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveAllExpensesItem(allExpensesModel: allExpensesModel)
        : InActiveAllExpensesItem(allExpensesModel: allExpensesModel);
  }
}

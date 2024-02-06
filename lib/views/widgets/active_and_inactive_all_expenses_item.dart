import 'package:flutter/material.dart';

import '../../models/all_expenses_model.dart';
import '../../utils/app_styles.dart';
import 'all_expenses_header_item.dart';

class InActiveAllExpensesItem extends StatelessWidget {
  const InActiveAllExpensesItem({
    super.key,
    required this.allExpensesModel,
  });

  final AllExpensesModel allExpensesModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 7),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xffF1F1F1)),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesHeaderItem(image: allExpensesModel.image),
          const SizedBox(
            height: 16,
          ),
          Text(allExpensesModel.title, style: AppStyles.styleSemiBold16),
          const SizedBox(
            height: 8,
          ),
          Text(
            allExpensesModel.date,
            style: AppStyles.styleRegular14,
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            allExpensesModel.price,
            style: AppStyles.styleSemiBold24,
          ),
        ],
      ),
    );
  }
}

class ActiveAllExpensesItem extends StatelessWidget {
  const ActiveAllExpensesItem({
    super.key,
    required this.allExpensesModel,
  });

  final AllExpensesModel allExpensesModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 7),
      decoration: ShapeDecoration(
        color: const Color(0xff4EB7F2),
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xffF1F1F1)),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesHeaderItem(
            image: allExpensesModel.image,
            imageBackground: Colors.white.withOpacity(0.10000000149011612),
            imageColor: Colors.white,
            iconColor: Colors.white,
          ),
          const SizedBox(
            height: 16,
          ),
          Text(allExpensesModel.title,
              style: AppStyles.styleSemiBold16
                  .copyWith(color: const Color(0xffFFFFFF))),
          const SizedBox(
            height: 8,
          ),
          Text(
            allExpensesModel.date,
            style: AppStyles.styleRegular14
                .copyWith(color: const Color(0xffFAFAFA)),
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            allExpensesModel.price,
            style: AppStyles.styleSemiBold24
                .copyWith(color: const Color(0xffFFFFFF)),
          ),
        ],
      ),
    );
  }
}

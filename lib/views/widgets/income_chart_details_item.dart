import 'package:admin_dashboard/models/income_details_model.dart';
import 'package:admin_dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';

class IncomeChartDetailsItem extends StatelessWidget {
  const IncomeChartDetailsItem({super.key, required this.incomeDetailsModel});

  final IncomeDetailsModel incomeDetailsModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Row(
        children: [
          Container(
            width: 8,
            height: 8,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              color: incomeDetailsModel.color,
            ),
          ),
          const SizedBox(
            width: 4,
          ),
          Text(
            incomeDetailsModel.title,
            style: AppStyles.styleRegular12(context),
          ),
        ],
      ),
      trailing: Text(
        incomeDetailsModel.percentange,
        style: AppStyles.styleMedium12(context)
            .copyWith(color: const Color(0xff208CC8)),
      ),
    );
    // return Row(
    //   children: [
    //     Container(
    //       width: 8,
    //       height: 8,
    //       decoration: ShapeDecoration(
    //         shape: RoundedRectangleBorder(
    //           borderRadius: BorderRadius.circular(12),
    //         ),
    //         color: incomeDetailsModel.color,
    //       ),
    //     ),
    //     const SizedBox(
    //       width: 4,
    //     ),
    //     Text(
    //       incomeDetailsModel.title,
    //       style: AppStyles.styleRegular16,
    //     ),
    //     const Spacer(),
    //     Text(
    //       incomeDetailsModel.percentange,
    //       style:
    //           AppStyles.styleMedium16.copyWith(color: const Color(0xff208CC8)),
    //     )
    //   ],
    // );
  }
}

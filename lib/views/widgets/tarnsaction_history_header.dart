import 'package:flutter/material.dart';

import '../../utils/app_styles.dart';

class TransactionHistoryHeader extends StatelessWidget {
  const TransactionHistoryHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Transaction History",
              style: AppStyles.styleSemiBold20,
            ),
            TextButton(
                onPressed: () {},
                child: Text(
                  " See all",
                  style: AppStyles.styleMedium16
                      .copyWith(color: const Color(0xff4EB7F2)),
                ))
          ],
        ),
        Text(
          "13 April 2022",
          style:
              AppStyles.styleMedium16.copyWith(color: const Color(0xffAAAAAA)),
        )
      ],
    );
  }
}

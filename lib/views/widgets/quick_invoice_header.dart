import 'package:flutter/material.dart';

import '../../utils/app_styles.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Quick Invoice",
          style: AppStyles.styleSemiBold16(context),
        ),
        const Spacer(),
        Container(
          width: 30,
          height: 30,
          decoration: const ShapeDecoration(
              color: Color(0xffFAFAFA), shape: OvalBorder()),
          child: const Icon(
            Icons.add,
            color: Color(0xff4EB7F2),
          ),
        )
      ],
    );
  }
}

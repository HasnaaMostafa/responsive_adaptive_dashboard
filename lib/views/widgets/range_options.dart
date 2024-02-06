import 'package:flutter/material.dart';

import '../../utils/app_styles.dart';

class RangeOptions extends StatelessWidget {
  const RangeOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: ShapeDecoration(
        shadows: const [BoxShadow(color: Colors.grey)],
        color: Colors.white,
        shape: RoundedRectangleBorder(
            side: const BorderSide(width: 1, color: Color(0xffF1F1F1)),
            borderRadius: BorderRadius.circular(12)),
      ),
      child: const Row(
        children: [
          Text(
            "Monthly",
            style: AppStyles.styleMedium16,
          ),
          SizedBox(
            width: 15,
          ),
          Icon(
            Icons.keyboard_arrow_down,
            color: Color(0xff064061),
          )
        ],
      ),
    );
  }
}

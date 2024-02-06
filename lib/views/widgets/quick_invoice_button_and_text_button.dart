import 'package:flutter/material.dart';

import '../../utils/app_styles.dart';

class QuickInvoiceButtonAndTextButton extends StatelessWidget {
  const QuickInvoiceButtonAndTextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Center(
              child: TextButton(
            onPressed: () {},
            child: Text(
              "Add more details",
              style: AppStyles.styleSemiBold18
                  .copyWith(color: const Color(0xff4EB7F2)),
            ),
          )),
        ),
        Expanded(
          child: SizedBox(
            height: 52,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: const Color(0xff4EB7F2),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12))),
                onPressed: () {},
                child: const Center(
                  child: Text(
                    "Send Money",
                    style: AppStyles.styleSemiBold18,
                  ),
                )),
          ),
        )
      ],
    );
  }
}

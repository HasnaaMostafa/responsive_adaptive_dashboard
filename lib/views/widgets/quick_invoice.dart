import 'package:admin_dashboard/views/widgets/custom_background_container.dart';
import 'package:admin_dashboard/views/widgets/quick_invoice_button_and_text_button.dart';
import 'package:admin_dashboard/views/widgets/quick_invoice_form.dart';
import 'package:admin_dashboard/views/widgets/quick_invoice_header.dart';
import 'package:flutter/material.dart';

import 'latest_transcaction.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key, required this.isDesktop});

  final bool isDesktop;

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
        padding: 14,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const QuickInvoiceHeader(),
            const SizedBox(
              height: 10,
            ),
            const LatestTransaction(),
            const Divider(
              height: 20,
            ),
            const QuickInvoiceForm(),
            isDesktop
                ? const Expanded(child: QuickInvoiceButtonAndTextButton())
                : const QuickInvoiceButtonAndTextButton()
          ],
        ));
  }
}

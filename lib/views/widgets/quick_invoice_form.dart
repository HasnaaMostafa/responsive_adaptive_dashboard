import 'package:admin_dashboard/views/widgets/title_text_field.dart';
import 'package:flutter/material.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
                child: TitleTextField(
                    title: "Customer name", hint: "Type customer name")),
            Expanded(
                child: Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: TitleTextField(
                  title: "Customer Email", hint: "Type customer email"),
            )),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          children: [
            Expanded(
                child:
                    TitleTextField(title: "Item name", hint: "Type Item name")),
            Expanded(
                child: Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: TitleTextField(title: "Item mount", hint: "USD"),
            )),
          ],
        ),
        SizedBox(
          height: 5,
        ),
      ],
    );
  }
}

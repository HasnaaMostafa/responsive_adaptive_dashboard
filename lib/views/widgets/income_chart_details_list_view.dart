import 'package:admin_dashboard/models/income_details_model.dart';
import 'package:admin_dashboard/views/widgets/income_chart_details_item.dart';
import 'package:flutter/material.dart';

class IncomeChartDetailsListView extends StatelessWidget {
  const IncomeChartDetailsListView({super.key});

  static const items = [
    IncomeDetailsModel(
        color: Color(0xff208CC8), title: "Design service", percentange: "40%"),
    IncomeDetailsModel(
        color: Color(0xff4EB7F2), title: "Design product", percentange: "25%"),
    IncomeDetailsModel(
        color: Color(0xff064061), title: "Product royalti", percentange: "20%"),
    IncomeDetailsModel(
        color: Color(0xffE2DECD), title: "Other", percentange: "22%"),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: items
          .map((e) => Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: IncomeChartDetailsItem(incomeDetailsModel: e),
              ))
          .toList(),
    );
    // return ListView.builder(
    //     itemCount: items.length,
    //     shrinkWrap: true,
    //     itemBuilder: (context, index) {
    //       return Padding(
    //         padding: const EdgeInsets.only(right: 16.0),
    //         child: IncomeChartDetailsItem(incomeDetailsModel: items[index]),
    //       );
    //     });
  }
}

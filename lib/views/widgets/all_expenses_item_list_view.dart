import 'package:flutter/material.dart';

import '../../models/all_expenses_model.dart';
import '../../utils/app_images.dart';
import 'all_expenses_item.dart';

class AllExpensesItemListView extends StatefulWidget {
  const AllExpensesItemListView({super.key});

  @override
  State<AllExpensesItemListView> createState() =>
      _AllExpensesItemListViewState();
}

class _AllExpensesItemListViewState extends State<AllExpensesItemListView> {
  int selectedIndex = 0;

  List<AllExpensesModel> items = [
    AllExpensesModel(
        image: Assets.imagesBalance,
        title: "Balance",
        date: "April 2022",
        price: r"$20,129"),
    AllExpensesModel(
        image: Assets.imagesIncome,
        title: "Income",
        date: "April 2022",
        price: r"$20,129"),
    AllExpensesModel(
        image: Assets.imagesExpenses,
        title: "Expenses",
        date: "April 2022",
        price: r"$20,129"),
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
              onTap: () {
                if (selectedIndex != 0) {
                  setState(() {
                    selectedIndex = 0;
                  });
                }
              },
              child: AllExpensesItem(
                allExpensesModel: items[0],
                isActive: selectedIndex == 0,
              )),
        ),
        const SizedBox(
          width: 6,
        ),
        Expanded(
          child: GestureDetector(
              onTap: () {
                if (selectedIndex != 1) {
                  setState(() {
                    selectedIndex = 1;
                  });
                }
              },
              child: AllExpensesItem(
                allExpensesModel: items[1],
                isActive: selectedIndex == 1,
              )),
        ),
        const SizedBox(
          width: 6,
        ),
        Expanded(
          child: GestureDetector(
              onTap: () {
                if (selectedIndex != 2) {
                  setState(() {
                    selectedIndex = 2;
                  });
                }
              },
              child: AllExpensesItem(
                allExpensesModel: items[2],
                isActive: selectedIndex == 2,
              )),
        )
      ],
    );
  }
}

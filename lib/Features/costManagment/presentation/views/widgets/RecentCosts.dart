import 'package:flutter/material.dart';
import 'package:sakanimobile/core/models/addCostManagemnt.dart';
import 'package:sakanimobile/core/widgets/custom_card_cost.dart';
import 'package:sakanimobile/core/widgets/custom_details_dialog.dart';

class RecentCostsPage extends StatefulWidget {
  @override
  _RecentCostsPageState createState() => _RecentCostsPageState();
}

class _RecentCostsPageState extends State<RecentCostsPage> {
  // قائمة لتخزين الكروت
  List<AddCostManagement> recentCosts = [];

  // دالة لإضافة كارد جديد
  void addNewCost(AddCostManagement cost) {
    setState(() {
      recentCosts.add(cost);
    });
  }

  late final AddCostManagement addCostManagement;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Recent Costs")),
      body: ListView.builder(
        itemCount: recentCosts.length,
        itemBuilder: (context, index) {
          final addCostManagement = recentCosts[index];
          return CustomCardCost(
            costName: addCostManagement.costName ?? 'Unknown Cost',
            costDate: addCostManagement.entryDateCost ?? 'Unknown Date',
            salary: addCostManagement.amount.toString(),
            onTap: () {
              showDetailsDialog(
                context,
                "Cost Details",
                {
                  "Cost": addCostManagement.costName,
                  "Cost Date": "${addCostManagement.entryDateCost}",
                  "Salary": addCostManagement.amount.toString(),
                },
              );
            },
            onEditPressed: () {},
            onDeletePressed: () {},
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // مثال: إضافة كارد جديد عند الضغط على الزر
          // addNewCost(
          //   AddCostManagement(
          //   Null;
          // ));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

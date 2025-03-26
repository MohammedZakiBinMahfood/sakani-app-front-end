import 'package:flutter/material.dart';
import 'package:sakanimobile/Features/costManagment/presentation/views/widgets/add_cost_manuall.dart';
import 'package:sakanimobile/Features/costManagment/presentation/views/widgets/cardBalance.dart';
import 'package:sakanimobile/core/models/addCostManagemnt.dart';

class CostView extends StatefulWidget {
  const CostView({super.key});
  static String id = 'CostHome';

  @override
  State<CostView> createState() => _CostViewState();
}

class _CostViewState extends State<CostView> {
  late AddCostManagement addCostManagement;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cost Management'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CardBalanceWidget(),
            AddCostManual(),
            // ElevatedButton(
            //   onPressed: () {

            //   },
            //   child: const Text('Add Cost'),
            // ),
          ],
        ),
      ),
    );
  }
}

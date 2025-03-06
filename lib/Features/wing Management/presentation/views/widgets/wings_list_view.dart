import 'package:flutter/material.dart';
import 'wing_item.dart';

class WingsListView extends StatelessWidget {
  const WingsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return CustomWingItem(wingIndex: index);
      },
    );
  }
}

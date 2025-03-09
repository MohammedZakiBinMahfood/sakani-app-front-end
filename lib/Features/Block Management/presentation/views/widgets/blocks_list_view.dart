import 'package:flutter/material.dart';
import 'block_item.dart';

class BlocksListView extends StatelessWidget {
  const BlocksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return CustomBlockItem(blockIndex: index);
      },
    );
  }
}

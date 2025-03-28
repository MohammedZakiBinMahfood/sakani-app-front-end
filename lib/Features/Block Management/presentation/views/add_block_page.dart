import 'package:flutter/material.dart';
import '../../../../core/widgets/custom_app_bar_center.dart';
import 'widgets/add_block_form.dart';

class AddBlockPage extends StatelessWidget {
  const AddBlockPage({super.key});

  static String id = 'AddBlockPage';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: const Scaffold(
        appBar: CustomAppBarCentered(title: 'Add Block'),
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          child: AddBlockForm(),
        ),
      ),
    );
  }
}

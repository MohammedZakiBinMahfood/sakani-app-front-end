import 'package:flutter/material.dart';
import '../../../../core/widgets/custom_app_bar_center.dart';
import 'widgets/edit_block_form.dart';

class EditBlockPage extends StatelessWidget {
  const EditBlockPage({super.key});

  static String id = 'EditBlockPage';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: const Scaffold(
        appBar: CustomAppBarCentered(title: 'Edit Block'),
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          child: EditBlockForm(),
        ),
      ),
    );
  }
}

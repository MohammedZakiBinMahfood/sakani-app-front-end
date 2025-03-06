import 'package:flutter/material.dart';
import '../../../../core/widgets/custom_app_bar_center.dart';
import 'widgets/edit_wing_form.dart';

class EditWingPage extends StatelessWidget {
  const EditWingPage({super.key});

  static String id = 'EditWingPage';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: const Scaffold(
        appBar: CustomAppBarCentered(title: 'Edit Wing'),
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          child: EditWingForm(),
        ),
      ),
    );
  }
}

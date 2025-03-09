import 'package:flutter/material.dart';
import '../../../../core/widgets/custom_app_bar_center.dart';
import 'widgets/edit_room_form.dart';

class EditRoomPage extends StatelessWidget {
  const EditRoomPage({super.key});

  static String id = 'EditRoomPage';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: const Scaffold(
        appBar: CustomAppBarCentered(title: 'Edit Room'),
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          child: EditRoomForm(),
        ),
      ),
    );
  }
}

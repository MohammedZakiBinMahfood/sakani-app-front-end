import 'package:flutter/material.dart';
import '../../../../core/widgets/custom_app_bar_center.dart';
import 'widgets/add_room_form.dart';

class AddRoomPage extends StatelessWidget {
  const AddRoomPage({super.key});

  static String id = 'AddRoomPage';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: const Scaffold(
        appBar: CustomAppBarCentered(title: 'Add Room'),
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          child: AddRoomForm(),
        ),
      ),
    );
  }
}

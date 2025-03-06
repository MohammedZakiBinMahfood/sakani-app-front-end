import 'package:flutter/material.dart';
import '../../../../../../core/utils/validations.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../../../core/widgets/custom_text_form_field.dart';

class EditRoomForm extends StatefulWidget {
  const EditRoomForm({
    super.key,
  });

  @override
  State<EditRoomForm> createState() => _EditRoomFormState();
}

class _EditRoomFormState extends State<EditRoomForm> {
  // Form key for validation
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String? roomName, capacity;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          // Block Name Field
          // Room Name Field
          CustomTextFormField(
            onSaved: (value) {
              roomName = value;
            },
            labelText: "Room Name",
            hintText: "Enter Room name",
            keyboardType: TextInputType.text,
            prefixIcon: const Icon(Icons.meeting_room),
            validator: (value) => validateTextField(value, 1, 30, "Room Name"),
          ),
          const SizedBox(height: 10),

          // Capacity Field
          CustomTextFormField(
            onSaved: (value) {
              capacity = value;
            },
            labelText: "Capacity",
            hintText: "Enter Capacity",
            keyboardType: TextInputType.number,
            prefixIcon: const Icon(Icons.people),
            validator: (value) => validateNumberField(value, 1, 20, "Capacity"),
          ),

          const SizedBox(height: 20),

          // Submit Button
          CustomButton(
            onTap: () {
              if (formKey.currentState!.validate()) {
                Navigator.pop(context);
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
            text: 'Save Changes',
          ),
        ],
      ),
    );
  }
}

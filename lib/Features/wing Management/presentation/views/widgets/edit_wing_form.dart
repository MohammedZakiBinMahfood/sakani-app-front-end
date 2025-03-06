import 'package:flutter/material.dart';
import '../../../../../core/utils/validations.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../../../core/widgets/custom_text_form_field.dart';

class EditWingForm extends StatefulWidget {
  const EditWingForm({
    super.key,
  });

  @override
  State<EditWingForm> createState() => _EditWingFormState();
}

class _EditWingFormState extends State<EditWingForm> {
  // Form key for validation
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String? wingName, numOfRooms, floor;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          // const SizedBox(height: 20),

          // Wing Name Field
          CustomTextFormField(
            onChanged: (value) {
              wingName = value;
            },
            labelText: "Wing Name",
            hintText: "Enter Wing name",
            keyboardType: TextInputType.text,
            prefixIcon: const Icon(Icons.business),
            validator: (value) => validateTextField(value, 1, 30, "Wing Name"),
          ),
          const SizedBox(height: 10),

          // Number of Rooms Field
          CustomTextFormField(
            onChanged: (value) {
              numOfRooms = value;
            },
            labelText: "Number of Rooms",
            hintText: "Enter Number of Rooms",
            keyboardType: TextInputType.text,
            prefixIcon: const Icon(Icons.meeting_room),
            validator: (value) =>
                validateNumberField(value, 1, 30, "Number of Rooms"),
          ),
          const SizedBox(height: 10),

          // Floor Field
          CustomTextFormField(
            onChanged: (value) {
              floor = value;
            },
            labelText: "Floor",
            hintText: "Enter floor number",
            keyboardType: TextInputType.number,
            prefixIcon: const Icon(Icons.stairs),
            validator: (value) => validateNumberField(
              value,
              1,
              30,
              "Number of Wings",
            ),
          ),
          const SizedBox(height: 20),

          // Submit Button
          CustomButton(
            onTap: () async {
              if (formKey.currentState!.validate()) {
                Navigator.pop(context);
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

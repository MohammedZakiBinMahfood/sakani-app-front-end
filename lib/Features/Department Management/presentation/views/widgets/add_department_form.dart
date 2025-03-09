import 'package:flutter/material.dart';
import '../../../../../../core/utils/validations.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../../../core/widgets/custom_text_form_field.dart';

class AddDepartmentForm extends StatefulWidget {
  const AddDepartmentForm({
    super.key,
  });

  @override
  State<AddDepartmentForm> createState() => _AddDepartmentFormState();
}

class _AddDepartmentFormState extends State<AddDepartmentForm> {
  // Form key for validation
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String? department;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          // const SizedBox(height: 20),

          // Department Name Field
          CustomTextFormField(
            onSaved: (value) {
              department = value;
            },
            labelText: "Department Name",
            hintText: "Enter Department Name",
            keyboardType: TextInputType.text,
            prefixIcon: const Icon(Icons.menu_book),
            validator: (value) =>
                validateTextField(value, 2, 50, "Department Name"),
          ),
          const SizedBox(height: 20),

          // Submit Button
          CustomButton(
            onTap: () async {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
                Navigator.pop(context);
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
            text: 'Add Department',
          ),
        ],
      ),
    );
  }
}

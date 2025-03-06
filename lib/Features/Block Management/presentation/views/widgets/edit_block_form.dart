import 'package:flutter/material.dart';
import '../../../../../../core/utils/validations.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../../../core/widgets/custom_text_form_field.dart';

class EditBlockForm extends StatefulWidget {
  const EditBlockForm({
    super.key,
  });

  @override
  State<EditBlockForm> createState() => _EditBlockFormState();
}

class _EditBlockFormState extends State<EditBlockForm> {
  // Form key for validation
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String? blockName, location, numberOfWings;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          // Block Name Field
          CustomTextFormField(
            onChanged: (value) {
              blockName = value;
            },
            labelText: "Block Name",
            hintText: "Enter block name",
            keyboardType: TextInputType.text,
            prefixIcon: const Icon(Icons.domain),
            validator: (value) => validateTextField(value, 1, 30, "Block Name"),
          ),
          const SizedBox(height: 10),

          // Location Field
          CustomTextFormField(
            onChanged: (value) {
              location = value;
            },
            labelText: "Location",
            hintText: "Enter location",
            keyboardType: TextInputType.text,
            prefixIcon: const Icon(Icons.location_on),
            validator: (value) => validateTextField(value, 3, 100, "Location"),
          ),
          const SizedBox(height: 10),

          // Number of Wings Field
          CustomTextFormField(
            onChanged: (value) {
              numberOfWings = value;
            },
            labelText: "Number of Wings",
            hintText: "Enter number of wings",
            keyboardType: TextInputType.number,
            // prefixIcon: const Icon(Icons.apartment),
            prefixIcon: const Icon(Icons.domain_add),
            validator: (value) => validateNumberField(
              value,
              1,
              500,
              "Number of Wings",
            ),
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

import 'package:flutter/material.dart';
import '../../../../../../core/utils/validations.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../../../core/widgets/custom_drop_down_form_field.dart';
import '../../../../../core/widgets/custom_text_form_field.dart';

class EditEducationalInstitutionFormForm extends StatefulWidget {
  const EditEducationalInstitutionFormForm({
    super.key,
  });

  @override
  State<EditEducationalInstitutionFormForm> createState() =>
      _EditEducationalInstitutionFormFormState();
}

class _EditEducationalInstitutionFormFormState
    extends State<EditEducationalInstitutionFormForm> {
  // Form key for validation
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String? educationalInstitutionName, location, selectedValue;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          // Educational Institution Name Field
          CustomTextFormField(
            onSaved: (value) {
              educationalInstitutionName = value;
            },
            labelText: "Educational Institution Name",
            hintText: "Enter Educational Institution name",
            keyboardType: TextInputType.text,
            prefixIcon: const Icon(Icons.school),
            validator: (value) =>
                validateTextField(value, 1, 30, "EducationalInstitution Name"),
          ),
          const SizedBox(height: 10),

          // Location Field
          CustomTextFormField(
            onSaved: (value) {
              location = value;
            },
            labelText: "Location",
            hintText: "Enter location",
            keyboardType: TextInputType.text,
            prefixIcon: const Icon(Icons.location_on),
            validator: (value) => validateTextField(value, 3, 100, "Location"),
          ),
          const SizedBox(height: 10),

          // type Educational Institution field
          CustomDropdownFormField(
            labelText: "Select type",
            hintText: "Choose a type",
            items: const ['university', 'institute'],
            selectedValue: selectedValue,
            prefixIcon: const Icon(Icons.school),
            onChanged: (newValue) {
              setState(() {
                selectedValue = newValue;
              });
            },
            validator: validateOption,
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

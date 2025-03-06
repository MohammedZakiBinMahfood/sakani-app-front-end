import 'package:flutter/material.dart';
import '../../../../../constants.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/validations.dart';
import '../../../../../core/widgets/custom_button.dart';

import '../../../../../core/widgets/custom_datepicker_field.dart';
import '../../../../../core/widgets/custom_text_form_field.dart';
import '../login_page.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({
    super.key,
  });

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  // Form key for validation
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  final TextEditingController dateOfBirthController = TextEditingController();
  String? name, phone, email, address, educationalInstitution, department;

  @override
  void dispose() {
    dateOfBirthController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const CircleAvatar(
            radius: 112,
            backgroundColor: kPrimaryColor,
            child: CircleAvatar(
              radius: 110,
              backgroundImage: AssetImage(AssetsData.logo),
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'SAKANI APP',
            style: TextStyle(
              fontSize: 32,
              color: Colors.black,
              fontFamily: 'pacifico',
            ),
          ),
          const SizedBox(height: 20),
          const Row(
            children: [
              Text(
                'Register',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),

          // Name Field
          CustomTextFormField(
            onSaved: (value) {
              name = value;
            },
            labelText: "Name",
            hintText: "Enter your name",
            keyboardType: TextInputType.text,
            prefixIcon: const Icon(Icons.person),
            validator: validateName,
          ),
          const SizedBox(height: 10),

          // Phone Field
          CustomTextFormField(
            onSaved: (value) {
              phone = value;
            },
            labelText: "Phone",
            hintText: "Enter your phone number",
            keyboardType: TextInputType.phone,
            prefixIcon: const Icon(Icons.phone),
            validator: validatePhoneNumber,
          ),
          const SizedBox(height: 10),

          // Email Field
          CustomTextFormField(
            onSaved: (value) {
              email = value;
            },
            labelText: "Email",
            hintText: "Enter your email",
            prefixIcon: const Icon(Icons.email),
            keyboardType: TextInputType.emailAddress,
            validator: validateEmail,
          ),
          const SizedBox(height: 10),

          // Address Field
          CustomTextFormField(
            onSaved: (value) {
              address = value;
            },
            labelText: "Address",
            hintText: "Enter your Address",
            // prefixIcon: const Icon(Icons.location_on),
            prefixIcon: const Icon(Icons.home),
            keyboardType: TextInputType.text,
            validator: (value) => validateTextField(value, 3, 100, "Address"),
          ),
          const SizedBox(height: 10),

          // Date of Birth Field
          CustomDatePickerField(
            dateController: dateOfBirthController,
            labelText: "Date of Birth",
            hintText: "Select your birth date",
            validator: (value) => validateDate(value, "birth date"),
          ),

          const SizedBox(height: 10),

          // Educational Institution Field
          CustomTextFormField(
            onSaved: (value) {
              educationalInstitution = value;
            },
            labelText: "Educational Institution",
            hintText: "Enter your institution name",
            keyboardType: TextInputType.text,
            prefixIcon: const Icon(Icons.school),
            validator: (value) =>
                validateTextField(value, 5, 50, "Educational Institution"),
          ),
          const SizedBox(height: 10),

          // Department Field
          CustomTextFormField(
            onSaved: (value) {
              department = value;
            },
            labelText: "Department",
            hintText: "Enter your department name",
            keyboardType: TextInputType.text,
            prefixIcon: const Icon(Icons.menu_book),
            validator: (value) => validateTextField(value, 2, 50, "Department"),
          ),
          const SizedBox(height: 20),

          SizedBox(
            width: double.infinity,
            child: CustomButton(
              onTap: () async {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                  Navigator.pushNamed(context, LoginPage.id);
                } else {
                  autovalidateMode = AutovalidateMode.always;
                  setState(() {});
                }
              },
              text: 'Register',
            ),
          ),
        ],
      ),
    );
  }
}

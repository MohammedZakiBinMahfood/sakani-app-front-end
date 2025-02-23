import 'package:flutter/material.dart';
import '../../../../constants.dart';
import '../../../../core/utils/assets.dart';
import '../../../../core/utils/validations.dart';
import 'login_page.dart';
import 'widgets/custom_button.dart';
import 'widgets/custom_datepicker.dart';
import 'widgets/custom_text_form_field.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  static String id = 'RegisterPage';

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final formKey = GlobalKey<FormState>();

  // Controllers for the form fields
  final studentNameController = TextEditingController();
  final phoneController = TextEditingController();
  final emailController = TextEditingController();
  final addressController = TextEditingController();
  final dateOfBirthController = TextEditingController();
  final educationalInstitutionController = TextEditingController();
  final departmentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus(); // Closes the keyboard
      },
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 70),
            child: Form(
              key: formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
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
                    controller: studentNameController,
                    labelText: "Name",
                    hintText: "Enter your name",
                    keyboardType: TextInputType.text,
                    prefixIcon: const Icon(Icons.person),
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return "Please enter your name.";
                      } else if (value.isEmpty || value.length > 30) {
                        return "Name must be between 1 and 30 characters.";
                      } else if (!RegExp(r'^[a-zA-Z]+$')
                          .hasMatch(value.trim())) {
                        return "The name should only contain letters, no numbers or special characters.";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 10),

                  // Phone Field
                  CustomTextFormField(
                    controller: phoneController,
                    labelText: "Phone",
                    hintText: "Enter your phone number",
                    keyboardType: TextInputType.phone,
                    prefixIcon: const Icon(Icons.phone),
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return "Please enter your phone number.";
                      } else if (!RegExp(r'^(70|71|73|77|78)\d{6}$')
                          .hasMatch(value)) {
                        return "Please enter a valid phone number (e.g., 770123456).";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 10),

                  // Email Field
                  CustomTextFormField(
                    controller: emailController,
                    labelText: "Email",
                    hintText: "Enter your email",
                    prefixIcon: const Icon(Icons.email),
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return "Please enter your email.";
                      } else if (!RegExp(
                              r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$')
                          .hasMatch(value)) {
                        return "Please enter a valid email address.";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 10),

                  // Address Field
                  CustomTextFormField(
                    controller: addressController,
                    labelText: "Address",
                    hintText: "Enter your Address",
                    prefixIcon: const Icon(Icons.location_on),
                    keyboardType: TextInputType.text,
                    validator: (value) =>
                        validateName(value, 3, 100, "Address"),
                  ),
                  const SizedBox(height: 10),

                  // Date of Birth Field
                  CustomDatePicker(
                    dateController: dateOfBirthController,
                    labelText: "Date of Birth",
                    hintText: "Select your birth date",
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return "Please select your birth date.";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 10),

                  // Educational Institution Field
                  CustomTextFormField(
                    controller: educationalInstitutionController,
                    labelText: "Educational Institution",
                    hintText: "Enter institution name",
                    keyboardType: TextInputType.text,
                    prefixIcon: const Icon(Icons.account_balance),
                    validator: (value) =>
                        validateName(value, 5, 50, "Educational Institution"),
                  ),
                  const SizedBox(height: 10),

                  // Department Field
                  CustomTextFormField(
                    controller: departmentController,
                    labelText: "Department",
                    hintText: "Enter department name",
                    keyboardType: TextInputType.text,
                    prefixIcon: const Icon(Icons.school),
                    validator: (value) =>
                        validateName(value, 2, 50, "Department"),
                  ),
                  const SizedBox(height: 20),

                  SizedBox(
                    width: double.infinity,
                    child: CustomButton(
                      onTap: () async {
                        if (formKey.currentState!.validate()) {
                          Navigator.pushNamed(context, LoginPage.id);
                        }
                      },
                      text: 'Register',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

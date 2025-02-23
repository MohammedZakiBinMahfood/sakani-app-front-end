import 'package:flutter/material.dart';
import '../../../../constants.dart';
import '../../../../core/utils/assets.dart';
import 'register_page.dart';
import 'widgets/custom_button.dart';
import 'widgets/custom_password.dart';
import 'widgets/custom_text_form_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  static String id = 'LoginPage';

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();

  final nameController = TextEditingController();
  final passWordController = TextEditingController();

  bool isRememberMe = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus(); // Closes the keyboard
      },
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 16),
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
                        'Login',
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
                    controller: nameController,
                    labelText: "User Name",
                    hintText: "Enter your username",
                    keyboardType: TextInputType.text,
                    prefixIcon: const Icon(Icons.person),
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return "Please enter your username.";
                      } else if (value.length < 3 || value.length > 20) {
                        return "Username must be between 3 and 20 characters.";
                      } else if (!RegExp(r'^[a-zA-Z][a-zA-Z0-9]*$')
                          .hasMatch(value)) {
                        return "Username must start with a letter and contain only letters and numbers.";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 10),

                  // Password Field
                  PasswordField(
                    controller: passWordController,
                    labelText: "Password",
                    hintText: "Enter your password",
                    keyboardType: TextInputType.number,
                    prefixIcon: const Icon(Icons.lock),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter your password.";
                      } else if (value.length < 8 || value.length > 20) {
                        return "Password must be between 8 and 20 characters.";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 10),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Checkbox(
                          value: isRememberMe,
                          activeColor: kPrimaryColor,
                          onChanged: (value) {
                            setState(() {
                              isRememberMe = value!;
                            });
                          },
                        ),
                        const Text("Remember Me"),
                      ],
                    ),
                  ),

                  const SizedBox(height: 20),

                  SizedBox(
                    width: double.infinity,
                    child: CustomButton(
                      onTap: () {
                        if (formKey.currentState!.validate()) {
                          Navigator.pushNamed(context, RegisterPage.id);
                        }
                      },
                      text: 'Login',
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

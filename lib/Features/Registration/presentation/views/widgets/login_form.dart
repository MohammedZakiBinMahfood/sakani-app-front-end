import 'package:flutter/material.dart';
import '../../../../../constants.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/validations.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../../../core/widgets/custom_password.dart';
import '../../../../../core/widgets/custom_text_form_field.dart';
import '../register_page.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  // Form key for validation
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String? name, passWord;
  bool isRememberMe = false;
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
            onSaved: (value) {
              name = value;
            },
            labelText: "User Name",
            hintText: "Enter your username",
            keyboardType: TextInputType.text,
            prefixIcon: const Icon(Icons.person),
            validator: validateUsername,
          ),
          const SizedBox(height: 10),

          // Password Field
          CustomPasswordField(
            onSaved: (value) {
              passWord = value;
            },
            labelText: "Password",
            hintText: "Enter your password",
            keyboardType: TextInputType.number,
            prefixIcon: const Icon(Icons.lock),
            validator: validatePassword,
          ),
          const SizedBox(height: 10),

          // Remember Me Checkbox
          Align(
            alignment: Alignment.centerLeft,
            child: Row(
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

          // Login Button
          SizedBox(
            width: double.infinity,
            child: CustomButton(
              onTap: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                  Navigator.pushNamed(context, RegisterPage.id);
                } else {
                  autovalidateMode = AutovalidateMode.always;
                  setState(() {});
                }
              },
              text: 'Login',
            ),
          ),
        ],
      ),
    );
  }
}

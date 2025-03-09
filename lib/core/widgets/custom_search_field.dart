import 'package:flutter/material.dart';
import 'custom_text_form_field.dart';

class CustomSearchField extends StatelessWidget {
  final void Function(String)? onChanged;
  final String labelText;
  final String hintText;
  final String? Function(String?)? validator;

  const CustomSearchField({
    super.key,
    this.onChanged,
    required this.labelText,
    required this.hintText,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      onChanged: onChanged,
      labelText: labelText,
      hintText: hintText,
      prefixIcon: IconButton(
        icon: const Icon(Icons.search),
        onPressed: () => {},
      ),
      keyboardType: TextInputType.text,
      validator: validator,
    );
  }
}

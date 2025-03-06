import 'package:flutter/material.dart';
import 'custom_text_form_field.dart';

class CustomPasswordField extends StatefulWidget {
  final void Function(String?)? onSaved;
  final String labelText;
  final String hintText;
  final Icon? prefixIcon;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;

  const CustomPasswordField({
    super.key,
    this.onSaved,
    required this.labelText,
    required this.hintText,
    this.keyboardType,
    this.prefixIcon,
    this.validator,
  });

  @override
  State<CustomPasswordField> createState() => _CustomPasswordFieldState();
}

class _CustomPasswordFieldState extends State<CustomPasswordField> {
  bool _isObscured = true;

  void _toggleVisibility() {
    setState(() {
      _isObscured = !_isObscured;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      onSaved: widget.onSaved,
      labelText: widget.labelText,
      hintText: widget.hintText,
      prefixIcon: widget.prefixIcon,
      keyboardType: widget.keyboardType,
      obscureText: _isObscured,
      suffixIcon: IconButton(
        icon: Icon(
          _isObscured ? Icons.visibility : Icons.visibility_off,
        ),
        onPressed: _toggleVisibility,
      ),
      validator: widget.validator,
    );
  }
}

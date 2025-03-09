import 'package:flutter/material.dart';
import '../../../../../constants.dart';

class CustomTextFormField extends StatefulWidget {
  final TextEditingController? controller;
  final void Function(String?)? onSaved;
  final Function(String)? onChanged;
  final String labelText;
  final String hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool obscureText;
  final TextInputType? keyboardType;
  final bool readOnly;
  final String? Function(String?)? validator;
  final Color? cursorColor;

  const CustomTextFormField({
    super.key,
    this.onSaved,
    this.onChanged,
    required this.labelText,
    required this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.obscureText = false,
    this.keyboardType,
    this.readOnly = false,
    this.validator,
    this.controller,
    this.cursorColor,
  });

  @override
  _CustomTextFormFieldState createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  late FocusNode _focusNode;
  Color borderColor = Colors.black;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _focusNode.addListener(() {
      setState(() {
        borderColor = _focusNode.hasFocus ? kPrimaryColor : Colors.black;
      });
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      onChanged: widget.onChanged,
      onSaved: widget.onSaved,
      keyboardType: widget.keyboardType,
      obscureText: widget.obscureText,
      readOnly: widget.readOnly,
      validator: widget.validator,
      cursorColor: widget.cursorColor ?? kPrimaryColor,
      focusNode: _focusNode, // ربط الحقل بالـ FocusNode لمراقبة حالته
      decoration: InputDecoration(
        labelText: widget.labelText,
        hintText: widget.hintText,
        floatingLabelStyle:
            TextStyle(color: borderColor), // الليبل يأخذ لون الحواف
        prefixIcon: widget.prefixIcon,
        suffixIcon: widget.suffixIcon,
        enabledBorder: buildBorder(Colors.black),
        focusedBorder: buildBorder(kPrimaryColor),
        errorBorder: buildBorder(Colors.red),
        focusedErrorBorder: buildBorder(Colors.red),
      ),
    );
  }

  OutlineInputBorder buildBorder(Color color) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
      borderSide: BorderSide(color: color, width: 1.5),
    );
  }
}

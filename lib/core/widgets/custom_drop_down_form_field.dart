import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class CustomDropdownFormField extends StatelessWidget {
  final String labelText;
  final String hintText;
  final List<String> items; // Options menu
  final String? selectedValue; // Selected value
  final Icon? prefixIcon;
  final void Function(String?)? onChanged;
  final String? Function(String?)? validator;

  const CustomDropdownFormField({
    super.key,
    required this.labelText,
    required this.hintText,
    required this.items,
    this.selectedValue,
    this.onChanged,
    this.prefixIcon,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField2<String>(
      value: selectedValue,
      onChanged: onChanged,
      validator: validator,
      dropdownStyleData: DropdownStyleData(
        maxHeight: 200, // Set the height of the list
        width: 250, // Set the width of the list
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
      ),
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        prefixIcon: prefixIcon,
        floatingLabelStyle: const TextStyle(color: kPrimaryColor),
        enabledBorder: buildBorder(Colors.black),
        focusedBorder: buildBorder(kPrimaryColor),
        errorBorder: buildBorder(Colors.red),
        focusedErrorBorder: buildBorder(Colors.red),
      ),
      items: items.map((item) {
        return DropdownMenuItem<String>(
          value: item,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(item),
          ),
        );
      }).toList(),
    );
  }

  OutlineInputBorder buildBorder(Color color) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
      borderSide: BorderSide(color: color, width: 1.5),
    );
  }
}

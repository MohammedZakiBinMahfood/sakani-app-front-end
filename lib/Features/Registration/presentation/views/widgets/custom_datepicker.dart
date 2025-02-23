import 'package:flutter/material.dart';
import 'custom_text_form_field.dart';

class CustomDatePicker extends StatelessWidget {
  final TextEditingController dateController;
  final String labelText;
  final String hintText;
  final String? Function(String?)? validator;

  const CustomDatePicker({
    super.key,
    required this.dateController,
    required this.labelText,
    required this.hintText,
    this.validator,
  });

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );
    if (pickedDate != null) {
      dateController.text =
          "${pickedDate.day}/${pickedDate.month}/${pickedDate.year}";
    }
  }

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      controller: dateController,
      labelText: labelText,
      hintText: hintText,
      readOnly: true,
      suffixIcon: IconButton(
        icon: const Icon(Icons.calendar_today),
        onPressed: () => _selectDate(context),
      ),
      validator: validator,
    );
  }
}

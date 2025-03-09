import 'package:flutter/material.dart';
import '../../constants.dart';
import 'custom_text_form_field.dart';

class CustomDatePickerField extends StatelessWidget {
  final TextEditingController dateController;
  final String labelText;
  final String hintText;
  final String? Function(String?)? validator;

  const CustomDatePickerField({
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
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: const ColorScheme.light(
              primary: kPrimaryColor, // Title color (AppBar) and selected dates
              onPrimary: Colors.white, // Text color inside the title
              onSurface: Colors.black, //Color of texts inside the calendar
            ),
            textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(
                foregroundColor:
                    kPrimaryColor, // Color of "Cancel" and "OK" buttons
              ),
            ),
          ),
          child: child!,
        );
      },
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
      validator: validator,
      suffixIcon: IconButton(
        icon: const Icon(Icons.calendar_today),
        onPressed: () => _selectDate(context),
      ),
    );
  }
}

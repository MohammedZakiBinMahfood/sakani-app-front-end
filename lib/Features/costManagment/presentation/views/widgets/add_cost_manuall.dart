import 'package:flutter/material.dart';
import 'package:sakanimobile/Features/costManagment/presentation/views/widgets/RecentCosts.dart';
import 'package:sakanimobile/core/models/addCostManagemnt.dart';
import 'package:sakanimobile/core/utils/validations.dart';
import 'package:sakanimobile/core/widgets/custom_button.dart';
import 'package:sakanimobile/core/widgets/custom_card_cost.dart';
import 'package:sakanimobile/core/widgets/custom_datepicker_field.dart';
import 'package:sakanimobile/core/widgets/custom_details_dialog.dart';
import 'package:sakanimobile/core/widgets/custom_text_form_field.dart';
import '../../../../../core/widgets/custom_drop_down_form_field.dart';

// ignore: must_be_immutable
class AddCostManual extends StatefulWidget {
  AddCostManual({super.key});

  @override
  State<AddCostManual> createState() => _AddCostManualState();
}

class _AddCostManualState extends State<AddCostManual> {
  String? educationalInstitutionName, location, selectedValue;
  final int CostIndex = 0;
  // late final String costName;
  // late final String salary;
  // late final String costDate;

  final AddCostManagement addCostManagement = AddCostManagement();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Padding(
            padding: EdgeInsets.only(right: 220),
            child: Text(
              'Add New Cost',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          const SizedBox(height: 10),
          const Padding(
            padding: EdgeInsets.only(right: 307),
            child: Text(
              'Amount',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          CustomTextFormField(
            controller: TextEditingController(
                text: addCostManagement.amount.toString()),
            hintText: '',
            labelText: '',
          ),
          const SizedBox(height: 10),
          const Padding(
            padding: EdgeInsets.only(right: 288),
            child: Text(
              'Cost Name',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          CustomTextFormField(
            controller: TextEditingController(text: addCostManagement.costName),
            hintText: 'Enter cost name',
            labelText: '',
          ),
          const SizedBox(height: 10),
          const Padding(
            padding: EdgeInsets.only(right: 290),
            child: Text(
              'Entry Date',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          CustomDatePickerField(
            dateController:
                TextEditingController(text: addCostManagement.costName),
            hintText: 'yyyy/mm/dd',
            labelText: '',
          ),
          const SizedBox(height: 10),
          const Padding(
            padding: EdgeInsets.only(right: 288),
            child: Text(
              'Cost Type',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          CustomDropdownFormField(
            labelText: '',
            hintText: 'ُEnter cost type',
            items: addCostManagement.costType ??
                ['housing ', 'feeds'], // Provide a default empty list if null
            selectedValue: selectedValue,
            onChanged: (newValue) {
              setState(() {
                selectedValue = newValue;
              });
            },
            validator: validateOption,
          ),
          const SizedBox(height: 10),
          const Padding(
            padding: EdgeInsets.only(right: 288),
            child: Text(
              'Bill Image',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // CustomUploadImage(),
          const SizedBox(height: 10),
          CustomButton(
            text: 'Add Cost',
            onTap: () {
              if (addCostManagement.amount.toString().isEmpty ||
                  addCostManagement.billImage!.codeUnits.isEmpty ||
                  addCostManagement.costName!.isEmpty ||
                  addCostManagement.costType!.isEmpty ||
                  addCostManagement.entryDateCost!.isEmpty) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('الرجاء تعبئة جميع الحقول'),
                    backgroundColor: Colors.red,
                  ),
                );
              } else {
                RecentCostsPage;
              }
              // Add your logic here
            },
          ),
          const SizedBox(height: 10),

          const Padding(
            padding: EdgeInsets.only(right: 270),
            child: Text(
              'Recent Costs',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
//flutter.compileSdkVersion=30
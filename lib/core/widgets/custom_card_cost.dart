import 'package:flutter/material.dart';

class CustomCardCost extends StatelessWidget {
  final String costName;
  final String salary;
  final String costDate;
  final Widget? trailingEditIcon;
  final Widget? trailingDeleteIcon;
  final VoidCallback onTap;
  final VoidCallback onEditPressed;
  final VoidCallback onDeletePressed;

  const CustomCardCost({
    super.key,
    required this.costName,
    required this.salary,
    required this.costDate,
    required this.onTap,
    required this.onEditPressed,
    required this.onDeletePressed,
    this.trailingEditIcon,
    this.trailingDeleteIcon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        color: Colors.white,
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: const BorderSide(
            // color: Colors.black,
            color: Color(0xffE5E7EB),
            width: 1.5,
          ),
        ),
        child: ListTile(
          title: Text(costName),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(costDate),
            ],
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Text(salary),
              ),
              IconButton(
                icon: trailingEditIcon ??
                    const Icon(Icons.edit, color: Colors.blue),
                onPressed: onEditPressed,
              ),
              IconButton(
                icon: trailingDeleteIcon ??
                    const Icon(Icons.delete, color: Colors.red),
                onPressed: onDeletePressed,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

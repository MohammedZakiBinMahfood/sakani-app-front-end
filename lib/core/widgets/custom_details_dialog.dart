import 'package:flutter/material.dart';

class CustomDetailsDialog extends StatelessWidget {
  final String title;
  final Map<String, dynamic> details;

  const CustomDetailsDialog({
    super.key,
    required this.title,
    required this.details,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      title: Column(
        children: [
          const Icon(Icons.info, color: Colors.blue, size: 40),
          const SizedBox(height: 10),
          Text(
            title,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ],
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: details.entries.map((entry) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Text(
              "${entry.key}: ${entry.value}",
              style: const TextStyle(
                fontSize: 16,
                height: 1.5,
              ),
            ),
          );
        }).toList(),
      ),
      actions: [
        TextButton(
          style: TextButton.styleFrom(
            foregroundColor: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text(
            "Close",
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        ),
      ],
    );
  }
}

void showDetailsDialog(
    BuildContext context, String title, Map<String, dynamic> details) {
  showDialog(
    barrierDismissible: false,
    context: context,
    builder: (context) {
      return CustomDetailsDialog(title: title, details: details);
    },
  );
}

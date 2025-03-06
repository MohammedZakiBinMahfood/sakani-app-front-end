import 'package:flutter/material.dart';

class CustomDeleteDialog extends StatelessWidget {
  final String title;
  final String content;
  final VoidCallback onConfirmDelete;

  const CustomDeleteDialog({
    super.key,
    required this.title,
    required this.content,
    required this.onConfirmDelete,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      title: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(Icons.warning, color: Colors.red, size: 40),
          const SizedBox(height: 10),
          Text(
            title,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ],
      ),
      content: Text(
        content,
        style: const TextStyle(fontSize: 16),
        textAlign: TextAlign.center,
      ),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.black,
              ),
              onPressed: () => Navigator.pop(context),
              child: const Text(
                "Cancel",
                style: TextStyle(fontSize: 16),
              ),
            ),
            const SizedBox(
              width: 35,
            ),
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.red,
              ),
              onPressed: () {
                Navigator.pop(context);
                onConfirmDelete();
              },
              child: const Text(
                "Delete",
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

void showDeleteDialog(
    BuildContext context, String itemName, VoidCallback onConfirmDelete) {
  showDialog(
    barrierDismissible: false,
    context: context,
    builder: (context) => CustomDeleteDialog(
      title: "Delete $itemName",
      content:
          "Are you sure you want to delete this $itemName? This action cannot be undone.",
      onConfirmDelete: onConfirmDelete,
    ),
  );
}

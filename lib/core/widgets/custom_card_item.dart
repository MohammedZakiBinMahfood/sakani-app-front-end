import 'package:flutter/material.dart';

class CustomCardItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final Widget? trailingEditIcon;
  final Widget? trailingDeleteIcon;
  final VoidCallback onTap;
  final VoidCallback onEditPressed;
  final VoidCallback onDeletePressed;

  const CustomCardItem({
    super.key,
    required this.title,
    required this.subtitle,
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
          title: Text(title),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(subtitle),
            ],
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
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

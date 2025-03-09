import 'package:flutter/material.dart';

class CustomAppBarView extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final VoidCallback onActionPressed;

  const CustomAppBarView({
    super.key,
    required this.title,
    required this.onActionPressed,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
      centerTitle: true,
      // backgroundColor: Colors.white,
      // foregroundColor: Colors.black,
      // elevation: 0,
      actions: [
        IconButton(
          icon: const Icon(Icons.add_circle_rounded, size: 25),
          onPressed: onActionPressed,
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

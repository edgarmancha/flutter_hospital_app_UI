import 'package:flutter/material.dart';

import 'constants/utils.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final Widget? leading;
  final List<Widget>? actions;
  final Widget? centerImage;
  final Color? backgroundColor;
  final double? elevation;

  const MyAppBar({
    super.key,
    required this.title,
    this.leading,
    this.actions,
    this.centerImage,
    this.backgroundColor,
    this.elevation,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipOval(
          child: Image.asset(
            'assets/beautiful-lady-20.png',
            fit: BoxFit.cover,
          ),
        ),
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title!,
            style: SafeGoogleFont(
              'Poppins',
              fontSize: 18,
              fontWeight: FontWeight.bold,
              height: 1.5,
              color: Colors.indigo,
            ),
          ),
        ],
      ),
      actions: [
        IconButton(
          icon: const Icon(
            Icons.settings,
            color: Colors.black,
          ),
          tooltip: 'Edit',
          onPressed: () {
            // handle the press
          },
        ),
        IconButton(
          icon: const Icon(
            Icons.notification_add,
            color: Colors.black,
          ),
          tooltip: 'Edit',
          onPressed: () {
            // handle the press
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

import 'package:flutter/material.dart';

class AurioAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const AurioAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0XFF0C0C1A),
      elevation: 1,
      iconTheme: IconThemeData(color: Color(0XFF4B0082)),
      title: Text(
        title,
        style: TextStyle(
          color: Color(0XFF4B0082),
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

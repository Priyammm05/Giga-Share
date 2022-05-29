// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class CustomProfileTile extends StatelessWidget {
  final String text;
  final IconData icon;
  final Function() onPressed;
  CustomProfileTile({
    Key? key,
    required this.icon,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        size: 23,
        color: Colors.black87,
      ),
      trailing: Icon(
        Icons.arrow_forward_ios,
        color: Colors.black54,
        size: 12,
      ),
      title: Text(
        text,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: Colors.black87,
        ),
      ),
      onTap: onPressed,
    );
  }
}

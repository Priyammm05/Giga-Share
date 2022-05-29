// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:giga_share/config/config.dart';
import 'package:wiredash/wiredash.dart';

class WiredashApp extends StatelessWidget {
  final navigatorKey;
  final Widget child;

  const WiredashApp({
    Key? key,
    required this.navigatorKey,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wiredash(
      projectId: projectID,
      secret: secretKey,
      navigatorKey: navigatorKey,
      child: child,
      theme: WiredashThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.black87,
        secondaryColor: Colors.black87,
        secondaryBackgroundColor: Colors.black87,
        dividerColor: Colors.white,
        primaryTextColor: Colors.black87,
        secondaryTextColor: Colors.black87,
        tertiaryTextColor: Colors.black87,
      ),
    );
  }
}

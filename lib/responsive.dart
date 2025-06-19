import 'package:flutter/material.dart';

/// Helper class for responsive layout breakpoints.
class Responsive {
  const Responsive._();

  /// Returns true when the screen width is less than 600px.
  static bool isMobile(BuildContext context) {
    return MediaQuery.of(context).size.width < 600;
  }
}

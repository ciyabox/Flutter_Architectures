import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  MediaQueryData get getMediaQuery => MediaQuery.of(this);
  ThemeData get getTheme => Theme.of(this);
}

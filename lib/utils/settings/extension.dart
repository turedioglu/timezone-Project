import 'package:flutter/material.dart';

extension MediaQueryContext on BuildContext {
  MediaQueryData get currentContext => MediaQuery.of(this);
}

extension Size on BuildContext {
  double get height => currentContext.size.height;
  double get width => currentContext.size.width;
}


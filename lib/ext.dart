import 'package:flutter/material.dart';

extension BuildContextExt on BuildContext {
  NavigatorState get navi => Navigator.of(this);

  Future<T?> push<T>(Widget Function(BuildContext context) fn) =>
      navi.push(MaterialPageRoute(builder: fn));
}

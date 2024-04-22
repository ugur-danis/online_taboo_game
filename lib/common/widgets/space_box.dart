import 'package:flutter/material.dart';

enum Space {
  /// 4
  s(4),

  /// 10
  m(10),

  /// 16
  l(16),

  /// 20
  xl(20);

  const Space(this.size);
  final double size;
}

class SpaceBox extends SizedBox {
  SpaceBox(this.space, {super.key}) : super(height: space.size);
  SpaceBox.horizontal(this.space, {super.key}) : super(width: space.size);

  final Space space;
}

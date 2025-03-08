import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';

abstract class PlatformOutlinedBorder extends OutlinedBorder {
  const PlatformOutlinedBorder({super.side});

  OutlinedBorder builder(TargetPlatform platform);

  OutlinedBorder get s => builder(defaultTargetPlatform);

  @override
  OutlinedBorder copyWith({BorderSide? side}) {
    return s.copyWith(side: side);
  }

  @override
  Path getInnerPath(Rect rect, {TextDirection? textDirection}) {
    return s.getInnerPath(rect, textDirection: textDirection);
  }

  @override
  Path getOuterPath(Rect rect, {TextDirection? textDirection}) {
    return s.getOuterPath(rect, textDirection: textDirection);
  }

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection? textDirection}) {
    s.paint(canvas, rect, textDirection: textDirection);
  }

  @override
  ShapeBorder scale(double t) {
    return s.scale(t);
  }
}

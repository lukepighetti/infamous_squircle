import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';

import 'src/platform_outline_border.dart';
import 'src/squircle_border.dart';
import 'src/squircle_stadium_border.dart';

export 'src/squircle_border.dart';
export 'src/squircle_stadium_border.dart';

class PlatformStadiumBorder extends PlatformOutlinedBorder {
  const PlatformStadiumBorder({super.side});

  @override
  OutlinedBorder builder(TargetPlatform platform) {
    return switch (platform) {
      TargetPlatform.android ||
      TargetPlatform.fuchsia ||
      TargetPlatform.linux ||
      TargetPlatform.windows => StadiumBorder(side: side),
      TargetPlatform.iOS ||
      TargetPlatform.macOS => SquircleStadiumBorder(side: side),
    };
  }
}

class PlatformBorder extends PlatformOutlinedBorder {
  PlatformBorder.circular(double radius) : this.all(Radius.circular(radius));

  const PlatformBorder.vertical({
    Radius top = Radius.zero,
    Radius bottom = Radius.zero,
  }) : this.only(
         topLeft: top,
         topRight: top,
         bottomLeft: bottom,
         bottomRight: bottom,
       );

  const PlatformBorder.horizontal({
    Radius left = Radius.zero,
    Radius right = Radius.zero,
  }) : this.only(
         topLeft: left,
         topRight: right,
         bottomLeft: left,
         bottomRight: right,
       );

  const PlatformBorder.only({
    super.side,
    this.topLeft = Radius.zero,
    this.topRight = Radius.zero,
    this.bottomRight = Radius.zero,
    this.bottomLeft = Radius.zero,
  });

  const PlatformBorder.all(Radius radius)
    : this.only(
        topLeft: radius,
        topRight: radius,
        bottomRight: radius,
        bottomLeft: radius,
      );

  final Radius topLeft;
  final Radius topRight;
  final Radius bottomRight;
  final Radius bottomLeft;

  BorderRadius get r => BorderRadius.only(
    topLeft: topLeft,
    topRight: topRight,
    bottomRight: bottomRight,
    bottomLeft: bottomLeft,
  );

  @override
  OutlinedBorder builder(TargetPlatform platform) {
    return switch (platform) {
      TargetPlatform.android ||
      TargetPlatform.fuchsia ||
      TargetPlatform.linux ||
      TargetPlatform
          .windows => RoundedRectangleBorder(side: side, borderRadius: r),
      TargetPlatform.iOS ||
      TargetPlatform.macOS => SquircleBorder(side: side, borderRadius: r),
    };
  }
}

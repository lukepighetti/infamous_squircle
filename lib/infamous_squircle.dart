import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';

import 'src/platform_outline_border.dart';
import 'src/squircle_border.dart';
import 'src/squircle_stadium_border.dart';

export 'src/squircle_border.dart';
export 'src/squircle_stadium_border.dart';

/// A platform aware border that uses [SquircleStadiumBorder] on iOS / macOS and [StadiumBorder] everywhere else
final class PlatformStadiumBorder extends PlatformOutlinedBorder {
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

/// A platform aware border that uses [SquircleBorder] on iOS / macOS and [RoundedRectangleBorder] everywhere else
final class PlatformBorder extends PlatformOutlinedBorder {
  const PlatformBorder({super.side, this.borderRadius = BorderRadius.zero});

  final BorderRadiusGeometry borderRadius;

  @override
  OutlinedBorder builder(TargetPlatform platform) {
    return switch (platform) {
      TargetPlatform.android ||
      TargetPlatform.fuchsia ||
      TargetPlatform.linux ||
      TargetPlatform.windows => RoundedRectangleBorder(
        side: side,
        borderRadius: borderRadius,
      ),
      TargetPlatform.iOS || TargetPlatform.macOS => SquircleBorder(
        side: side,
        borderRadius: borderRadius,
      ),
    };
  }
}

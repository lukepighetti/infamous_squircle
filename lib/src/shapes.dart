import 'package:flutter/cupertino.dart';
import 'package:infamous_squircle/infamous_squircle.dart';

class Rectangle extends StatelessWidget {
  final BorderSide side;

  final BorderRadiusGeometry borderRadius;

  final Color? color;

  final DecorationImage? image;

  final Gradient? gradient;

  final List<BoxShadow>? shadows;

  final Clip clipBehavior;

  final double? width;

  final double? height;

  final Widget? child;

  final EdgeInsetsGeometry? margin;

  final EdgeInsetsGeometry? padding;

  final AlignmentGeometry? alignment;

  final BoxConstraints? constraints;

  Rectangle({
    super.key,
    this.alignment,
    this.padding,
    this.color,
    this.image,
    this.gradient,
    this.shadows,
    this.side = BorderSide.none,
    double radius = 0,
    this.width,
    this.height,
    this.constraints,
    this.margin,
    this.clipBehavior = Clip.hardEdge,
    this.child,
  }) : borderRadius = BorderRadius.circular(radius);

  const Rectangle.custom({
    super.key,
    this.alignment,
    this.padding,
    this.color,
    this.image,
    this.gradient,
    this.shadows,
    this.side = BorderSide.none,
    this.borderRadius = BorderRadius.zero,
    this.width,
    this.height,
    this.constraints,
    this.margin,
    this.clipBehavior = Clip.none,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      padding: padding,
      decoration: ShapeDecoration(
        color: color,
        image: image,
        gradient: gradient,
        shadows: shadows,
        shape: PlatformRectangleBorder(side: side, borderRadius: borderRadius),
      ),
      width: width,
      height: height,
      constraints: constraints,
      margin: margin,
      clipBehavior: clipBehavior,
      child: child,
    );
  }
}

class Circle extends StatelessWidget {
  final BorderSide side;

  final Color? color;

  final DecorationImage? image;

  final Gradient? gradient;

  final List<BoxShadow>? shadows;

  final Clip clipBehavior;

  final double? diameter;

  final Widget? child;

  final EdgeInsetsGeometry? margin;

  final EdgeInsetsGeometry? padding;

  final AlignmentGeometry? alignment;

  final BoxConstraints? constraints;

  const Circle({
    super.key,
    this.alignment,
    this.padding,
    this.color,
    this.image,
    this.gradient,
    this.shadows,
    this.side = BorderSide.none,
    this.diameter,
    this.constraints,
    this.margin,
    this.clipBehavior = Clip.hardEdge,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      padding: padding,
      decoration: BoxDecoration(
        color: color,
        image: image,
        gradient: gradient,
        boxShadow: shadows,
        shape: BoxShape.circle,
      ),
      width: diameter,
      height: diameter,
      constraints: constraints,
      margin: margin,
      clipBehavior: clipBehavior,
      child: child,
    );
  }
}

class Capsule extends StatelessWidget {
  final BorderSide side;

  final Color? color;

  final DecorationImage? image;

  final Gradient? gradient;

  final List<BoxShadow>? shadows;

  final Clip clipBehavior;

  final double? width;

  final double? height;

  final Widget? child;

  final EdgeInsetsGeometry? margin;

  final EdgeInsetsGeometry? padding;

  final AlignmentGeometry? alignment;

  final BoxConstraints? constraints;

  const Capsule({
    super.key,
    this.alignment,
    this.padding,
    this.color,
    this.image,
    this.gradient,
    this.shadows,
    this.side = BorderSide.none,
    this.width,
    this.height,
    this.constraints,
    this.margin,
    this.clipBehavior = Clip.hardEdge,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      padding: padding,
      decoration: ShapeDecoration(
        color: color,
        image: image,
        gradient: gradient,
        shadows: shadows,
        shape: PlatformStadiumBorder(side: side),
      ),
      width: width,
      height: height,
      constraints: constraints,
      margin: margin,
      clipBehavior: clipBehavior,
      child: child,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:white_whistle/flavors.dart';

/// @nodoc
class FlavorBanner extends StatelessWidget {
  /// @nodoc
  const FlavorBanner({
    Key? key,
    required this.child,
    this.show = true,
  }) : super(key: key);

  /// @nodoc
  final Widget child;

  /// @nodoc
  final bool show;

  @override
  Widget build(BuildContext context) {
    if (!show) {
      return child;
    }
    return Banner(
      color: Colors.green.withOpacity(0.25),
      location: BannerLocation.topStart,
      message: F.name,
      textDirection: TextDirection.ltr,
      textStyle: TextStyle(
        color: Colors.white.withOpacity(0.5),
        fontWeight: FontWeight.w700,
        fontSize: 12,
        letterSpacing: 1,
      ),
      child: child,
    );
  }
}
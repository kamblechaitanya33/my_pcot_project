import 'package:flutter/material.dart';

extension ViewportType on BuildContext {
  static const double mobileMax = 600;
  static const double tabletMax = 1200;

  double get currentWidth => MediaQuery.sizeOf(this).width;
  double get currentHeight => MediaQuery.sizeOf(this).height;

  bool get isMobile => currentWidth < mobileMax;
  bool get isTablet => currentWidth >= mobileMax && currentWidth < tabletMax;
  bool get isDesktop => currentWidth >= tabletMax;

  T responsiveValue<T>({
    required T mobile,
    required T tablet,
    required T desktop,
  }) {
    if (isDesktop) return desktop;
    if (isTablet) return tablet;
    return mobile;
  }

  double responsiveWidth({
    required double mobile,
    required double tablet,
    required double desktop,
  }) {
    return responsiveValue(mobile: mobile, tablet: tablet, desktop: desktop);
  }

  double responsiveHeight({
    required double mobile,
    required double tablet,
    required double desktop,
  }) {
    return responsiveValue(mobile: mobile, tablet: tablet, desktop: desktop);
  }
}

import 'package:flutter/material.dart';

import '../text_style/text_style_widget.dart';
class AppBar  {
  final Widget? titleWidget;
  final String? title;
  final Widget? action;
  final Widget? leading;
  final double? elevation;

  const AppBar({
    Key? key,
    this.titleWidget,
    this.title,
    this.action,
    this.leading,
    this.elevation,
  });



}
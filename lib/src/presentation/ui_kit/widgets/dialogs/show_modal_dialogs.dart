import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:santa/src/presentation/ui_kit/theme/app_colors.dart';

showFormDialog({
  required BuildContext context,
  Widget? child,
})  {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 15.0, sigmaY: 15.0),
      child: Center(
        child: Container(
          margin: const EdgeInsets.all(24.0),
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0, vertical: 20.0),
          decoration: BoxDecoration(
            color: AppColors.mixBlueGray1,
            borderRadius: BorderRadius.circular(20.0)
          ),
          constraints: const BoxConstraints(
            maxHeight: 480.0,
            maxWidth: double.infinity
          ),
          child: child,
        ),
      ),
    );
  });
}
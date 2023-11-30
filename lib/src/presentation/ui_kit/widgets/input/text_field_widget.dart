import 'package:flutter/material.dart';
import 'package:santa/src/presentation/ui_kit/theme/app_colors.dart';

class TextFieldWidget extends StatelessWidget {
  final String? hintText;
  final String? error;
  final TextEditingController? textEditingController;
  final FocusNode? focusNode;
  final VoidCallback? onEditingComplete;

  const TextFieldWidget({
    this.textEditingController,
    this.focusNode,
    this.onEditingComplete,
    this.hintText,
    this.error,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        minWidth: double.infinity,
        minHeight: 52.0,
      ),
      child: TextField(
        controller: textEditingController,
        focusNode: focusNode,
        onEditingComplete: onEditingComplete,
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: Theme.of(context).brightness == Brightness.light
                  ? AppColors.baseBlack
                  : AppColors.baseWhite,
            ),
        decoration: InputDecoration(
          hintText: hintText,
          helperText: error,
          helperStyle: Theme.of(context).textTheme.displaySmall?.copyWith(
                color: AppColors.brightRed,
              ),
        ),
      ),
    );
  }
}

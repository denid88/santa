import 'dart:math';

import 'package:flutter/material.dart';
import 'package:santa/src/domain/entities/kid.dart';
import 'package:santa/src/presentation/ui_kit/theme/app_colors.dart';
import 'package:santa/src/presentation/ui_kit/widgets/buttons/elevated_button_widget.dart';
import 'package:santa/src/presentation/ui_kit/widgets/input/text_field_widget.dart';

class AddKidFormWidget extends StatefulWidget {
  final Function(Kid) onAddKid;

  const AddKidFormWidget({
    required this.onAddKid,
    super.key
  });

  @override
  State<AddKidFormWidget> createState() => _AddKidFormWidgetState();
}

class _AddKidFormWidgetState extends State<AddKidFormWidget> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _countryController = TextEditingController();
  bool _isWellBehaved = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Add new kid',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
              color: AppColors.brightBlue
            ),
          ),
          const SizedBox(height: 24.0),
          TextFieldWidget(
            textEditingController: _nameController,
            hintText: 'Name',
          ),
          const SizedBox(height: 16.0),
          TextFieldWidget(
            textEditingController: _countryController,
            hintText: 'Country',
          ),
          const SizedBox(height: 16.0),
          Row(
            children: [
              const Text('Well behaved kid'),
              Checkbox(
                value: _isWellBehaved,
                activeColor: AppColors.brightBlue,
                onChanged: (value) {
                  setState(() {
                    _isWellBehaved = value ?? false;
                  });
                },
              ),
            ],
          ),
          const SizedBox(height: 24.0),
          ElevatedButtonWidget(
            buttonLabel: 'Add Kid',
            onPressed: () {
              final random = Random();
              widget.onAddKid.call(
                Kid(
                  id: random.nextInt(10000),
                  name: _nameController.text,
                  country: _countryController.text,
                  isWellBehaved: _isWellBehaved,
                ),
              );
              _nameController.clear();
              _countryController.clear();
            }
          ),
        ],
      ),
    );
  }
}

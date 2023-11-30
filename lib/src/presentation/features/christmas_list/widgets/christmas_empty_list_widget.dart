import 'package:flutter/material.dart';

class ChristmasEmptyListWidget extends StatelessWidget {
  const ChristmasEmptyListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Seems, you have no items in your list. Add some!',
        style: Theme.of(context).textTheme.bodyMedium,
      ),
    );
  }
}

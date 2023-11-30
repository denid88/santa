import 'package:flutter/material.dart';
import 'package:santa/src/domain/entities/kid.dart';
import 'package:santa/src/presentation/ui_kit/theme/app_colors.dart';

class ChristmasListWidget extends StatelessWidget {
  final List<Kid> kids;
  final void Function(int id, bool isWellBehaved)? onKidStatusChanged;

  const ChristmasListWidget({
    this.kids = const [],
    this.onKidStatusChanged,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: kids.length,
      itemBuilder: (context, index) {
        final Kid kid = kids[index];
        return Padding(
          padding: EdgeInsets.only(top: index == 0 ? 16.0 : 0.0),
          child: Card(
            child: InkWell(
              onTap: () => onKidStatusChanged?.call(kid.id, !kid.isWellBehaved),
              child: ListTile(
                title: Text(
                  kid.name,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: AppColors.brightBlue
                  ),
                ),
                subtitle: Text(
                  kid.country,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Good kid',
                      style: Theme.of(context).textTheme.displayLarge,
                    ),
                    Checkbox(
                      value: kid.isWellBehaved,
                      activeColor: AppColors.brightBlue,
                      onChanged: (value) =>
                        onKidStatusChanged?.call(kid.id, value ?? false)
                    ),
                  ],
                )
              ),
            ),
          ),
        );
      },
    );
  }
}

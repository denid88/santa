import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:santa/src/core/di/injectable.dart';
import 'package:santa/src/domain/blocs/christmas_list/christmas_list_bloc.dart';
import 'package:santa/src/presentation/features/christmas_list/widgets/add_kid_form_widget.dart';
import 'package:santa/src/presentation/features/christmas_list/widgets/christmas_empty_list_widget.dart';
import 'package:santa/src/presentation/features/christmas_list/widgets/christmas_list_widget.dart';
import 'package:santa/src/presentation/ui_kit/theme/app_colors.dart';
import 'package:santa/src/presentation/ui_kit/widgets/dialogs/show_modal_dialogs.dart';

class ChristmasListScreen extends StatefulWidget {
  const ChristmasListScreen({super.key});

  @override
  State<ChristmasListScreen> createState() => _ChristmasListScreenState();
}

class _ChristmasListScreenState extends State<ChristmasListScreen> {
  final ChristmasListBloc _bloc = getIt<ChristmasListBloc>();

  @override
  void initState() {
    super.initState();
    _bloc.add(GetChristmasListEvent());
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => _bloc,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Christmas List'),
          backgroundColor: AppColors.brightIndigo
        ),
        body: BlocConsumer<ChristmasListBloc, ChristmasListState>(
          bloc: _bloc,
          listener: (context, state) {
            if (state.status == ChristmasListStatus.error &&
                state.error != null) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(state.error.toString()),
                  backgroundColor: AppColors.brightIndigo,
                ),
              );
            }
          },
          builder: (context, state) {
            if (state.status == ChristmasListStatus.loading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            if (state.status == ChristmasListStatus.success) {
              return ChristmasListWidget(
                kids: state.kids,
                onKidStatusChanged: (id, isWellBehaved) =>
                  _bloc.add(ChangeKidStatusEvent(
                    id: id,
                    isWellBehaved: isWellBehaved
                  )),
              );
            }

            return const ChristmasEmptyListWidget();
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            showFormDialog(
              context: context,
              child: AddKidFormWidget(
                onAddKid: (kid) {
                  _bloc.add(AddKidEvent(kid: kid));
                  context.pop();
                },
              ),
            );
          },
          backgroundColor: AppColors.brightIndigo,
          child: const Icon(Icons.add),
        )
      ),
    );
  }
}

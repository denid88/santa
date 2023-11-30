import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:santa/src/domain/entities/kid.dart';
import 'package:santa/src/domain/usecases/get_kids_usecase.dart';

part 'christmas_list_bloc.freezed.dart';
part 'christmas_list_event.dart';
part 'christmas_list_state.dart';

@injectable
class ChristmasListBloc extends Bloc<ChristmasListEvent, ChristmasListState> {
  final GetKidUseCase _getKidUseCase;

  ChristmasListBloc(this._getKidUseCase) : super(ChristmasListState.initial()) {
    on<GetChristmasListEvent>(_onGetChristmasListEvent);
    on<ChangeKidStatusEvent>(_changeKidStatusEvent);
    on<AddKidEvent>(_addKidEvent);
  }

  Future<void> _onGetChristmasListEvent(
    GetChristmasListEvent event,
    Emitter<ChristmasListState> emit,
  ) async {
    emit(state.copyWith(status: ChristmasListStatus.loading));
    try {
      final kids = await _getKidUseCase();
      emit(state.copyWith(
        kids: kids,
        status: ChristmasListStatus.success,
      ));
    } catch (e) {
      emit(state.copyWith(
        status: ChristmasListStatus.error,
        error: e.toString(),
      ));
    }
  }

  Future<void> _changeKidStatusEvent(
    ChangeKidStatusEvent event,
    Emitter<ChristmasListState> emit,
  ) async {
    final updatedKids = state.kids.map((kid) {
      if (kid.id == event.id) {
        return kid.copyWith(isWellBehaved: event.isWellBehaved);
      }
      return kid;
    }).toList();
    emit(state.copyWith(kids: updatedKids));
  }

  Future<void> _addKidEvent(
    AddKidEvent event,
    Emitter<ChristmasListState> emit,
  ) async {
    final updatedKids = [...state.kids, event.kid];
    emit(state.copyWith(kids: updatedKids));
  }
}

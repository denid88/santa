part of 'christmas_list_bloc.dart';

@freezed
class ChristmasListState with _$ChristmasListState {
  factory ChristmasListState({
    required List<Kid> kids,
    required ChristmasListStatus status,
    required String? error,
  }) = _ChristmasListState;

  factory ChristmasListState.initial() => ChristmasListState(
    kids: [],
    status: ChristmasListStatus.idle,
    error: null,
  );
}

enum ChristmasListStatus {
  idle,
  loading,
  success,
  error,
}

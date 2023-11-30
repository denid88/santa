import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:santa/src/domain/blocs/christmas_list/christmas_list_bloc.dart';
import 'package:santa/src/domain/usecases/get_kids_usecase.dart';

import 'mock_data.dart';

class MockGetKidUseCase extends Mock implements GetKidUseCase {}

void main() {
  late ChristmasListBloc christmasListBloc;
  late GetKidUseCase mockGetKidUseCase;

  setUp(() {
    mockGetKidUseCase = MockGetKidUseCase();
    christmasListBloc = ChristmasListBloc(mockGetKidUseCase);
  });

  tearDown(() {
    christmasListBloc.close();
  });

  blocTest<ChristmasListBloc, ChristmasListState>(
    'emits [ChristmasListState.loading, ChristmasListState.success] when'
    ' GetChristmasListEvent is added',
    build: () => christmasListBloc,
    act: (bloc) {
      when(() => mockGetKidUseCase()).thenAnswer((_) async => mockKids);
      bloc.add(GetChristmasListEvent());
    },
    expect: () => [
      ChristmasListState(
        kids: [],
        status: ChristmasListStatus.loading,
        error: null
      ),
      ChristmasListState(
        kids: mockKids,
        status: ChristmasListStatus.success,
        error: null
      ),
    ],
  );

  blocTest<ChristmasListBloc, ChristmasListState>(
    'emits [ChristmasListState.error, ChristmasListState.success] when'
        ' something goes wrong',
    build: () => christmasListBloc,
    act: (bloc) {
      when(() => mockGetKidUseCase()).thenThrow(Exception('An error occurred'));
      bloc.add(GetChristmasListEvent());
    },
    expect: () => [
      ChristmasListState(
        kids: [],
        status: ChristmasListStatus.loading,
        error: null
      ),
      ChristmasListState(
        kids: [],
        status: ChristmasListStatus.error,
        error: 'Exception: An error occurred'
      ),
    ],
  );
}

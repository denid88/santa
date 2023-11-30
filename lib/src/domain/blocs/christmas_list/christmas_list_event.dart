part of 'christmas_list_bloc.dart';

@immutable
abstract class ChristmasListEvent {}

class GetChristmasListEvent extends ChristmasListEvent {}

class ChangeKidStatusEvent extends ChristmasListEvent {
  final int id;
  final bool isWellBehaved;

  ChangeKidStatusEvent({
    required this.id,
    required this.isWellBehaved,
  });
}

class AddKidEvent extends ChristmasListEvent {
  final Kid kid;

  AddKidEvent({
    required this.kid,
  });
}
import 'package:freezed_annotation/freezed_annotation.dart';

part 'kid.freezed.dart';
part 'kid.g.dart';

@freezed
class Kid with _$Kid {
  factory Kid({
    required int id,
    required String name,
    required String country,
    @Default(false) bool isWellBehaved,
  }) = _Kid;

  factory Kid.fromJson(Map<String, Object?> json) => _$KidFromJson(json);
}
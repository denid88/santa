// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'christmas_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChristmasListState {
  List<Kid> get kids => throw _privateConstructorUsedError;
  ChristmasListStatus get status => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChristmasListStateCopyWith<ChristmasListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChristmasListStateCopyWith<$Res> {
  factory $ChristmasListStateCopyWith(
          ChristmasListState value, $Res Function(ChristmasListState) then) =
      _$ChristmasListStateCopyWithImpl<$Res, ChristmasListState>;
  @useResult
  $Res call({List<Kid> kids, ChristmasListStatus status, String? error});
}

/// @nodoc
class _$ChristmasListStateCopyWithImpl<$Res, $Val extends ChristmasListState>
    implements $ChristmasListStateCopyWith<$Res> {
  _$ChristmasListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kids = null,
    Object? status = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      kids: null == kids
          ? _value.kids
          : kids // ignore: cast_nullable_to_non_nullable
              as List<Kid>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ChristmasListStatus,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChristmasListStateImplCopyWith<$Res>
    implements $ChristmasListStateCopyWith<$Res> {
  factory _$$ChristmasListStateImplCopyWith(_$ChristmasListStateImpl value,
          $Res Function(_$ChristmasListStateImpl) then) =
      __$$ChristmasListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Kid> kids, ChristmasListStatus status, String? error});
}

/// @nodoc
class __$$ChristmasListStateImplCopyWithImpl<$Res>
    extends _$ChristmasListStateCopyWithImpl<$Res, _$ChristmasListStateImpl>
    implements _$$ChristmasListStateImplCopyWith<$Res> {
  __$$ChristmasListStateImplCopyWithImpl(_$ChristmasListStateImpl _value,
      $Res Function(_$ChristmasListStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kids = null,
    Object? status = null,
    Object? error = freezed,
  }) {
    return _then(_$ChristmasListStateImpl(
      kids: null == kids
          ? _value._kids
          : kids // ignore: cast_nullable_to_non_nullable
              as List<Kid>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ChristmasListStatus,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ChristmasListStateImpl implements _ChristmasListState {
  _$ChristmasListStateImpl(
      {required final List<Kid> kids,
      required this.status,
      required this.error})
      : _kids = kids;

  final List<Kid> _kids;
  @override
  List<Kid> get kids {
    if (_kids is EqualUnmodifiableListView) return _kids;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_kids);
  }

  @override
  final ChristmasListStatus status;
  @override
  final String? error;

  @override
  String toString() {
    return 'ChristmasListState(kids: $kids, status: $status, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChristmasListStateImpl &&
            const DeepCollectionEquality().equals(other._kids, _kids) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_kids), status, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChristmasListStateImplCopyWith<_$ChristmasListStateImpl> get copyWith =>
      __$$ChristmasListStateImplCopyWithImpl<_$ChristmasListStateImpl>(
          this, _$identity);
}

abstract class _ChristmasListState implements ChristmasListState {
  factory _ChristmasListState(
      {required final List<Kid> kids,
      required final ChristmasListStatus status,
      required final String? error}) = _$ChristmasListStateImpl;

  @override
  List<Kid> get kids;
  @override
  ChristmasListStatus get status;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$ChristmasListStateImplCopyWith<_$ChristmasListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

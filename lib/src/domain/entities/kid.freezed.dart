// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'kid.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Kid _$KidFromJson(Map<String, dynamic> json) {
  return _Kid.fromJson(json);
}

/// @nodoc
mixin _$Kid {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  bool get isWellBehaved => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KidCopyWith<Kid> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KidCopyWith<$Res> {
  factory $KidCopyWith(Kid value, $Res Function(Kid) then) =
      _$KidCopyWithImpl<$Res, Kid>;
  @useResult
  $Res call({int id, String name, String country, bool isWellBehaved});
}

/// @nodoc
class _$KidCopyWithImpl<$Res, $Val extends Kid> implements $KidCopyWith<$Res> {
  _$KidCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? country = null,
    Object? isWellBehaved = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      isWellBehaved: null == isWellBehaved
          ? _value.isWellBehaved
          : isWellBehaved // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$KidImplCopyWith<$Res> implements $KidCopyWith<$Res> {
  factory _$$KidImplCopyWith(_$KidImpl value, $Res Function(_$KidImpl) then) =
      __$$KidImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String country, bool isWellBehaved});
}

/// @nodoc
class __$$KidImplCopyWithImpl<$Res> extends _$KidCopyWithImpl<$Res, _$KidImpl>
    implements _$$KidImplCopyWith<$Res> {
  __$$KidImplCopyWithImpl(_$KidImpl _value, $Res Function(_$KidImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? country = null,
    Object? isWellBehaved = null,
  }) {
    return _then(_$KidImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      isWellBehaved: null == isWellBehaved
          ? _value.isWellBehaved
          : isWellBehaved // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$KidImpl implements _Kid {
  _$KidImpl(
      {required this.id,
      required this.name,
      required this.country,
      this.isWellBehaved = false});

  factory _$KidImpl.fromJson(Map<String, dynamic> json) =>
      _$$KidImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String country;
  @override
  @JsonKey()
  final bool isWellBehaved;

  @override
  String toString() {
    return 'Kid(id: $id, name: $name, country: $country, isWellBehaved: $isWellBehaved)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KidImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.isWellBehaved, isWellBehaved) ||
                other.isWellBehaved == isWellBehaved));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, country, isWellBehaved);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$KidImplCopyWith<_$KidImpl> get copyWith =>
      __$$KidImplCopyWithImpl<_$KidImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$KidImplToJson(
      this,
    );
  }
}

abstract class _Kid implements Kid {
  factory _Kid(
      {required final int id,
      required final String name,
      required final String country,
      final bool isWellBehaved}) = _$KidImpl;

  factory _Kid.fromJson(Map<String, dynamic> json) = _$KidImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get country;
  @override
  bool get isWellBehaved;
  @override
  @JsonKey(ignore: true)
  _$$KidImplCopyWith<_$KidImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

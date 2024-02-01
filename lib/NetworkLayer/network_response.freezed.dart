// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'network_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NetworkResponse {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<String, dynamic> data) success,
    required TResult Function(List<dynamic> data) successList,
    required TResult Function(String message) error,
    required TResult Function(String message) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<String, dynamic> data)? success,
    TResult? Function(List<dynamic> data)? successList,
    TResult? Function(String message)? error,
    TResult? Function(String message)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, dynamic> data)? success,
    TResult Function(List<dynamic> data)? successList,
    TResult Function(String message)? error,
    TResult Function(String message)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OK value) success,
    required TResult Function(OKK value) successList,
    required TResult Function(ERROR value) error,
    required TResult Function(LOADING value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OK value)? success,
    TResult? Function(OKK value)? successList,
    TResult? Function(ERROR value)? error,
    TResult? Function(LOADING value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OK value)? success,
    TResult Function(OKK value)? successList,
    TResult Function(ERROR value)? error,
    TResult Function(LOADING value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetworkResponseCopyWith<$Res> {
  factory $NetworkResponseCopyWith(
          NetworkResponse value, $Res Function(NetworkResponse) then) =
      _$NetworkResponseCopyWithImpl<$Res, NetworkResponse>;
}

/// @nodoc
class _$NetworkResponseCopyWithImpl<$Res, $Val extends NetworkResponse>
    implements $NetworkResponseCopyWith<$Res> {
  _$NetworkResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$OKCopyWith<$Res> {
  factory _$$OKCopyWith(_$OK value, $Res Function(_$OK) then) =
      __$$OKCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<String, dynamic> data});
}

/// @nodoc
class __$$OKCopyWithImpl<$Res> extends _$NetworkResponseCopyWithImpl<$Res, _$OK>
    implements _$$OKCopyWith<$Res> {
  __$$OKCopyWithImpl(_$OK _value, $Res Function(_$OK) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$OK(
      null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$OK implements OK {
  const _$OK(final Map<String, dynamic> data) : _data = data;

  final Map<String, dynamic> _data;
  @override
  Map<String, dynamic> get data {
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_data);
  }

  @override
  String toString() {
    return 'NetworkResponse.success(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OK &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OKCopyWith<_$OK> get copyWith =>
      __$$OKCopyWithImpl<_$OK>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<String, dynamic> data) success,
    required TResult Function(List<dynamic> data) successList,
    required TResult Function(String message) error,
    required TResult Function(String message) loading,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<String, dynamic> data)? success,
    TResult? Function(List<dynamic> data)? successList,
    TResult? Function(String message)? error,
    TResult? Function(String message)? loading,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, dynamic> data)? success,
    TResult Function(List<dynamic> data)? successList,
    TResult Function(String message)? error,
    TResult Function(String message)? loading,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OK value) success,
    required TResult Function(OKK value) successList,
    required TResult Function(ERROR value) error,
    required TResult Function(LOADING value) loading,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OK value)? success,
    TResult? Function(OKK value)? successList,
    TResult? Function(ERROR value)? error,
    TResult? Function(LOADING value)? loading,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OK value)? success,
    TResult Function(OKK value)? successList,
    TResult Function(ERROR value)? error,
    TResult Function(LOADING value)? loading,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class OK implements NetworkResponse {
  const factory OK(final Map<String, dynamic> data) = _$OK;

  Map<String, dynamic> get data;
  @JsonKey(ignore: true)
  _$$OKCopyWith<_$OK> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OKKCopyWith<$Res> {
  factory _$$OKKCopyWith(_$OKK value, $Res Function(_$OKK) then) =
      __$$OKKCopyWithImpl<$Res>;
  @useResult
  $Res call({List<dynamic> data});
}

/// @nodoc
class __$$OKKCopyWithImpl<$Res>
    extends _$NetworkResponseCopyWithImpl<$Res, _$OKK>
    implements _$$OKKCopyWith<$Res> {
  __$$OKKCopyWithImpl(_$OKK _value, $Res Function(_$OKK) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$OKK(
      null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc

class _$OKK implements OKK {
  const _$OKK(final List<dynamic> data) : _data = data;

  final List<dynamic> _data;
  @override
  List<dynamic> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'NetworkResponse.successList(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OKK &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OKKCopyWith<_$OKK> get copyWith =>
      __$$OKKCopyWithImpl<_$OKK>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<String, dynamic> data) success,
    required TResult Function(List<dynamic> data) successList,
    required TResult Function(String message) error,
    required TResult Function(String message) loading,
  }) {
    return successList(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<String, dynamic> data)? success,
    TResult? Function(List<dynamic> data)? successList,
    TResult? Function(String message)? error,
    TResult? Function(String message)? loading,
  }) {
    return successList?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, dynamic> data)? success,
    TResult Function(List<dynamic> data)? successList,
    TResult Function(String message)? error,
    TResult Function(String message)? loading,
    required TResult orElse(),
  }) {
    if (successList != null) {
      return successList(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OK value) success,
    required TResult Function(OKK value) successList,
    required TResult Function(ERROR value) error,
    required TResult Function(LOADING value) loading,
  }) {
    return successList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OK value)? success,
    TResult? Function(OKK value)? successList,
    TResult? Function(ERROR value)? error,
    TResult? Function(LOADING value)? loading,
  }) {
    return successList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OK value)? success,
    TResult Function(OKK value)? successList,
    TResult Function(ERROR value)? error,
    TResult Function(LOADING value)? loading,
    required TResult orElse(),
  }) {
    if (successList != null) {
      return successList(this);
    }
    return orElse();
  }
}

abstract class OKK implements NetworkResponse {
  const factory OKK(final List<dynamic> data) = _$OKK;

  List<dynamic> get data;
  @JsonKey(ignore: true)
  _$$OKKCopyWith<_$OKK> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ERRORCopyWith<$Res> {
  factory _$$ERRORCopyWith(_$ERROR value, $Res Function(_$ERROR) then) =
      __$$ERRORCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ERRORCopyWithImpl<$Res>
    extends _$NetworkResponseCopyWithImpl<$Res, _$ERROR>
    implements _$$ERRORCopyWith<$Res> {
  __$$ERRORCopyWithImpl(_$ERROR _value, $Res Function(_$ERROR) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ERROR(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ERROR implements ERROR {
  const _$ERROR(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'NetworkResponse.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ERROR &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ERRORCopyWith<_$ERROR> get copyWith =>
      __$$ERRORCopyWithImpl<_$ERROR>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<String, dynamic> data) success,
    required TResult Function(List<dynamic> data) successList,
    required TResult Function(String message) error,
    required TResult Function(String message) loading,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<String, dynamic> data)? success,
    TResult? Function(List<dynamic> data)? successList,
    TResult? Function(String message)? error,
    TResult? Function(String message)? loading,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, dynamic> data)? success,
    TResult Function(List<dynamic> data)? successList,
    TResult Function(String message)? error,
    TResult Function(String message)? loading,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OK value) success,
    required TResult Function(OKK value) successList,
    required TResult Function(ERROR value) error,
    required TResult Function(LOADING value) loading,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OK value)? success,
    TResult? Function(OKK value)? successList,
    TResult? Function(ERROR value)? error,
    TResult? Function(LOADING value)? loading,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OK value)? success,
    TResult Function(OKK value)? successList,
    TResult Function(ERROR value)? error,
    TResult Function(LOADING value)? loading,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ERROR implements NetworkResponse {
  const factory ERROR(final String message) = _$ERROR;

  String get message;
  @JsonKey(ignore: true)
  _$$ERRORCopyWith<_$ERROR> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LOADINGCopyWith<$Res> {
  factory _$$LOADINGCopyWith(_$LOADING value, $Res Function(_$LOADING) then) =
      __$$LOADINGCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$LOADINGCopyWithImpl<$Res>
    extends _$NetworkResponseCopyWithImpl<$Res, _$LOADING>
    implements _$$LOADINGCopyWith<$Res> {
  __$$LOADINGCopyWithImpl(_$LOADING _value, $Res Function(_$LOADING) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$LOADING(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LOADING implements LOADING {
  const _$LOADING(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'NetworkResponse.loading(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LOADING &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LOADINGCopyWith<_$LOADING> get copyWith =>
      __$$LOADINGCopyWithImpl<_$LOADING>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<String, dynamic> data) success,
    required TResult Function(List<dynamic> data) successList,
    required TResult Function(String message) error,
    required TResult Function(String message) loading,
  }) {
    return loading(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<String, dynamic> data)? success,
    TResult? Function(List<dynamic> data)? successList,
    TResult? Function(String message)? error,
    TResult? Function(String message)? loading,
  }) {
    return loading?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, dynamic> data)? success,
    TResult Function(List<dynamic> data)? successList,
    TResult Function(String message)? error,
    TResult Function(String message)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OK value) success,
    required TResult Function(OKK value) successList,
    required TResult Function(ERROR value) error,
    required TResult Function(LOADING value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OK value)? success,
    TResult? Function(OKK value)? successList,
    TResult? Function(ERROR value)? error,
    TResult? Function(LOADING value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OK value)? success,
    TResult Function(OKK value)? successList,
    TResult Function(ERROR value)? error,
    TResult Function(LOADING value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LOADING implements NetworkResponse {
  const factory LOADING(final String message) = _$LOADING;

  String get message;
  @JsonKey(ignore: true)
  _$$LOADINGCopyWith<_$LOADING> get copyWith =>
      throw _privateConstructorUsedError;
}

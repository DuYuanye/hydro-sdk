// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'dartir.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$DartIrTearOff {
  const _$DartIrTearOff();

// ignore: unused_element
  _$FromDartLinebreak fromDartLinebreak(
      {@required DartLinebreak dartLinebreak}) {
    return _$FromDartLinebreak(
      dartLinebreak: dartLinebreak,
    );
  }

// ignore: unused_element
  _$FromLoadNamespaceSymbolDeclaration fromLoadNamepsaceSymbolDeclaration(
      {@required
          LoadNamespaceSymbolDeclaration loadNamespaceSymbolDeclaration}) {
    return _$FromLoadNamespaceSymbolDeclaration(
      loadNamespaceSymbolDeclaration: loadNamespaceSymbolDeclaration,
    );
  }

// ignore: unused_element
  _$FromRTManagedClassDeclaration fromRTManagedClassDeclaration(
      {@required RTManagedClassDeclaration rtManagedClassDeclaration}) {
    return _$FromRTManagedClassDeclaration(
      rtManagedClassDeclaration: rtManagedClassDeclaration,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $DartIr = _$DartIrTearOff();

/// @nodoc
mixin _$DartIr {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fromDartLinebreak(DartLinebreak dartLinebreak),
    @required
        Result fromLoadNamepsaceSymbolDeclaration(
            LoadNamespaceSymbolDeclaration loadNamespaceSymbolDeclaration),
    @required
        Result fromRTManagedClassDeclaration(
            RTManagedClassDeclaration rtManagedClassDeclaration),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fromDartLinebreak(DartLinebreak dartLinebreak),
    Result fromLoadNamepsaceSymbolDeclaration(
        LoadNamespaceSymbolDeclaration loadNamespaceSymbolDeclaration),
    Result fromRTManagedClassDeclaration(
        RTManagedClassDeclaration rtManagedClassDeclaration),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fromDartLinebreak(_$FromDartLinebreak value),
    @required
        Result fromLoadNamepsaceSymbolDeclaration(
            _$FromLoadNamespaceSymbolDeclaration value),
    @required
        Result fromRTManagedClassDeclaration(
            _$FromRTManagedClassDeclaration value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fromDartLinebreak(_$FromDartLinebreak value),
    Result fromLoadNamepsaceSymbolDeclaration(
        _$FromLoadNamespaceSymbolDeclaration value),
    Result fromRTManagedClassDeclaration(_$FromRTManagedClassDeclaration value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $DartIrCopyWith<$Res> {
  factory $DartIrCopyWith(DartIr value, $Res Function(DartIr) then) =
      _$DartIrCopyWithImpl<$Res>;
}

/// @nodoc
class _$DartIrCopyWithImpl<$Res> implements $DartIrCopyWith<$Res> {
  _$DartIrCopyWithImpl(this._value, this._then);

  final DartIr _value;
  // ignore: unused_field
  final $Res Function(DartIr) _then;
}

/// @nodoc
abstract class _$$FromDartLinebreakCopyWith<$Res> {
  factory _$$FromDartLinebreakCopyWith(
          _$FromDartLinebreak value, $Res Function(_$FromDartLinebreak) then) =
      __$$FromDartLinebreakCopyWithImpl<$Res>;
  $Res call({DartLinebreak dartLinebreak});
}

/// @nodoc
class __$$FromDartLinebreakCopyWithImpl<$Res> extends _$DartIrCopyWithImpl<$Res>
    implements _$$FromDartLinebreakCopyWith<$Res> {
  __$$FromDartLinebreakCopyWithImpl(
      _$FromDartLinebreak _value, $Res Function(_$FromDartLinebreak) _then)
      : super(_value, (v) => _then(v as _$FromDartLinebreak));

  @override
  _$FromDartLinebreak get _value => super._value as _$FromDartLinebreak;

  @override
  $Res call({
    Object dartLinebreak = freezed,
  }) {
    return _then(_$FromDartLinebreak(
      dartLinebreak: dartLinebreak == freezed
          ? _value.dartLinebreak
          : dartLinebreak as DartLinebreak,
    ));
  }
}

/// @nodoc
class _$_$FromDartLinebreak implements _$FromDartLinebreak {
  _$_$FromDartLinebreak({@required this.dartLinebreak})
      : assert(dartLinebreak != null);

  @override
  final DartLinebreak dartLinebreak;

  @override
  String toString() {
    return 'DartIr.fromDartLinebreak(dartLinebreak: $dartLinebreak)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$FromDartLinebreak &&
            (identical(other.dartLinebreak, dartLinebreak) ||
                const DeepCollectionEquality()
                    .equals(other.dartLinebreak, dartLinebreak)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(dartLinebreak);

  @override
  _$$FromDartLinebreakCopyWith<_$FromDartLinebreak> get copyWith =>
      __$$FromDartLinebreakCopyWithImpl<_$FromDartLinebreak>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fromDartLinebreak(DartLinebreak dartLinebreak),
    @required
        Result fromLoadNamepsaceSymbolDeclaration(
            LoadNamespaceSymbolDeclaration loadNamespaceSymbolDeclaration),
    @required
        Result fromRTManagedClassDeclaration(
            RTManagedClassDeclaration rtManagedClassDeclaration),
  }) {
    assert(fromDartLinebreak != null);
    assert(fromLoadNamepsaceSymbolDeclaration != null);
    assert(fromRTManagedClassDeclaration != null);
    return fromDartLinebreak(dartLinebreak);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fromDartLinebreak(DartLinebreak dartLinebreak),
    Result fromLoadNamepsaceSymbolDeclaration(
        LoadNamespaceSymbolDeclaration loadNamespaceSymbolDeclaration),
    Result fromRTManagedClassDeclaration(
        RTManagedClassDeclaration rtManagedClassDeclaration),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fromDartLinebreak != null) {
      return fromDartLinebreak(dartLinebreak);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fromDartLinebreak(_$FromDartLinebreak value),
    @required
        Result fromLoadNamepsaceSymbolDeclaration(
            _$FromLoadNamespaceSymbolDeclaration value),
    @required
        Result fromRTManagedClassDeclaration(
            _$FromRTManagedClassDeclaration value),
  }) {
    assert(fromDartLinebreak != null);
    assert(fromLoadNamepsaceSymbolDeclaration != null);
    assert(fromRTManagedClassDeclaration != null);
    return fromDartLinebreak(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fromDartLinebreak(_$FromDartLinebreak value),
    Result fromLoadNamepsaceSymbolDeclaration(
        _$FromLoadNamespaceSymbolDeclaration value),
    Result fromRTManagedClassDeclaration(_$FromRTManagedClassDeclaration value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fromDartLinebreak != null) {
      return fromDartLinebreak(this);
    }
    return orElse();
  }
}

abstract class _$FromDartLinebreak implements DartIr {
  factory _$FromDartLinebreak({@required DartLinebreak dartLinebreak}) =
      _$_$FromDartLinebreak;

  DartLinebreak get dartLinebreak;
  _$$FromDartLinebreakCopyWith<_$FromDartLinebreak> get copyWith;
}

/// @nodoc
abstract class _$$FromLoadNamespaceSymbolDeclarationCopyWith<$Res> {
  factory _$$FromLoadNamespaceSymbolDeclarationCopyWith(
          _$FromLoadNamespaceSymbolDeclaration value,
          $Res Function(_$FromLoadNamespaceSymbolDeclaration) then) =
      __$$FromLoadNamespaceSymbolDeclarationCopyWithImpl<$Res>;
  $Res call({LoadNamespaceSymbolDeclaration loadNamespaceSymbolDeclaration});
}

/// @nodoc
class __$$FromLoadNamespaceSymbolDeclarationCopyWithImpl<$Res>
    extends _$DartIrCopyWithImpl<$Res>
    implements _$$FromLoadNamespaceSymbolDeclarationCopyWith<$Res> {
  __$$FromLoadNamespaceSymbolDeclarationCopyWithImpl(
      _$FromLoadNamespaceSymbolDeclaration _value,
      $Res Function(_$FromLoadNamespaceSymbolDeclaration) _then)
      : super(_value, (v) => _then(v as _$FromLoadNamespaceSymbolDeclaration));

  @override
  _$FromLoadNamespaceSymbolDeclaration get _value =>
      super._value as _$FromLoadNamespaceSymbolDeclaration;

  @override
  $Res call({
    Object loadNamespaceSymbolDeclaration = freezed,
  }) {
    return _then(_$FromLoadNamespaceSymbolDeclaration(
      loadNamespaceSymbolDeclaration: loadNamespaceSymbolDeclaration == freezed
          ? _value.loadNamespaceSymbolDeclaration
          : loadNamespaceSymbolDeclaration as LoadNamespaceSymbolDeclaration,
    ));
  }
}

/// @nodoc
class _$_$FromLoadNamespaceSymbolDeclaration
    implements _$FromLoadNamespaceSymbolDeclaration {
  _$_$FromLoadNamespaceSymbolDeclaration(
      {@required this.loadNamespaceSymbolDeclaration})
      : assert(loadNamespaceSymbolDeclaration != null);

  @override
  final LoadNamespaceSymbolDeclaration loadNamespaceSymbolDeclaration;

  @override
  String toString() {
    return 'DartIr.fromLoadNamepsaceSymbolDeclaration(loadNamespaceSymbolDeclaration: $loadNamespaceSymbolDeclaration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$FromLoadNamespaceSymbolDeclaration &&
            (identical(other.loadNamespaceSymbolDeclaration,
                    loadNamespaceSymbolDeclaration) ||
                const DeepCollectionEquality().equals(
                    other.loadNamespaceSymbolDeclaration,
                    loadNamespaceSymbolDeclaration)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(loadNamespaceSymbolDeclaration);

  @override
  _$$FromLoadNamespaceSymbolDeclarationCopyWith<
          _$FromLoadNamespaceSymbolDeclaration>
      get copyWith => __$$FromLoadNamespaceSymbolDeclarationCopyWithImpl<
          _$FromLoadNamespaceSymbolDeclaration>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fromDartLinebreak(DartLinebreak dartLinebreak),
    @required
        Result fromLoadNamepsaceSymbolDeclaration(
            LoadNamespaceSymbolDeclaration loadNamespaceSymbolDeclaration),
    @required
        Result fromRTManagedClassDeclaration(
            RTManagedClassDeclaration rtManagedClassDeclaration),
  }) {
    assert(fromDartLinebreak != null);
    assert(fromLoadNamepsaceSymbolDeclaration != null);
    assert(fromRTManagedClassDeclaration != null);
    return fromLoadNamepsaceSymbolDeclaration(loadNamespaceSymbolDeclaration);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fromDartLinebreak(DartLinebreak dartLinebreak),
    Result fromLoadNamepsaceSymbolDeclaration(
        LoadNamespaceSymbolDeclaration loadNamespaceSymbolDeclaration),
    Result fromRTManagedClassDeclaration(
        RTManagedClassDeclaration rtManagedClassDeclaration),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fromLoadNamepsaceSymbolDeclaration != null) {
      return fromLoadNamepsaceSymbolDeclaration(loadNamespaceSymbolDeclaration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fromDartLinebreak(_$FromDartLinebreak value),
    @required
        Result fromLoadNamepsaceSymbolDeclaration(
            _$FromLoadNamespaceSymbolDeclaration value),
    @required
        Result fromRTManagedClassDeclaration(
            _$FromRTManagedClassDeclaration value),
  }) {
    assert(fromDartLinebreak != null);
    assert(fromLoadNamepsaceSymbolDeclaration != null);
    assert(fromRTManagedClassDeclaration != null);
    return fromLoadNamepsaceSymbolDeclaration(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fromDartLinebreak(_$FromDartLinebreak value),
    Result fromLoadNamepsaceSymbolDeclaration(
        _$FromLoadNamespaceSymbolDeclaration value),
    Result fromRTManagedClassDeclaration(_$FromRTManagedClassDeclaration value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fromLoadNamepsaceSymbolDeclaration != null) {
      return fromLoadNamepsaceSymbolDeclaration(this);
    }
    return orElse();
  }
}

abstract class _$FromLoadNamespaceSymbolDeclaration implements DartIr {
  factory _$FromLoadNamespaceSymbolDeclaration(
          {@required
              LoadNamespaceSymbolDeclaration loadNamespaceSymbolDeclaration}) =
      _$_$FromLoadNamespaceSymbolDeclaration;

  LoadNamespaceSymbolDeclaration get loadNamespaceSymbolDeclaration;
  _$$FromLoadNamespaceSymbolDeclarationCopyWith<
      _$FromLoadNamespaceSymbolDeclaration> get copyWith;
}

/// @nodoc
abstract class _$$FromRTManagedClassDeclarationCopyWith<$Res> {
  factory _$$FromRTManagedClassDeclarationCopyWith(
          _$FromRTManagedClassDeclaration value,
          $Res Function(_$FromRTManagedClassDeclaration) then) =
      __$$FromRTManagedClassDeclarationCopyWithImpl<$Res>;
  $Res call({RTManagedClassDeclaration rtManagedClassDeclaration});
}

/// @nodoc
class __$$FromRTManagedClassDeclarationCopyWithImpl<$Res>
    extends _$DartIrCopyWithImpl<$Res>
    implements _$$FromRTManagedClassDeclarationCopyWith<$Res> {
  __$$FromRTManagedClassDeclarationCopyWithImpl(
      _$FromRTManagedClassDeclaration _value,
      $Res Function(_$FromRTManagedClassDeclaration) _then)
      : super(_value, (v) => _then(v as _$FromRTManagedClassDeclaration));

  @override
  _$FromRTManagedClassDeclaration get _value =>
      super._value as _$FromRTManagedClassDeclaration;

  @override
  $Res call({
    Object rtManagedClassDeclaration = freezed,
  }) {
    return _then(_$FromRTManagedClassDeclaration(
      rtManagedClassDeclaration: rtManagedClassDeclaration == freezed
          ? _value.rtManagedClassDeclaration
          : rtManagedClassDeclaration as RTManagedClassDeclaration,
    ));
  }
}

/// @nodoc
class _$_$FromRTManagedClassDeclaration
    implements _$FromRTManagedClassDeclaration {
  _$_$FromRTManagedClassDeclaration({@required this.rtManagedClassDeclaration})
      : assert(rtManagedClassDeclaration != null);

  @override
  final RTManagedClassDeclaration rtManagedClassDeclaration;

  @override
  String toString() {
    return 'DartIr.fromRTManagedClassDeclaration(rtManagedClassDeclaration: $rtManagedClassDeclaration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _$FromRTManagedClassDeclaration &&
            (identical(other.rtManagedClassDeclaration,
                    rtManagedClassDeclaration) ||
                const DeepCollectionEquality().equals(
                    other.rtManagedClassDeclaration,
                    rtManagedClassDeclaration)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(rtManagedClassDeclaration);

  @override
  _$$FromRTManagedClassDeclarationCopyWith<_$FromRTManagedClassDeclaration>
      get copyWith => __$$FromRTManagedClassDeclarationCopyWithImpl<
          _$FromRTManagedClassDeclaration>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fromDartLinebreak(DartLinebreak dartLinebreak),
    @required
        Result fromLoadNamepsaceSymbolDeclaration(
            LoadNamespaceSymbolDeclaration loadNamespaceSymbolDeclaration),
    @required
        Result fromRTManagedClassDeclaration(
            RTManagedClassDeclaration rtManagedClassDeclaration),
  }) {
    assert(fromDartLinebreak != null);
    assert(fromLoadNamepsaceSymbolDeclaration != null);
    assert(fromRTManagedClassDeclaration != null);
    return fromRTManagedClassDeclaration(rtManagedClassDeclaration);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fromDartLinebreak(DartLinebreak dartLinebreak),
    Result fromLoadNamepsaceSymbolDeclaration(
        LoadNamespaceSymbolDeclaration loadNamespaceSymbolDeclaration),
    Result fromRTManagedClassDeclaration(
        RTManagedClassDeclaration rtManagedClassDeclaration),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fromRTManagedClassDeclaration != null) {
      return fromRTManagedClassDeclaration(rtManagedClassDeclaration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fromDartLinebreak(_$FromDartLinebreak value),
    @required
        Result fromLoadNamepsaceSymbolDeclaration(
            _$FromLoadNamespaceSymbolDeclaration value),
    @required
        Result fromRTManagedClassDeclaration(
            _$FromRTManagedClassDeclaration value),
  }) {
    assert(fromDartLinebreak != null);
    assert(fromLoadNamepsaceSymbolDeclaration != null);
    assert(fromRTManagedClassDeclaration != null);
    return fromRTManagedClassDeclaration(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fromDartLinebreak(_$FromDartLinebreak value),
    Result fromLoadNamepsaceSymbolDeclaration(
        _$FromLoadNamespaceSymbolDeclaration value),
    Result fromRTManagedClassDeclaration(_$FromRTManagedClassDeclaration value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fromRTManagedClassDeclaration != null) {
      return fromRTManagedClassDeclaration(this);
    }
    return orElse();
  }
}

abstract class _$FromRTManagedClassDeclaration implements DartIr {
  factory _$FromRTManagedClassDeclaration(
          {@required RTManagedClassDeclaration rtManagedClassDeclaration}) =
      _$_$FromRTManagedClassDeclaration;

  RTManagedClassDeclaration get rtManagedClassDeclaration;
  _$$FromRTManagedClassDeclarationCopyWith<_$FromRTManagedClassDeclaration>
      get copyWith;
}

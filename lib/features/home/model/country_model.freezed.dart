// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'country_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CountryModel _$CountryModelFromJson(Map<String, dynamic> json) {
  return _CountryModel.fromJson(json);
}

/// @nodoc
mixin _$CountryModel {
  Flags get flags => throw _privateConstructorUsedError;
  Name get name => throw _privateConstructorUsedError;
  List<String> get capital => throw _privateConstructorUsedError;
  Map<String, String> get languages => throw _privateConstructorUsedError;

  /// Serializes this CountryModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CountryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CountryModelCopyWith<CountryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryModelCopyWith<$Res> {
  factory $CountryModelCopyWith(
          CountryModel value, $Res Function(CountryModel) then) =
      _$CountryModelCopyWithImpl<$Res, CountryModel>;
  @useResult
  $Res call(
      {Flags flags,
      Name name,
      List<String> capital,
      Map<String, String> languages});

  $FlagsCopyWith<$Res> get flags;
  $NameCopyWith<$Res> get name;
}

/// @nodoc
class _$CountryModelCopyWithImpl<$Res, $Val extends CountryModel>
    implements $CountryModelCopyWith<$Res> {
  _$CountryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CountryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flags = null,
    Object? name = null,
    Object? capital = null,
    Object? languages = null,
  }) {
    return _then(_value.copyWith(
      flags: null == flags
          ? _value.flags
          : flags // ignore: cast_nullable_to_non_nullable
              as Flags,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name,
      capital: null == capital
          ? _value.capital
          : capital // ignore: cast_nullable_to_non_nullable
              as List<String>,
      languages: null == languages
          ? _value.languages
          : languages // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ) as $Val);
  }

  /// Create a copy of CountryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FlagsCopyWith<$Res> get flags {
    return $FlagsCopyWith<$Res>(_value.flags, (value) {
      return _then(_value.copyWith(flags: value) as $Val);
    });
  }

  /// Create a copy of CountryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NameCopyWith<$Res> get name {
    return $NameCopyWith<$Res>(_value.name, (value) {
      return _then(_value.copyWith(name: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CountryModelImplCopyWith<$Res>
    implements $CountryModelCopyWith<$Res> {
  factory _$$CountryModelImplCopyWith(
          _$CountryModelImpl value, $Res Function(_$CountryModelImpl) then) =
      __$$CountryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Flags flags,
      Name name,
      List<String> capital,
      Map<String, String> languages});

  @override
  $FlagsCopyWith<$Res> get flags;
  @override
  $NameCopyWith<$Res> get name;
}

/// @nodoc
class __$$CountryModelImplCopyWithImpl<$Res>
    extends _$CountryModelCopyWithImpl<$Res, _$CountryModelImpl>
    implements _$$CountryModelImplCopyWith<$Res> {
  __$$CountryModelImplCopyWithImpl(
      _$CountryModelImpl _value, $Res Function(_$CountryModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CountryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flags = null,
    Object? name = null,
    Object? capital = null,
    Object? languages = null,
  }) {
    return _then(_$CountryModelImpl(
      flags: null == flags
          ? _value.flags
          : flags // ignore: cast_nullable_to_non_nullable
              as Flags,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name,
      capital: null == capital
          ? _value._capital
          : capital // ignore: cast_nullable_to_non_nullable
              as List<String>,
      languages: null == languages
          ? _value._languages
          : languages // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CountryModelImpl implements _CountryModel {
  const _$CountryModelImpl(
      {required this.flags,
      required this.name,
      required final List<String> capital,
      required final Map<String, String> languages})
      : _capital = capital,
        _languages = languages;

  factory _$CountryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CountryModelImplFromJson(json);

  @override
  final Flags flags;
  @override
  final Name name;
  final List<String> _capital;
  @override
  List<String> get capital {
    if (_capital is EqualUnmodifiableListView) return _capital;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_capital);
  }

  final Map<String, String> _languages;
  @override
  Map<String, String> get languages {
    if (_languages is EqualUnmodifiableMapView) return _languages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_languages);
  }

  @override
  String toString() {
    return 'CountryModel(flags: $flags, name: $name, capital: $capital, languages: $languages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountryModelImpl &&
            (identical(other.flags, flags) || other.flags == flags) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._capital, _capital) &&
            const DeepCollectionEquality()
                .equals(other._languages, _languages));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      flags,
      name,
      const DeepCollectionEquality().hash(_capital),
      const DeepCollectionEquality().hash(_languages));

  /// Create a copy of CountryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CountryModelImplCopyWith<_$CountryModelImpl> get copyWith =>
      __$$CountryModelImplCopyWithImpl<_$CountryModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CountryModelImplToJson(
      this,
    );
  }
}

abstract class _CountryModel implements CountryModel {
  const factory _CountryModel(
      {required final Flags flags,
      required final Name name,
      required final List<String> capital,
      required final Map<String, String> languages}) = _$CountryModelImpl;

  factory _CountryModel.fromJson(Map<String, dynamic> json) =
      _$CountryModelImpl.fromJson;

  @override
  Flags get flags;
  @override
  Name get name;
  @override
  List<String> get capital;
  @override
  Map<String, String> get languages;

  /// Create a copy of CountryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CountryModelImplCopyWith<_$CountryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Flags _$FlagsFromJson(Map<String, dynamic> json) {
  return _Flags.fromJson(json);
}

/// @nodoc
mixin _$Flags {
  String get png => throw _privateConstructorUsedError;
  String get svg => throw _privateConstructorUsedError;
  String get alt => throw _privateConstructorUsedError;

  /// Serializes this Flags to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Flags
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FlagsCopyWith<Flags> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlagsCopyWith<$Res> {
  factory $FlagsCopyWith(Flags value, $Res Function(Flags) then) =
      _$FlagsCopyWithImpl<$Res, Flags>;
  @useResult
  $Res call({String png, String svg, String alt});
}

/// @nodoc
class _$FlagsCopyWithImpl<$Res, $Val extends Flags>
    implements $FlagsCopyWith<$Res> {
  _$FlagsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Flags
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? png = null,
    Object? svg = null,
    Object? alt = null,
  }) {
    return _then(_value.copyWith(
      png: null == png
          ? _value.png
          : png // ignore: cast_nullable_to_non_nullable
              as String,
      svg: null == svg
          ? _value.svg
          : svg // ignore: cast_nullable_to_non_nullable
              as String,
      alt: null == alt
          ? _value.alt
          : alt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FlagsImplCopyWith<$Res> implements $FlagsCopyWith<$Res> {
  factory _$$FlagsImplCopyWith(
          _$FlagsImpl value, $Res Function(_$FlagsImpl) then) =
      __$$FlagsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String png, String svg, String alt});
}

/// @nodoc
class __$$FlagsImplCopyWithImpl<$Res>
    extends _$FlagsCopyWithImpl<$Res, _$FlagsImpl>
    implements _$$FlagsImplCopyWith<$Res> {
  __$$FlagsImplCopyWithImpl(
      _$FlagsImpl _value, $Res Function(_$FlagsImpl) _then)
      : super(_value, _then);

  /// Create a copy of Flags
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? png = null,
    Object? svg = null,
    Object? alt = null,
  }) {
    return _then(_$FlagsImpl(
      png: null == png
          ? _value.png
          : png // ignore: cast_nullable_to_non_nullable
              as String,
      svg: null == svg
          ? _value.svg
          : svg // ignore: cast_nullable_to_non_nullable
              as String,
      alt: null == alt
          ? _value.alt
          : alt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FlagsImpl implements _Flags {
  const _$FlagsImpl({required this.png, required this.svg, required this.alt});

  factory _$FlagsImpl.fromJson(Map<String, dynamic> json) =>
      _$$FlagsImplFromJson(json);

  @override
  final String png;
  @override
  final String svg;
  @override
  final String alt;

  @override
  String toString() {
    return 'Flags(png: $png, svg: $svg, alt: $alt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FlagsImpl &&
            (identical(other.png, png) || other.png == png) &&
            (identical(other.svg, svg) || other.svg == svg) &&
            (identical(other.alt, alt) || other.alt == alt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, png, svg, alt);

  /// Create a copy of Flags
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FlagsImplCopyWith<_$FlagsImpl> get copyWith =>
      __$$FlagsImplCopyWithImpl<_$FlagsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FlagsImplToJson(
      this,
    );
  }
}

abstract class _Flags implements Flags {
  const factory _Flags(
      {required final String png,
      required final String svg,
      required final String alt}) = _$FlagsImpl;

  factory _Flags.fromJson(Map<String, dynamic> json) = _$FlagsImpl.fromJson;

  @override
  String get png;
  @override
  String get svg;
  @override
  String get alt;

  /// Create a copy of Flags
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FlagsImplCopyWith<_$FlagsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Name _$NameFromJson(Map<String, dynamic> json) {
  return _Name.fromJson(json);
}

/// @nodoc
mixin _$Name {
  String get common => throw _privateConstructorUsedError;
  String get official => throw _privateConstructorUsedError;
  Map<String, NativeName> get nativeName => throw _privateConstructorUsedError;

  /// Serializes this Name to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Name
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NameCopyWith<Name> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NameCopyWith<$Res> {
  factory $NameCopyWith(Name value, $Res Function(Name) then) =
      _$NameCopyWithImpl<$Res, Name>;
  @useResult
  $Res call(
      {String common, String official, Map<String, NativeName> nativeName});
}

/// @nodoc
class _$NameCopyWithImpl<$Res, $Val extends Name>
    implements $NameCopyWith<$Res> {
  _$NameCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Name
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? common = null,
    Object? official = null,
    Object? nativeName = null,
  }) {
    return _then(_value.copyWith(
      common: null == common
          ? _value.common
          : common // ignore: cast_nullable_to_non_nullable
              as String,
      official: null == official
          ? _value.official
          : official // ignore: cast_nullable_to_non_nullable
              as String,
      nativeName: null == nativeName
          ? _value.nativeName
          : nativeName // ignore: cast_nullable_to_non_nullable
              as Map<String, NativeName>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NameImplCopyWith<$Res> implements $NameCopyWith<$Res> {
  factory _$$NameImplCopyWith(
          _$NameImpl value, $Res Function(_$NameImpl) then) =
      __$$NameImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String common, String official, Map<String, NativeName> nativeName});
}

/// @nodoc
class __$$NameImplCopyWithImpl<$Res>
    extends _$NameCopyWithImpl<$Res, _$NameImpl>
    implements _$$NameImplCopyWith<$Res> {
  __$$NameImplCopyWithImpl(_$NameImpl _value, $Res Function(_$NameImpl) _then)
      : super(_value, _then);

  /// Create a copy of Name
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? common = null,
    Object? official = null,
    Object? nativeName = null,
  }) {
    return _then(_$NameImpl(
      common: null == common
          ? _value.common
          : common // ignore: cast_nullable_to_non_nullable
              as String,
      official: null == official
          ? _value.official
          : official // ignore: cast_nullable_to_non_nullable
              as String,
      nativeName: null == nativeName
          ? _value._nativeName
          : nativeName // ignore: cast_nullable_to_non_nullable
              as Map<String, NativeName>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NameImpl implements _Name {
  const _$NameImpl(
      {required this.common,
      required this.official,
      required final Map<String, NativeName> nativeName})
      : _nativeName = nativeName;

  factory _$NameImpl.fromJson(Map<String, dynamic> json) =>
      _$$NameImplFromJson(json);

  @override
  final String common;
  @override
  final String official;
  final Map<String, NativeName> _nativeName;
  @override
  Map<String, NativeName> get nativeName {
    if (_nativeName is EqualUnmodifiableMapView) return _nativeName;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_nativeName);
  }

  @override
  String toString() {
    return 'Name(common: $common, official: $official, nativeName: $nativeName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NameImpl &&
            (identical(other.common, common) || other.common == common) &&
            (identical(other.official, official) ||
                other.official == official) &&
            const DeepCollectionEquality()
                .equals(other._nativeName, _nativeName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, common, official,
      const DeepCollectionEquality().hash(_nativeName));

  /// Create a copy of Name
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NameImplCopyWith<_$NameImpl> get copyWith =>
      __$$NameImplCopyWithImpl<_$NameImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NameImplToJson(
      this,
    );
  }
}

abstract class _Name implements Name {
  const factory _Name(
      {required final String common,
      required final String official,
      required final Map<String, NativeName> nativeName}) = _$NameImpl;

  factory _Name.fromJson(Map<String, dynamic> json) = _$NameImpl.fromJson;

  @override
  String get common;
  @override
  String get official;
  @override
  Map<String, NativeName> get nativeName;

  /// Create a copy of Name
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NameImplCopyWith<_$NameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NativeName _$NativeNameFromJson(Map<String, dynamic> json) {
  return _NativeName.fromJson(json);
}

/// @nodoc
mixin _$NativeName {
  String get official => throw _privateConstructorUsedError;
  String get common => throw _privateConstructorUsedError;

  /// Serializes this NativeName to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NativeName
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NativeNameCopyWith<NativeName> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NativeNameCopyWith<$Res> {
  factory $NativeNameCopyWith(
          NativeName value, $Res Function(NativeName) then) =
      _$NativeNameCopyWithImpl<$Res, NativeName>;
  @useResult
  $Res call({String official, String common});
}

/// @nodoc
class _$NativeNameCopyWithImpl<$Res, $Val extends NativeName>
    implements $NativeNameCopyWith<$Res> {
  _$NativeNameCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NativeName
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? official = null,
    Object? common = null,
  }) {
    return _then(_value.copyWith(
      official: null == official
          ? _value.official
          : official // ignore: cast_nullable_to_non_nullable
              as String,
      common: null == common
          ? _value.common
          : common // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NativeNameImplCopyWith<$Res>
    implements $NativeNameCopyWith<$Res> {
  factory _$$NativeNameImplCopyWith(
          _$NativeNameImpl value, $Res Function(_$NativeNameImpl) then) =
      __$$NativeNameImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String official, String common});
}

/// @nodoc
class __$$NativeNameImplCopyWithImpl<$Res>
    extends _$NativeNameCopyWithImpl<$Res, _$NativeNameImpl>
    implements _$$NativeNameImplCopyWith<$Res> {
  __$$NativeNameImplCopyWithImpl(
      _$NativeNameImpl _value, $Res Function(_$NativeNameImpl) _then)
      : super(_value, _then);

  /// Create a copy of NativeName
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? official = null,
    Object? common = null,
  }) {
    return _then(_$NativeNameImpl(
      official: null == official
          ? _value.official
          : official // ignore: cast_nullable_to_non_nullable
              as String,
      common: null == common
          ? _value.common
          : common // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NativeNameImpl implements _NativeName {
  const _$NativeNameImpl({required this.official, required this.common});

  factory _$NativeNameImpl.fromJson(Map<String, dynamic> json) =>
      _$$NativeNameImplFromJson(json);

  @override
  final String official;
  @override
  final String common;

  @override
  String toString() {
    return 'NativeName(official: $official, common: $common)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NativeNameImpl &&
            (identical(other.official, official) ||
                other.official == official) &&
            (identical(other.common, common) || other.common == common));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, official, common);

  /// Create a copy of NativeName
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NativeNameImplCopyWith<_$NativeNameImpl> get copyWith =>
      __$$NativeNameImplCopyWithImpl<_$NativeNameImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NativeNameImplToJson(
      this,
    );
  }
}

abstract class _NativeName implements NativeName {
  const factory _NativeName(
      {required final String official,
      required final String common}) = _$NativeNameImpl;

  factory _NativeName.fromJson(Map<String, dynamic> json) =
      _$NativeNameImpl.fromJson;

  @override
  String get official;
  @override
  String get common;

  /// Create a copy of NativeName
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NativeNameImplCopyWith<_$NativeNameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CountriesResponse {
  List<CountryModel> get countries => throw _privateConstructorUsedError;

  /// Create a copy of CountriesResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CountriesResponseCopyWith<CountriesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountriesResponseCopyWith<$Res> {
  factory $CountriesResponseCopyWith(
          CountriesResponse value, $Res Function(CountriesResponse) then) =
      _$CountriesResponseCopyWithImpl<$Res, CountriesResponse>;
  @useResult
  $Res call({List<CountryModel> countries});
}

/// @nodoc
class _$CountriesResponseCopyWithImpl<$Res, $Val extends CountriesResponse>
    implements $CountriesResponseCopyWith<$Res> {
  _$CountriesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CountriesResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countries = null,
  }) {
    return _then(_value.copyWith(
      countries: null == countries
          ? _value.countries
          : countries // ignore: cast_nullable_to_non_nullable
              as List<CountryModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CountriesResponseImplCopyWith<$Res>
    implements $CountriesResponseCopyWith<$Res> {
  factory _$$CountriesResponseImplCopyWith(_$CountriesResponseImpl value,
          $Res Function(_$CountriesResponseImpl) then) =
      __$$CountriesResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CountryModel> countries});
}

/// @nodoc
class __$$CountriesResponseImplCopyWithImpl<$Res>
    extends _$CountriesResponseCopyWithImpl<$Res, _$CountriesResponseImpl>
    implements _$$CountriesResponseImplCopyWith<$Res> {
  __$$CountriesResponseImplCopyWithImpl(_$CountriesResponseImpl _value,
      $Res Function(_$CountriesResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of CountriesResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countries = null,
  }) {
    return _then(_$CountriesResponseImpl(
      countries: null == countries
          ? _value._countries
          : countries // ignore: cast_nullable_to_non_nullable
              as List<CountryModel>,
    ));
  }
}

/// @nodoc

class _$CountriesResponseImpl implements _CountriesResponse {
  const _$CountriesResponseImpl({required final List<CountryModel> countries})
      : _countries = countries;

  final List<CountryModel> _countries;
  @override
  List<CountryModel> get countries {
    if (_countries is EqualUnmodifiableListView) return _countries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_countries);
  }

  @override
  String toString() {
    return 'CountriesResponse(countries: $countries)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountriesResponseImpl &&
            const DeepCollectionEquality()
                .equals(other._countries, _countries));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_countries));

  /// Create a copy of CountriesResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CountriesResponseImplCopyWith<_$CountriesResponseImpl> get copyWith =>
      __$$CountriesResponseImplCopyWithImpl<_$CountriesResponseImpl>(
          this, _$identity);
}

abstract class _CountriesResponse implements CountriesResponse {
  const factory _CountriesResponse(
      {required final List<CountryModel> countries}) = _$CountriesResponseImpl;

  @override
  List<CountryModel> get countries;

  /// Create a copy of CountriesResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CountriesResponseImplCopyWith<_$CountriesResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

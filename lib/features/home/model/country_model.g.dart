// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CountryModelImpl _$$CountryModelImplFromJson(Map<String, dynamic> json) =>
    _$CountryModelImpl(
      flags: Flags.fromJson(json['flags'] as Map<String, dynamic>),
      name: Name.fromJson(json['name'] as Map<String, dynamic>),
      capital:
          (json['capital'] as List<dynamic>).map((e) => e as String).toList(),
      languages: Map<String, String>.from(json['languages'] as Map),
    );

Map<String, dynamic> _$$CountryModelImplToJson(_$CountryModelImpl instance) =>
    <String, dynamic>{
      'flags': instance.flags,
      'name': instance.name,
      'capital': instance.capital,
      'languages': instance.languages,
    };

_$FlagsImpl _$$FlagsImplFromJson(Map<String, dynamic> json) => _$FlagsImpl(
      png: json['png'] as String,
      svg: json['svg'] as String,
      alt: json['alt'] as String,
    );

Map<String, dynamic> _$$FlagsImplToJson(_$FlagsImpl instance) =>
    <String, dynamic>{
      'png': instance.png,
      'svg': instance.svg,
      'alt': instance.alt,
    };

_$NameImpl _$$NameImplFromJson(Map<String, dynamic> json) => _$NameImpl(
      common: json['common'] as String,
      official: json['official'] as String,
      nativeName: (json['nativeName'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, NativeName.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$$NameImplToJson(_$NameImpl instance) =>
    <String, dynamic>{
      'common': instance.common,
      'official': instance.official,
      'nativeName': instance.nativeName,
    };

_$NativeNameImpl _$$NativeNameImplFromJson(Map<String, dynamic> json) =>
    _$NativeNameImpl(
      official: json['official'] as String,
      common: json['common'] as String,
    );

Map<String, dynamic> _$$NativeNameImplToJson(_$NativeNameImpl instance) =>
    <String, dynamic>{
      'official': instance.official,
      'common': instance.common,
    };

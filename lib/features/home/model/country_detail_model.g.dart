// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CountryDetailModelImpl _$$CountryDetailModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CountryDetailModelImpl(
      name: Name.fromJson(json['name'] as Map<String, dynamic>),
      currencies: (json['currencies'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, Currency.fromJson(e as Map<String, dynamic>)),
      ),
      capital:
          (json['capital'] as List<dynamic>).map((e) => e as String).toList(),
      languages: Map<String, String>.from(json['languages'] as Map),
      flags: Flags.fromJson(json['flags'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CountryDetailModelImplToJson(
        _$CountryDetailModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'currencies': instance.currencies,
      'capital': instance.capital,
      'languages': instance.languages,
      'flags': instance.flags,
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

_$CurrencyImpl _$$CurrencyImplFromJson(Map<String, dynamic> json) =>
    _$CurrencyImpl(
      name: json['name'] as String,
      symbol: json['symbol'] as String,
    );

Map<String, dynamic> _$$CurrencyImplToJson(_$CurrencyImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'symbol': instance.symbol,
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

import 'package:freezed_annotation/freezed_annotation.dart';

part 'country_detail_model.freezed.dart';
part 'country_detail_model.g.dart';

@freezed
class CountryDetailModel with _$CountryDetailModel {
  const factory CountryDetailModel({
    required Name name,
    required Map<String, Currency> currencies,
    required List<String> capital,
    required Map<String, String> languages,
    required Flags flags,
  }) = _CountryDetailModel;

  factory CountryDetailModel.fromJson(Map<String, dynamic> json) =>
      _$CountryDetailModelFromJson(json);
}

@freezed
class Name with _$Name {
  const factory Name({
    required String common,
    required String official,
    required Map<String, NativeName> nativeName,
  }) = _Name;

  factory Name.fromJson(Map<String, dynamic> json) => _$NameFromJson(json);
}

@freezed
class NativeName with _$NativeName {
  const factory NativeName({
    required String official,
    required String common,
  }) = _NativeName;

  factory NativeName.fromJson(Map<String, dynamic> json) =>
      _$NativeNameFromJson(json);
}

@freezed
class Currency with _$Currency {
  const factory Currency({
    required String name,
    required String symbol,
  }) = _Currency;

  factory Currency.fromJson(Map<String, dynamic> json) =>
      _$CurrencyFromJson(json);
}

@freezed
class Flags with _$Flags {
  const factory Flags({
    required String png,
    required String svg,
    required String alt,
  }) = _Flags;

  factory Flags.fromJson(Map<String, dynamic> json) => _$FlagsFromJson(json);
}

@freezed
class CountryDetailsResponse with _$CountryDetailsResponse {
  const factory CountryDetailsResponse({
    required List<CountryDetailModel> countries,
  }) = _CountryDetailsResponse;

  factory CountryDetailsResponse.fromJsonList(List<dynamic> jsonList) {
    return CountryDetailsResponse(
      countries: jsonList
          .map((e) => CountryDetailModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }
}

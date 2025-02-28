// country_model.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'country_model.freezed.dart';
part 'country_model.g.dart';

@freezed
class CountryModel with _$CountryModel {
  const factory CountryModel({
    required Flags flags,
    required Name name,
    required List<String> capital,
    required Map<String, String> languages,
  }) = _CountryModel;

  factory CountryModel.fromJson(Map<String, dynamic> json) =>
      _$CountryModelFromJson(json);
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
class CountriesResponse with _$CountriesResponse {
  const factory CountriesResponse({
    required List<CountryModel> countries,
  }) = _CountriesResponse;

  factory CountriesResponse.fromJsonList(List<dynamic> jsonList) {
    return CountriesResponse(
      countries: jsonList
          .map((e) => CountryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }
}

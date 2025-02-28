import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../utils/general_utility.dart';
import '../model/country_model.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(ResponseState.initial) ResponseState response,
    CountriesResponse? apiResponse,
  }) = _HomeState;
}

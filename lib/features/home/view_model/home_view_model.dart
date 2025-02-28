import 'package:african_countries/features/home/repository/home_repository.dart';
import 'package:african_countries/features/home/state/home_event.dart';
import 'package:african_countries/features/home/state/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../utils/general_utility.dart';

class HomeViewModel extends Bloc<HomeEvent, HomeState> {
  final HomeRepository _homeRepository;

  HomeViewModel(this._homeRepository) : super(const HomeState()) {
    on<GetCountries>((event, emit) => _getCountries(event, emit));
  }

  Future<void> _getCountries(
    GetCountries event,
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith(response: ResponseState.loading));

    final response = await _homeRepository.getAfricanCountries();

    response.fold(
      (error) => {
        emit(state.copyWith(response: ResponseState.error)),
        GeneralUtility.showToast(error.message),
      },
      (data) {
        emit(state.copyWith(
          response: ResponseState.success,
          apiResponse: data,
        ));
      },
    );
  }
}

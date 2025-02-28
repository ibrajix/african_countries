import 'package:african_countries/features/home/model/country_detail_model.dart';
import 'package:african_countries/features/home/model/country_model.dart';
import 'package:dartz/dartz.dart';

import '../../../constants/api_constant.dart';
import '../../../networking/dio_client.dart';
import '../../../networking/failure.dart';
import '../../../networking/run_guard.dart';

class HomeRepository extends SafeCall {
  final DioClient _dioClient;

  HomeRepository(this._dioClient);

  Future<Either<Failure, CountriesResponse>> getAfricanCountries() async {
    return runGuard(() async {
      try {
        final response = await _dioClient.get(ApiConstant.getCountries,
            queryParameters: {"fields": "name,languages,capital,flags"});

        if (response is List) {
          return CountriesResponse.fromJsonList(response);
        } else {
          throw Exception(
              "Expected a list response from API but got ${response.runtimeType}");
        }
      } catch (e) {
        rethrow;
      }
    });
  }

  Future<Either<Failure, CountryDetailsResponse>> getCountryDetails(
      String name) async {
    return runGuard(() async {
      try {
        final response =
            await _dioClient.get('${ApiConstant.getCountryDetails}/$name');

        if (response is List) {
          return CountryDetailsResponse.fromJsonList(response);
        } else {
          throw Exception(
              "Expected a list response from API but got ${response.runtimeType}");
        }
      } catch (e) {
        rethrow;
      }
    });
  }
}

import 'package:african_countries/features/home/view_model/home_view_model.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../features/home/repository/home_repository.dart';
import '../networking/dio_client.dart';

final getIt = GetIt.instance;

void setupDependencies() {
  getIt.registerLazySingleton<Dio>(() => Dio());
  getIt.registerLazySingleton<DioClient>(() => DioClient(getIt<Dio>()));

  getIt.registerLazySingleton<HomeRepository>(
    () => HomeRepository(getIt<DioClient>()),
  );

  // BLoCs
  getIt.registerFactory<HomeViewModel>(
    () => HomeViewModel(getIt<HomeRepository>()),
  );
}

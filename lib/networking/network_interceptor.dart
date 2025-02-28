import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';

import '../utils/general_utility.dart';

class NetworkInterceptor extends Interceptor {
  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final connectivityResult = await Connectivity().checkConnectivity();
    if (connectivityResult == ConnectivityResult.none) {
      GeneralUtility.showToast(
        "Connect to the internet to make this request",
      );
      handler.reject(DioException(
        requestOptions: options,
        error: "No Internet Connection",
        type: DioExceptionType
            .cancel, // You may need to handle it in your application logic
      ));
      return;
    }
    handler.next(options);
  }
}

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

import '../utils/logger.dart';
import 'app_exception.dart';
import 'failure.dart';

abstract class SafeCall {
  Future<bool> checkInternetConnectivity() async {
    final connectivityResult = await Connectivity().checkConnectivity();
    return connectivityResult != ConnectivityResult.none;
  }

  @protected
  Future<Either<Failure, T>> runGuard<T>(
    Future<T> Function() call,
  ) async {
    final connectivityResult = await Connectivity().checkConnectivity();
    if (connectivityResult != ConnectivityResult.none) {
      try {
        final result = await call();
        return Right(result);
      } catch (e, stack) {
        if (e is AppException) {
          return Left(ServerFailure(e.message));
        }
        if (e is InvalidArgOrDataException) {
          return Left(InvalidArgOrDataFailure());
        }
        logger.e('Error in: $e\nResponse: $stack');
        return Left(UnexpectedFailure());
      }
    }
    return Left(NetworkFailure());
  }
}

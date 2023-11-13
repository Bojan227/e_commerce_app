import 'package:device_info_plus/device_info_plus.dart';
import 'package:ecommerce_app/core/media_service/media_service.dart';
import 'package:ecommerce_app/core/permission_service/permission_service.dart';
import 'package:ecommerce_app/core/sqflite/sqflite_helper.dart';
import 'package:ecommerce_app/data/datasources/ulmo_local_datasource.dart';
import 'package:ecommerce_app/data/repositories/ulmo_repository_impl.dart';
import 'package:ecommerce_app/domain/repositories/ulmo_repository.dart';
import 'package:ecommerce_app/domain/usecases/add_review_usecase.dart';
import 'package:ecommerce_app/domain/usecases/get_reviews_usecase.dart';
import 'package:ecommerce_app/presentation/blocs/review/review_bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';

GetIt getIt = GetIt.instance;

Future setupInjector() async {
  final SqfHelper sqfHelper = SqfHelper(dbName: 'ulmo_db.db');
  getIt.registerSingleton<SqfHelper>(sqfHelper);

  final UlmoLocalDataSource ulmoLocalDataSource =
      UlmoLocalDataSourceImpl(sqfHelper: sqfHelper);
  final UlmoRepository ulmoRepository =
      UlmoRepositoryImpl(ulmoLocalDataSource: ulmoLocalDataSource);
  final GetReviewsUseCase getReviewsUseCase =
      GetReviewsUseCase(ulmoRepository: ulmoRepository);

  final AddReviewUseCase addReviewUseCase =
      AddReviewUseCase(ulmoRepository: ulmoRepository);

  final ReviewBloc reviewBloc = ReviewBloc(
      getReviewsUseCase: getReviewsUseCase, addReviewUseCase: addReviewUseCase);

  final DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();

  getIt.registerSingleton<ReviewBloc>(reviewBloc);
  getIt.registerSingleton<PermissionService>(
    PermissionHandlerService(deviceInfo: deviceInfoPlugin),
  );
  getIt.registerSingleton<MediaServiceInterface>(
    MediaService(),
  );

  final Logger log = Logger(
    printer: PrettyPrinter(),
    level: kDebugMode ? Level.trace : Level.off,
  );

  getIt.registerLazySingleton<Logger>(() => log);
}

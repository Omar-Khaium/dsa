part of '../config.dart';

Future<void> get arraysDependencies async {
  //! ----------------- Bloc -----------------

  //! ----------------- UseCase -----------------

  //! ----------------- Repository -----------------
  sl.registerLazySingleton<ArraysRepository>(
    () => ArraysRepositoryImpl(
      network: sl(),
      remote: sl(),
    ),
  );

  //! ----------------- Data sources -----------------
  sl.registerLazySingleton<ArraysRemoteDataSource>(
    () => ArraysRemoteDataSourceImpl(
      client: sl(),
    ),
  );
}

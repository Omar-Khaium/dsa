part of '../config.dart';

Future<void> get bubbleSortDependencies async {
  //! ----------------- Bloc -----------------

  //! ----------------- UseCase -----------------

  //! ----------------- Repository -----------------
  sl.registerLazySingleton<BubbleSortRepository>(
    () => BubbleSortRepositoryImpl(
      network: sl(),
      remote: sl(),
    ),
  );

  //! ----------------- Data sources -----------------
  sl.registerLazySingleton<BubbleSortRemoteDataSource>(
    () => BubbleSortRemoteDataSourceImpl(
      client: sl(),
    ),
  );
}

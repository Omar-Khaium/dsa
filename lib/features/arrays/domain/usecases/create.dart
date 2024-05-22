import '../../../../core/shared/shared.dart';
import '../../arrays.dart';

class CreateArraysUseCase {
  final ArraysRepository repository;

  CreateArraysUseCase({
    required this.repository,
  });

  FutureOr<Either<Failure, void>> call({
    required ArraysEntity arrays,
  }) async {
    return await repository.create(
      arrays: arrays,
    );
  }
}

import '../../../../core/shared/shared.dart';
import '../../arrays.dart';

class UpdateArraysUseCase {
  final ArraysRepository repository;

  UpdateArraysUseCase({
    required this.repository,
  });

  FutureOr<Either<Failure, void>> call({
    required ArraysEntity arrays,
  }) async {
    return await repository.update(
      arrays: arrays,
    );
  }
}

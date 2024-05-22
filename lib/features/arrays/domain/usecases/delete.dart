import '../../../../core/shared/shared.dart';
import '../../arrays.dart';

class DeleteArraysUseCase {
  final ArraysRepository repository;

  DeleteArraysUseCase({
    required this.repository,
  });

  FutureOr<Either<Failure, void>> call({
    required int id,
  }) async {
    return await repository.delete(
      id: id,
    );
  }
}

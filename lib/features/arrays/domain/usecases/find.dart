import '../../../../core/shared/shared.dart';
import '../../arrays.dart';

class FindArraysUseCase {
  final ArraysRepository repository;

  FindArraysUseCase({
    required this.repository,
  });

  FutureOr<Either<Failure, ArraysEntity>> call({
    required int id,
  }) async {
    return await repository.find(
      id: id,
    );
  }
}

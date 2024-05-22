import '../../../../core/shared/shared.dart';
import '../../arrays.dart';

class ReadArraysUseCase {
  final ArraysRepository repository;

  ReadArraysUseCase({
    required this.repository,
  });

  FutureOr<Either<Failure, List<ArraysEntity>>> call() async {
    return await repository.read();
  }
}

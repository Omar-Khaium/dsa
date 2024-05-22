import '../../../../core/shared/shared.dart';
import '../../arrays.dart';

class RefreshArraysUseCase {
  final ArraysRepository repository;

  RefreshArraysUseCase({
    required this.repository,
  });

  FutureOr<Either<Failure, List<ArraysEntity>>> call() async {
    return await repository.refresh();
  }
}

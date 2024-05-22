import '../../../../core/shared/shared.dart';
import '../../arrays.dart';

class SearchArraysUseCase {
  final ArraysRepository repository;

  SearchArraysUseCase({
    required this.repository,
  });

  FutureOr<Either<Failure, List<ArraysEntity>>> call({
    required String query,
  }) async {
    return await repository.search(
      query: query,
    );
  }
}

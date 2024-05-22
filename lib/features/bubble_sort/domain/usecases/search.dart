import '../../../../core/shared/shared.dart';
import '../../bubble_sort.dart';

class SearchBubbleSortUseCase {
  final BubbleSortRepository repository;

  SearchBubbleSortUseCase({
    required this.repository,
  });

  FutureOr<Either<Failure, List<BubbleSortEntity>>> call({
    required String query,
  }) async {
    return await repository.search(
      query: query,
    );
  }
}

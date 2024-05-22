import '../../../../core/shared/shared.dart';
import '../../bubble_sort.dart';

class FindBubbleSortUseCase {
  final BubbleSortRepository repository;

  FindBubbleSortUseCase({
    required this.repository,
  });

  FutureOr<Either<Failure, BubbleSortEntity>> call({
    required int id,
  }) async {
    return await repository.find(
      id: id,
    );
  }
}

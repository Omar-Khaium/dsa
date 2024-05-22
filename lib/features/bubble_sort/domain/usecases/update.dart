import '../../../../core/shared/shared.dart';
import '../../bubble_sort.dart';

class UpdateBubbleSortUseCase {
  final BubbleSortRepository repository;

  UpdateBubbleSortUseCase({
    required this.repository,
  });

  FutureOr<Either<Failure, void>> call({
    required BubbleSortEntity bubbleSort,
  }) async {
    return await repository.update(
      bubbleSort: bubbleSort,
    );
  }
}

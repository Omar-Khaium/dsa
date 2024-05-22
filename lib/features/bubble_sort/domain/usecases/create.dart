import '../../../../core/shared/shared.dart';
import '../../bubble_sort.dart';

class CreateBubbleSortUseCase {
  final BubbleSortRepository repository;

  CreateBubbleSortUseCase({
    required this.repository,
  });

  FutureOr<Either<Failure, void>> call({
    required BubbleSortEntity bubbleSort,
  }) async {
    return await repository.create(
      bubbleSort: bubbleSort,
    );
  }
}

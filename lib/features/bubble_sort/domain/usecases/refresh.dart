import '../../../../core/shared/shared.dart';
import '../../bubble_sort.dart';

class RefreshBubbleSortUseCase {
  final BubbleSortRepository repository;

  RefreshBubbleSortUseCase({
    required this.repository,
  });

  FutureOr<Either<Failure, List<BubbleSortEntity>>> call() async {
    return await repository.refresh();
  }
}

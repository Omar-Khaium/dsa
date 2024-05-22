import '../../../../core/shared/shared.dart';
import '../../bubble_sort.dart';

class ReadBubbleSortUseCase {
  final BubbleSortRepository repository;

  ReadBubbleSortUseCase({
    required this.repository,
  });

  FutureOr<Either<Failure, List<BubbleSortEntity>>> call() async {
    return await repository.read();
  }
}

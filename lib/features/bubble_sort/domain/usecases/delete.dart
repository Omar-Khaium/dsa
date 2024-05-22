import '../../../../core/shared/shared.dart';
import '../../bubble_sort.dart';

class DeleteBubbleSortUseCase {
  final BubbleSortRepository repository;

  DeleteBubbleSortUseCase({
    required this.repository,
  });

  FutureOr<Either<Failure, void>> call({
    required int id,
  }) async {
    return await repository.delete(
      id: id,
    );
  }
}

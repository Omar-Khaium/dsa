import '../../../../core/shared/shared.dart';
import '../../bubble_sort.dart';

typedef BubbleSortEntityPaginatedResponse = ({
  List<BubbleSortEntity> items,
  int total,
});

abstract class BubbleSortRepository {
  FutureOr<Either<Failure, void>> create({
    required BubbleSortEntity bubbleSort,
  });

  FutureOr<Either<Failure, void>> delete({
    required int id,
  });

  FutureOr<Either<Failure, BubbleSortEntity>> find({
    required int id,
  });

  FutureOr<Either<Failure, List<BubbleSortEntity>>> read();

  FutureOr<Either<Failure, List<BubbleSortEntity>>> refresh();

  FutureOr<Either<Failure, List<BubbleSortEntity>>> search({
    required String query,
  });

  FutureOr<Either<Failure, void>> update({
    required BubbleSortEntity bubbleSort,
  });
}

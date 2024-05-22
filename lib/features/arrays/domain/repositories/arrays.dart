import '../../../../core/shared/shared.dart';
import '../../arrays.dart';

typedef ArraysEntityPaginatedResponse = ({
  List<ArraysEntity> items,
  int total,
});

abstract class ArraysRepository {
  FutureOr<Either<Failure, void>> create({
    required ArraysEntity arrays,
  });

  FutureOr<Either<Failure, void>> delete({
    required int id,
  });

  FutureOr<Either<Failure, ArraysEntity>> find({
    required int id,
  });

  FutureOr<Either<Failure, List<ArraysEntity>>> read();

  FutureOr<Either<Failure, List<ArraysEntity>>> refresh();

  FutureOr<Either<Failure, List<ArraysEntity>>> search({
    required String query,
  });

  FutureOr<Either<Failure, void>> update({
    required ArraysEntity arrays,
  });
}

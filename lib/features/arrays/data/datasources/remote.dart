import '../../../../core/shared/shared.dart';
import '../../arrays.dart';

typedef ArraysModelPaginatedResponse = ({
  List<ArraysModel> items,
  int total,
});

abstract class ArraysRemoteDataSource {
  FutureOr<void> create({
    required ArraysEntity arrays,
  });

  FutureOr<void> delete({
    required int id,
  });

  FutureOr<ArraysModel> find({
    required int id,
  });

  FutureOr<List<ArraysModel>> read();

  FutureOr<List<ArraysModel>> refresh();

  FutureOr<List<ArraysModel>> search({
    required String query,
  });

  FutureOr<void> update({
    required ArraysEntity arrays,
  });
}

import '../../../../core/shared/shared.dart';
import '../../bubble_sort.dart';

typedef BubbleSortModelPaginatedResponse = ({
  List<BubbleSortModel> items,
  int total,
});

abstract class BubbleSortRemoteDataSource {
  FutureOr<void> create({
    required BubbleSortEntity bubbleSort,
  });

  FutureOr<void> delete({
    required int id,
  });

  FutureOr<BubbleSortModel> find({
    required int id,
  });

  FutureOr<List<BubbleSortModel>> read();

  FutureOr<List<BubbleSortModel>> refresh();

  FutureOr<List<BubbleSortModel>> search({
    required String query,
  });

  FutureOr<void> update({
    required BubbleSortEntity bubbleSort,
  });
}

import '../../../../core/shared/shared.dart';
import '../../bubble_sort.dart';

class BubbleSortRemoteDataSourceImpl extends BubbleSortRemoteDataSource {
  final Client client;

  BubbleSortRemoteDataSourceImpl({
    required this.client,
  });

  @override
  FutureOr<void> create({
    required BubbleSortEntity bubbleSort,
  }) async {
    throw UnimplementedError();
  }

  @override
  FutureOr<void> delete({
    required int id,
  }) async {
    throw UnimplementedError();
  }

  @override
  FutureOr<BubbleSortModel> find({
    required int id,
  }) async {
    throw UnimplementedError();
  }

  @override
  FutureOr<List<BubbleSortModel>> read() async {
    throw UnimplementedError();
  }

  @override
  FutureOr<List<BubbleSortModel>> refresh() async {
    throw UnimplementedError();
  }

  @override
  FutureOr<List<BubbleSortModel>> search({
    required String query,
  }) async {
    throw UnimplementedError();
  }

  @override
  FutureOr<void> update({
    required BubbleSortEntity bubbleSort,
  }) async {
    throw UnimplementedError();
  }
}

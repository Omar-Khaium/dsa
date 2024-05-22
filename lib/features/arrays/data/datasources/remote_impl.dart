import '../../../../core/shared/shared.dart';
import '../../arrays.dart';

class ArraysRemoteDataSourceImpl extends ArraysRemoteDataSource {
  final Client client;

  ArraysRemoteDataSourceImpl({
    required this.client,
  });

  @override
  FutureOr<void> create({
    required ArraysEntity arrays,
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
  FutureOr<ArraysModel> find({
    required int id,
  }) async {
    throw UnimplementedError();
  }

  @override
  FutureOr<List<ArraysModel>> read() async {
    throw UnimplementedError();
  }

  @override
  FutureOr<List<ArraysModel>> refresh() async {
    throw UnimplementedError();
  }

  @override
  FutureOr<List<ArraysModel>> search({
    required String query,
  }) async {
    throw UnimplementedError();
  }

  @override
  FutureOr<void> update({
    required ArraysEntity arrays,
  }) async {
    throw UnimplementedError();
  }
}

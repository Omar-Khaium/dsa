import '../../../../core/shared/shared.dart';
import '../../arrays.dart';

class ArraysModel extends ArraysEntity {
  // TODO: implement model properties
  ArraysModel({
    required super.id,
  });

  factory ArraysModel.parse({
    required Map<String, dynamic> map,
  }) {
    try {
      // TODO: implement parse
      throw UnimplementedError();
    } catch (e, stackTrace) {
      throw ArraysModelParseFailure(
        message: e.toString(),
        stackTrace: stackTrace,
      );
    }
  }
}

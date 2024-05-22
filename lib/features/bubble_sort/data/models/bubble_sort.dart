import '../../../../core/shared/shared.dart';
import '../../bubble_sort.dart';

class BubbleSortModel extends BubbleSortEntity {
  // TODO: implement model properties
  BubbleSortModel({
    required super.id,
  });

  factory BubbleSortModel.parse({
    required Map<String, dynamic> map,
  }) {
    try {
      // TODO: implement parse
      throw UnimplementedError();
    } catch (e, stackTrace) {
      throw BubbleSortModelParseFailure(
        message: e.toString(),
        stackTrace: stackTrace,
      );
    }
  }
}

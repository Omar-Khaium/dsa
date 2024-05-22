import '../../../../core/shared/shared.dart';

class BubbleSortEntity extends Equatable {
  // TODO: implement entity properties
  final int id;

  BubbleSortEntity({
    required this.id,
  });

  factory BubbleSortEntity.create() {
    throw UnimplementedError();
  }

  @override
  List<Object?> get props => [
        // TODO: add entity properties
        id,
      ];
}

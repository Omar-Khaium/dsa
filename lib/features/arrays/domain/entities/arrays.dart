import '../../../../core/shared/shared.dart';

class ArraysEntity extends Equatable {
  // TODO: implement entity properties
  final int id;

  ArraysEntity({
    required this.id,
  });

  factory ArraysEntity.create() {
    throw UnimplementedError();
  }

  @override
  List<Object?> get props => [
        // TODO: add entity properties
        id,
      ];
}

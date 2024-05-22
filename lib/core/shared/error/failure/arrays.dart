part of 'failure.dart';

class ArraysModelParseFailure extends Failure {
  ArraysModelParseFailure({
    required super.message,
    required super.stackTrace,
  });
}

class ArraysNotFoundInLocalCacheFailure extends Failure {
  ArraysNotFoundInLocalCacheFailure()
      : super(
          message: 'Arrays not found in local cache.',
        );
}

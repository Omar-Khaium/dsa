part of 'failure.dart';

class BubbleSortModelParseFailure extends Failure {
  BubbleSortModelParseFailure({
    required super.message,
    required super.stackTrace,
  });
}

class BubbleSortNotFoundInLocalCacheFailure extends Failure {
  BubbleSortNotFoundInLocalCacheFailure()
      : super(
          message: 'BubbleSort not found in local cache.',
        );
}

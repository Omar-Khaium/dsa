import '../../../../core/shared/shared.dart';

part '../widgets/setup.dart';
part '../widgets/preview.dart';
part '../widgets/simulation.dart';
part '../widgets/result.dart';

class BubbleSortPage extends StatelessWidget {
  static const String path = '/bubble-sort';
  static const String name = 'BubbleSortPage';
  const BubbleSortPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, state) {
        final theme = state.scheme;
        return Scaffold(
          backgroundColor: theme.backgroundPrimary,
          body: Placeholder(),
        );
      },
    );
  }
}

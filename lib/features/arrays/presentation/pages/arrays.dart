import 'package:collection/collection.dart';

import '../../../../core/shared/shared.dart';

part '../widgets/setup.dart';
part '../widgets/preview.dart';
part '../widgets/simulation.dart';
part '../widgets/result.dart';

class ArraysPage extends StatefulWidget {
  static const String path = '/arrays';
  static const String name = 'ArraysPage';
  const ArraysPage({super.key});

  @override
  State<ArraysPage> createState() => _ArraysPageState();
}

class _ArraysPageState extends State<ArraysPage> {
  SolutionSteps step = SolutionSteps.setUp;

  int length = 0;
  int speed = 0;

  List<int> array = [];
  int index = -1;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, state) {
        final theme = state.scheme;
        return Scaffold(
          backgroundColor: theme.backgroundPrimary,
          appBar: AppBar(
            title: Text(
              'Arrays',
              style: context.textStyle16Medium(color: theme.textPrimary),
            ),
            backgroundColor: theme.backgroundSecondary,
            iconTheme: IconThemeData(color: theme.textPrimary),
          ),
          body: {
                SolutionSteps.setUp: _SetupWidget(
                  onDone: ({
                    required length,
                    required speed,
                  }) {
                    setState(() {
                      this.length = length;
                      this.speed = speed;
                      step = SolutionSteps.preview;
                    });
                  },
                ),
                SolutionSteps.preview: _PreviewWidget(
                  onDone: ({required array}) {
                    setState(() {
                      this.array = array;
                      step = SolutionSteps.simulation;
                    });
                  },
                  length: length,
                ),
                SolutionSteps.simulation: _SimulationWidget(
                  array: array,
                  speed: speed,
                  onDone: ({required index}) {
                    setState(() {
                      this.index = index;
                      step = SolutionSteps.results;
                    });
                  },
                ),
                SolutionSteps.results: _ResultWidget(
                  onReset: () {
                    setState(() {
                      step = SolutionSteps.setUp;
                      array = [];
                      length = 0;
                      speed = 0;
                      index = -1;
                    });
                  },
                  array: array,
                  index: index,
                ),
                // Add more entries as needed
              }[step] ??
              Text('Unknown step'),
        );
      },
    );
  }
}

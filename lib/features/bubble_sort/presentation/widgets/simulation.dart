part of '../pages/bubble_sort.dart';

class _SimulationWidget extends StatefulWidget {
  final Function({
    required int index,
  }) onDone;
  final List<int> array;
  final int speed;

  const _SimulationWidget({
    required this.onDone,
    required this.array,
    required this.speed,
  });

  @override
  State<_SimulationWidget> createState() => _SimulationWidgetState();
}

class _SimulationWidgetState extends State<_SimulationWidget> {
  int currentIndex = -1;
  int lastCheckedIndex = -1;
  int lowestValueIndex = -1;
  bool completed = false;

  @override
  void initState() {
    super.initState();
    startSimulation();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, state) {
        final theme = state.scheme;
        return Center(
          child: ListView(
            padding: EdgeInsets.all(context.radius16),
            shrinkWrap: true,
            children: [
              Text(
                "Generate a random array",
                style: context.textStyle20Heavy(color: theme.textPrimary),
              ),
              SizedBox(height: context.verticalMargin16),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: context.horizontalMargin12,
                    height: context.horizontalMargin12,
                    decoration: BoxDecoration(
                      color: theme.live,
                      borderRadius: BorderRadius.circular(context.radius4),
                    ),
                  ),
                  SizedBox(width: context.horizontalMargin8),
                  Text(
                    "Checked",
                    style: context.textStyle12Medium(color: theme.textPrimary),
                  ),
                ],
              ),
              SizedBox(height: context.verticalMargin4),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: context.horizontalMargin12,
                    height: context.horizontalMargin12,
                    decoration: BoxDecoration(
                      color: theme.textTossPrimary,
                      borderRadius: BorderRadius.circular(context.radius4),
                    ),
                  ),
                  SizedBox(width: context.horizontalMargin8),
                  Text(
                    "Current value",
                    style: context.textStyle12Medium(color: theme.textPrimary),
                  ),
                ],
              ),
              SizedBox(height: context.verticalMargin4),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: context.horizontalMargin12,
                    height: context.horizontalMargin12,
                    decoration: BoxDecoration(
                      color: theme.positive,
                      borderRadius: BorderRadius.circular(context.radius4),
                    ),
                  ),
                  SizedBox(width: context.horizontalMargin8),
                  Text(
                    "Lowest value",
                    style: context.textStyle12Medium(color: theme.textPrimary),
                  ),
                ],
              ),
              SizedBox(height: context.verticalMargin4),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: context.horizontalMargin12,
                    height: context.horizontalMargin12,
                    decoration: BoxDecoration(
                      color: theme.textSecondary,
                      borderRadius: BorderRadius.circular(context.radius4),
                    ),
                  ),
                  SizedBox(width: context.horizontalMargin8),
                  Text(
                    "Did not check yet",
                    style: context.textStyle12Medium(color: theme.textPrimary),
                  ),
                ],
              ),
              SizedBox(height: context.verticalMargin16),
              SizedBox(height: context.verticalMargin16),
              AspectRatio(
                aspectRatio: 1.6,
                child: BarChart(
                  BarChartData(
                    barGroups: widget.array.mapIndexed(
                      (index, value) {
                        return BarChartGroupData(
                          x: value,
                          barRods: [
                            BarChartRodData(
                              fromY: 0,
                              toY: value.toDouble(),
                              width: context.horizontalMargin4,
                              color: currentIndex == index
                                  ? theme.textTossPrimary
                                  : lowestValueIndex == index
                                      ? theme.positive
                                      : index < currentIndex
                                          ? theme.live
                                          : theme.textSecondary,
                            ),
                          ],
                        );
                      },
                    ).toList(),
                    titlesData: FlTitlesData(
                      show: true,
                      bottomTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: true,
                          reservedSize: context.verticalMargin16,
                          getTitlesWidget: (value, meta) => Text(
                            value.toInt().toString(),
                            style: context.textStyle8Light(
                                color: theme.textPrimary),
                          ),
                        ),
                      ),
                      leftTitles: const AxisTitles(
                          sideTitles: SideTitles(showTitles: false)),
                      topTitles: const AxisTitles(
                          sideTitles: SideTitles(showTitles: false)),
                      rightTitles: const AxisTitles(
                          sideTitles: SideTitles(showTitles: false)),
                    ),
                    borderData: FlBorderData(
                      show: true,
                    ),
                    gridData: const FlGridData(show: true),
                    alignment: BarChartAlignment.spaceAround,
                    maxY: 100,
                  ),
                ),
              ),
              SizedBox(height: context.verticalMargin16),
              SizedBox(height: context.verticalMargin16),
              if (completed)
                TextButton(
                  onPressed: () {
                    startSimulation();
                  },
                  child: Text(
                    "Restart",
                    style: context.textStyle16Heavy(
                        color: theme.backgroundPrimary),
                  ),
                ),
              if (completed) ...[
                SizedBox(height: context.verticalMargin16),
                ElevatedButton(
                  onPressed: () {
                    widget.onDone(index: lowestValueIndex);
                  },
                  child: Text(
                    "Result",
                    style: context.textStyle16Heavy(color: Colors.white),
                  ),
                ),
              ],
            ],
          ),
        );
      },
    );
  }

  void startSimulation() async {
    int lowestValue = widget.array[0];
    setState(() {
      completed = false;
      currentIndex = 0;
      lastCheckedIndex = 0;
      lowestValueIndex = 0;
    });

    for (int i = 0; i < widget.array.length; i++) {
      setState(() {
        currentIndex = i;
      });

      await Future.delayed(Duration(milliseconds: widget.speed * 50));

      if (lowestValue > widget.array[i]) {
        setState(() {
          currentIndex = -1;
          lowestValueIndex = i;
        });
        await Future.delayed(Duration(milliseconds: widget.speed * 50));
        setState(() {
          lowestValue = widget.array[i];
          lowestValueIndex = i;
        });

        await Future.delayed(Duration(milliseconds: widget.speed * 25));
      }
    }

    setState(() {
      currentIndex = -1;
      completed = true;
    });
  }
}

part of '../pages/arrays.dart';

class _ResultWidget extends StatelessWidget {
  final VoidCallback onReset;
  final List<int> array;
  final int index;

  const _ResultWidget({
    required this.onReset,
    required this.array,
    required this.index,
  });

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
                "Lowest values: ${array[index]}",
                style: context.textStyle20Heavy(color: theme.textPrimary),
              ),
              SizedBox(height: context.verticalMargin16),
              SizedBox(height: context.verticalMargin16),
              AspectRatio(
                aspectRatio: 1.6,
                child: BarChart(
                  BarChartData(
                    barGroups: array.mapIndexed(
                      (barIndex, value) {
                        return BarChartGroupData(
                          x: value,
                          barRods: [
                            BarChartRodData(
                              fromY: 0,
                              toY: value.toDouble(),
                              width: context.horizontalMargin4,
                              color: index == barIndex
                                  ? theme.positive
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
              SizedBox(height: context.verticalMargin16),
              ElevatedButton(
                onPressed: () {
                  context.pop();
                },
                child: Text(
                  "Go back",
                  style: context.textStyle16Heavy(color: Colors.white),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

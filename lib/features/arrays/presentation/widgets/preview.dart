part of '../pages/arrays.dart';

class _PreviewWidget extends StatefulWidget {
  final Function({
    required List<int> array,
  }) onDone;
  final int length;
  const _PreviewWidget({
    required this.onDone,
    required this.length,
  });

  @override
  State<_PreviewWidget> createState() => _PreviewWidgetState();
}

class _PreviewWidgetState extends State<_PreviewWidget> {
  late List<int> array;

  @override
  void initState() {
    super.initState();
    generate();
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
              SizedBox(height: context.verticalMargin16),
              SizedBox(height: context.verticalMargin16),
              AspectRatio(
                aspectRatio: 4,
                child: BarChart(
                  BarChartData(
                    barGroups: array
                        .map(
                          (e) => BarChartGroupData(
                            x: e,
                            barRods: [
                              BarChartRodData(
                                fromY: 0,
                                toY: e.toDouble(),
                                width: context.horizontalMargin4,
                                color: theme.textSecondary,
                              ),
                            ],
                          ),
                        )
                        .toList(),
                    titlesData: FlTitlesData(
                      show: true,
                      bottomTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: true,
                          reservedSize: context.verticalMargin16,
                          getTitlesWidget: (value, meta) => Text(
                            value.toInt().toString(),
                            style: context.textStyle8Light(color: theme.textPrimary),
                          ),
                        ),
                      ),
                      leftTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
                      topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
                      rightTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
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
              TextButton(
                onPressed: () => generate(),
                child: Text(
                  "Regenerate",
                  style: context.textStyle16Heavy(color: theme.backgroundPrimary),
                ),
              ),
              SizedBox(height: context.verticalMargin16),
              ElevatedButton(
                onPressed: () => widget.onDone(
                  array: array,
                ),
                child: Text(
                  "Start",
                  style: context.textStyle16Heavy(color: Colors.white),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  void generate() {
    final newArray = List.generate(widget.length, (index) => Random().nextInt(99) + 1);
    setState(() {
      array = newArray;
    });
  }
}

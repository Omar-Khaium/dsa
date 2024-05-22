part of '../pages/bubble_sort.dart';

class _SetupWidget extends StatefulWidget {
  final Function({
    required int speed,
    required int length,
  }) onDone;
  const _SetupWidget({
    required this.onDone,
  });

  @override
  State<_SetupWidget> createState() => _SetupWidgetState();
}

class _SetupWidgetState extends State<_SetupWidget> {
  int speed = 30;
  int length = 10;

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
                "Find the lowest value in an array",
                style: context.textStyle20Heavy(color: theme.textPrimary),
              ),
              SizedBox(height: context.verticalMargin4),
              Text(
                "Set up the array length and speed of the simulation",
                style: context.textStyle12Light(color: theme.textPrimary),
              ),
              SizedBox(height: context.verticalMargin16),
              SizedBox(height: context.verticalMargin16),
              SizedBox(height: context.verticalMargin16),
              Text.rich(
                TextSpan(
                  text: "",
                  children: [
                    TextSpan(
                      text: "Speed",
                      style:
                          context.textStyle16Medium(color: theme.textPrimary),
                    ),
                    TextSpan(
                      text: " • ",
                      style:
                          context.textStyle12Light(color: theme.textSecondary),
                    ),
                    TextSpan(
                      text: "${speed * 10}ms",
                      style: context.textStyle12Light(color: theme.textPrimary),
                    ),
                  ],
                ),
              ),
              Slider(
                value: speed / 100,
                divisions: 8,
                min: .1,
                max: .9,
                allowedInteraction: SliderInteraction.tapAndSlide,
                onChanged: (value) =>
                    setState(() => speed = (value * 100).toInt()),
              ),
              SizedBox(height: context.verticalMargin16),
              Text.rich(
                TextSpan(
                  text: "",
                  children: [
                    TextSpan(
                      text: "Length",
                      style:
                          context.textStyle16Medium(color: theme.textPrimary),
                    ),
                    TextSpan(
                      text: " • ",
                      style:
                          context.textStyle12Light(color: theme.textSecondary),
                    ),
                    TextSpan(
                      text: "$length item${length > 1 ? "s" : ""}",
                      style: context.textStyle12Light(color: theme.textPrimary),
                    ),
                  ],
                ),
              ),
              Slider(
                value: length / 10,
                divisions: 50,
                min: .1,
                max: 5,
                allowedInteraction: SliderInteraction.tapAndSlide,
                onChanged: (value) =>
                    setState(() => length = (value * 10).toInt()),
              ),
              SizedBox(height: context.verticalMargin16),
              SizedBox(height: context.verticalMargin16),
              ElevatedButton(
                onPressed: () => widget.onDone(
                  speed: speed,
                  length: length,
                ),
                child: Text(
                  "Start",
                  style: context.textStyle16Medium(color: theme.textPrimary),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

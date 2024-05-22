import '../../../../core/shared/shared.dart';
import '../../../arrays/arrays.dart';

class HomePage extends StatelessWidget {
  static const String path = '/';
  static const String name = 'Home';
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, state) {
        final theme = state.scheme;
        return Scaffold(
          backgroundColor: theme.backgroundPrimary,
          body: ListView(
            padding: EdgeInsets.all(context.radius16),
            children: [
              Text(
                'Arrays',
                style: context.textStyle20Heavy(color: theme.textPrimary),
              ),
              SizedBox(height: context.verticalMargin16),
              ListTile(
                title: Text(
                  'Arrays',
                  style: context.textStyle16Medium(color: theme.textPrimary),
                ),
                subtitle: Text(
                  'Find the lowest value',
                  style: context.textStyle12Light(color: theme.textSecondary),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: theme.textSecondary,
                ),
                onTap: () => context.pushNamed(ArraysPage.name),
              ),
            ],
          ),
        );
      },
    );
  }
}

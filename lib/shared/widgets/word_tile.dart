part of "widgets.dart";

class PWidgetsWordTile extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  const PWidgetsWordTile({super.key, required this.onTap, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 4, vertical: 0),
          title: Text(
            title,
            style: context.appTextTheme.bodyMedium?.copyWith(),
          ),
          onTap: () {
            onTap();
          },
        ),
        Divider(
          color: context.appTextTheme.bodyMedium?.color,
        )
      ],
    );
  }
}

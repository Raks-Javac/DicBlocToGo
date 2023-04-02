part of "widgets.dart";

class PWidgetsAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? leadingWidget;
  final List<Widget>? trailingWidgets;
  final String? title;
  const PWidgetsAppBar(
      {super.key, this.leadingWidget, this.trailingWidgets, this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: context.appTheme.scaffoldBackgroundColor,
      leading: leadingWidget ??
          BackButton(
            color: context.appTextTheme.bodyMedium?.color,
          ),
      elevation: 0,
      title: Text(
        title ?? "",
        style: context.appTextTheme.bodyMedium?.copyWith(fontSize: 17),
      ),
      centerTitle: true,
      actions: [...?trailingWidgets],
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, 60);
}

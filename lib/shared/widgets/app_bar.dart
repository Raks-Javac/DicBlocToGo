import 'package:flutter/material.dart';

class PWidgetsAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? leadingWidget;
  final List<Widget>? trailingWidgets;
  final String? title;
  const PWidgetsAppBar(
      {super.key, this.leadingWidget, this.trailingWidgets, this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: leadingWidget ?? const BackButton(),
      title: Text(
        title ?? "",
      ),
      actions: [...?trailingWidgets],
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, 60);
}

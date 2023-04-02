part of "widgets.dart";

class PWidgetsButton extends StatelessWidget {
  final String label;
  final Function? onPressed;
  final bool? isEnabled;
  final String? leftIconPath;
  final Color? dynamicColor;
  final TextStyle? textStyle;

  const PWidgetsButton({
    required this.label,
    required this.onPressed,
    this.isEnabled = true,
    this.leftIconPath,
    this.dynamicColor,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppConstants.buttonHeight,
      child: InkWell(
        splashColor: Colors.amber,
        onTap: () {},
        child: TextButton(
            onPressed: () => isEnabled == false
                ? () {}
                : onPressed != null
                    ? onPressed!()
                    : null,
            style: TextButton.styleFrom(
                backgroundColor: isEnabled == false
                    ? dynamicColor ??
                        context.appTheme.primaryColor.withOpacity(0.4)
                    : dynamicColor ?? context.appTheme.primaryColor,
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    child: leftIconPath == null
                        ? null
                        : Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Image.asset(leftIconPath!))),
                Visibility(
                  replacement: CircularProgressIndicator(
                    color: Colors.white,
                  ),
                  visible: true,
                  child: Text(
                    label,
                    style: textStyle ??
                        context.appTextTheme.bodyMedium
                            ?.copyWith(color: DColors.white),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}

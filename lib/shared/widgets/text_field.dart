part of "widgets.dart";

class PWidgetTextFieldInDarkState extends StatelessWidget {
  final String? label;
  final TextInputType? keyboardType;
  final bool obscureText;
  final String? hintText;
  final TextInputFormatter? formatter;
  final Function(String)? onChanged;
  final Function()? onTap;
  final int? maxLength;
  final TextEditingController? textEditingController;
  final dynamic validator;
  final bool shouldReadOnly;

  const PWidgetTextFieldInDarkState({
    super.key,
    this.label,
    this.onChanged,
    this.onTap,
    this.keyboardType,
    this.formatter,
    this.obscureText = false,
    this.hintText,
    this.maxLength,
    this.textEditingController,
    this.validator,
    this.shouldReadOnly = false,
    trailing,
    suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null)
          Text(
            label ?? "",
            style: context.appTheme.textTheme.bodyMedium,
          ),
        addVerticalSpacing(4),
        SizedBox(
          // height: maxLength != null ? 9.h : 7.h,
          width: double.infinity,
          child: TextFormField(
            controller: textEditingController,
            maxLength: maxLength,
            onTap: onTap,
            onChanged: (text) {
              if (onChanged != null) onChanged!(text);
            },
            cursorColor: DColors.white,
            keyboardType: keyboardType,
            obscureText: obscureText,
            inputFormatters: [
              formatter ?? FilteringTextInputFormatter.singleLineFormatter
            ],
            maxLengthEnforcement: MaxLengthEnforcement.enforced,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: validator,
            style: context.appTheme.textTheme.bodyMedium!.copyWith(
              color: DColors.white,
              fontSize: 12.0,
            ),
            readOnly: shouldReadOnly,
            decoration: InputDecoration(
                fillColor: Colors.grey.withOpacity(0.20),
                filled: true,
                counterText: "",
                hintText: hintText,
                hintStyle: context.appTheme.textTheme.bodyMedium!
                    .copyWith(color: DColors.white.withOpacity(0.4)),
                contentPadding: const EdgeInsets.only(
                  left: 8.0,
                  top: 19.0,
                ),
                focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: DColors.white, width: 1.5),
                    borderRadius: BorderRadius.all(Radius.circular(5.0))),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: DColors.white.withOpacity(0), width: 0),
                    borderRadius: const BorderRadius.all(Radius.circular(5.0))),
                focusedErrorBorder: const OutlineInputBorder(
                    borderSide:
                        BorderSide(color: DColors.redAccent, width: 1.5),
                    borderRadius: BorderRadius.all(Radius.circular(5.0))),
                errorBorder: const OutlineInputBorder(
                    borderSide:
                        BorderSide(color: DColors.redAccent, width: 1.5),
                    borderRadius: BorderRadius.all(Radius.circular(5.0)))),
          ),
        )
      ],
    );
  }
}

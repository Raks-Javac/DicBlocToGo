part of "widgets.dart";

class PWidgetsDropDown extends StatelessWidget {
  final Widget? prefixIcon;
  final String? label;
  final List<dynamic> items;
  final String? hintText;
  final TextStyle? hintStyle;
  final Function(dynamic)? onChanged;
  final dynamic validateFn;
  final String? selectedItem;
  final Widget? suffixIcon;

  const PWidgetsDropDown(
      {super.key,
      this.label,
      this.hintStyle,
      this.prefixIcon,
      required this.items,
      this.suffixIcon,
      this.selectedItem,
      this.validateFn,
      this.hintText,
      required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        DropdownButtonFormField<dynamic>(
          isExpanded: true,
          icon: const SizedBox(),
          decoration: InputDecoration(
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            contentPadding: const EdgeInsets.symmetric(horizontal: 15),
            border: OutlineInputBorder(
              gapPadding: 2,
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                width: 1,
                color: WColors.primaryColor,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              gapPadding: 0,
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                width: 1,
                color: WColors.primaryColor,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              gapPadding: 0,
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                width: 1,
                color: WColors.primaryColor,
              ),
            ),
          ),
          hint: Text(
            hintText ?? "",
            style: hintStyle ?? context.appTextTheme.bodySmall,
          ),
          items: (items).map((dynamic value) {
            return DropdownMenuItem<dynamic>(
              value: value,
              child: Text(
                value,
                style: context.appTextTheme.bodySmall,
              ),
            );
          }).toList(),
          // dropdownColor: DColors.darkBAckgroundColor,
          onChanged: (val) {
            onChanged!(val);
          },
        ),
      ],
    );
  }
}

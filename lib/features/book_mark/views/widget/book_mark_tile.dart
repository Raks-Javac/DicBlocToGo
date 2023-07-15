import 'package:dict_app/core/utils/extensions.dart';
import 'package:dict_app/shared/res/res.dart';
import 'package:flutter/material.dart';

class BookMarkTile extends StatelessWidget {
  final String tileTile;
  final Function() onTap;
  final Function() onHightLightOnTap;
  final bool active;
  final bool onLongPressBool;
  final Function() onLongPress;
  final bool onTapBool;
  final Function(bool value) onChange;

  const BookMarkTile(
      {super.key,
      required this.tileTile,
      required this.onTap,
      required this.active,
      required this.onLongPress,
      required this.onHightLightOnTap,
      required this.onTapBool,
      required this.onLongPressBool,
      required this.onChange});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (onLongPressBool == false) {
          onTap();
        } else {
          onHightLightOnTap();
        }
      },
      onLongPress: () {
        onLongPress();
      },
      child: Column(
        children: [
          ListTile(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 1,
            ),
            title: Row(
              children: [
                Expanded(
                  flex: 10,
                  child: Text(
                    tileTile,
                    style: context.appTextTheme.bodyLarge!
                        .copyWith(fontFamily: WStrings.boldFontName),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
            trailing: onLongPressBool == false
                ? const SizedBox.shrink()
                : Checkbox(
                    activeColor: context.appTheme.primaryColor,
                    value: onTapBool,
                    onChanged: (bool? newValue) {
                      onChange(newValue!);
                    },
                  ),
          ),
          Divider(
            color: WColors.white.withOpacity(0.4),
          ),
        ],
      ),
    );
  }
}

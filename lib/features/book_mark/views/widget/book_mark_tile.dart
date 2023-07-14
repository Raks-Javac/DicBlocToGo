import 'package:dict_app/core/utils/extensions.dart';
import 'package:dict_app/shared/res/res.dart';
import 'package:flutter/material.dart';

class BookMarkTile extends StatelessWidget {
  final String tileTile;
  final Function() onTap;
  final bool active;
  final bool onLongPressBool;
  final Function() onLongPress;

  const BookMarkTile(
      {super.key,
      required this.tileTile,
      required this.onTap,
      required this.active,
      required this.onLongPress,
      required this.onLongPressBool});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (!onLongPressBool) {
          onTap();
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
                    value: false,
                    onChanged: (bool? newValue) {
                      // Implement the logic for checkbox change here
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

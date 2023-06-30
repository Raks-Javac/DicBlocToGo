import 'package:dict_app/core/utils/extensions.dart';
import 'package:dict_app/shared/res/res.dart';
import 'package:dict_app/shared/widgets/custom_page_with_app_bar.dart';
import 'package:dict_app/shared/widgets/render_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookMarkMainView extends StatelessWidget {
  const BookMarkMainView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPageWithAppBar(
      appBarBody: AppBar(
        backgroundColor: WColors.barBlackColor,
        toolbarHeight: 20.h,
        centerTitle: true,
        title: Text(
          "Bookmark",
          style: context.appTextTheme.titleLarge!.copyWith(
              color: WColors.white, fontFamily: WStrings.boldFontName),
        ).center,
        actions: const [
          WWidgetsRenderSvg(
            svgPath: nAdeleteIcon,
          ),
        ],
      ).paddingOnly(top: 29),
      extendedBody: Container(),
    );
  }
}

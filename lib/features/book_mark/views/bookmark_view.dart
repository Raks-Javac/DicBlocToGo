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
      extendedBody: SingleChildScrollView(
        child: Column(
          children: [
            for (int i = 0; i < 20; i++) const BookMarkTile(),
            // Align(
            //   alignment: Alignment.center,
            //   child: WWidgetsRenderLottie(
            //     lottiePath: nABookMarkAnimation,
            //     isContinous: true,
            //   ),
            // )
          ],
        ),
      ).marginSymmetric(horizontal: 20, vertical: 30),
    );
  }
}

class BookMarkTile extends StatelessWidget {
  const BookMarkTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
                  'Boy',
                  style: context.appTextTheme.bodyLarge!
                      .copyWith(fontFamily: WStrings.boldFontName),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          trailing: Checkbox(
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
    );
  }
}

import 'package:dict_app/core/navigation/navigation_1.0.dart';
import 'package:dict_app/core/navigation/routes.dart';
import 'package:dict_app/core/utils/extensions.dart';
import 'package:dict_app/features/book_mark/bloc/book_amrk_bloc.dart';
import 'package:dict_app/features/book_mark/views/widget/book_mark_tile.dart';
import 'package:dict_app/shared/res/res.dart';
import 'package:dict_app/shared/widgets/custom_page_with_app_bar.dart';
import 'package:dict_app/shared/widgets/render_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookMarkMainView extends StatefulWidget {
  const BookMarkMainView({super.key});

  @override
  State<BookMarkMainView> createState() => _BookMarkMainViewState();
}

class _BookMarkMainViewState extends State<BookMarkMainView> {
  @override
  void initState() {
    BlocProvider.of<BookMarkBloc>(context).runInit();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final bookMarkBloc = BlocProvider.of<BookMarkBloc>(context).state;
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
        actions: [
          if (bookMarkBloc.isBookMarkLoaded == true)
            (bookMarkBloc.bookMarkList!.isNotEmpty)
                ? const WWidgetsRenderSvg(
                    svgPath: nAdeleteIcon,
                  )
                : const SizedBox.shrink(),
        ],
      ).paddingOnly(top: 29),
      extendedBody: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            if (bookMarkBloc.bookMarkList == null)
              const WWidgetsRenderLottie(lottiePath: nALoadingAnimation),
            if (bookMarkBloc.bookMarkList != null)
              for (int i = 0; i < bookMarkBloc.bookMarkList!.length; i++)
                BookMarkTile(
                  onTap: () {
                    // if (!onLongPressBool) {
                    //   onTap();
                    // }
                    WNavigator.pushNamed(WRoutes.bookMarkDetailsView,
                        arguments: bookMarkBloc.bookMarkList![i]);
                  },
                  active: false,
                  tileTile: bookMarkBloc.bookMarkList![i].word ?? "",
                  onLongPress: () {},
                  onLongPressBool: false,
                ),
          ],
        ),
      ).marginSymmetric(horizontal: 20, vertical: 30),
    );
  }
}

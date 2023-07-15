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
    final bookMarkBloc = BlocProvider.of<BookMarkBloc>(context, listen: true);
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
          if (bookMarkBloc.state.isBookMarkLoaded == true)
            (bookMarkBloc.state.bookMarkList!.isNotEmpty)
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
            if (bookMarkBloc.state.bookMarkList == null)
              Column(
                children: [
                  const SizedBox(
                    height: 200,
                    width: 200,
                    child: Center(
                        child: WWidgetsRenderLottie(
                      lottiePath: nABookMarkAnimation,
                      isContinous: true,
                    )),
                  ).center.paddingOnly(top: 100),
                  addVerticalSpacing(20),
                  const Text(
                    "Loading Bookmarks",
                  )
                ],
              ),
            if (bookMarkBloc.state.bookMarkList != null)
              for (int i = 0; i < bookMarkBloc.state.bookMarkList!.length; i++)
                BookMarkTile(
                  onTap: () {
                    WNavigator.pushNamed(WRoutes.bookMarkDetailsView,
                        arguments: bookMarkBloc.state.bookMarkList![i]);
                  },
                  active: bookMarkBloc.state.bookMarkList![i].selected,
                  tileTile:
                      bookMarkBloc.state.bookMarkList![i].word?.capitalize() ??
                          "",
                  onLongPress: () {
                    context.read<BookMarkBloc>().onLongPressBookMark();
                  },
                  onLongPressBool: bookMarkBloc.state.onLongPressBool!,
                  onChange: (bool value) {},
                  onHightLightOnTap: () {
                    context.read<BookMarkBloc>().toggleBookMarkState(i);
                  },
                  onTapBool: bookMarkBloc.state.bookMarkList![i].selected,
                ),
            if (bookMarkBloc.state.bookMarkList != null)
              if (bookMarkBloc.state.bookMarkList!.isEmpty)
                Column(
                  children: [
                    const SizedBox(
                      height: 200,
                      width: 200,
                      child: Center(
                          child: WWidgetsRenderLottie(
                        lottiePath: nABookMarkAnimation,
                        isContinous: false,
                      )),
                    ).center.paddingOnly(top: 100),
                    addVerticalSpacing(20),
                    const Text(
                      "You have no bookmarks yet.",
                    )
                  ],
                ),
          ],
        ),
      ).marginSymmetric(horizontal: 20, vertical: 30),
    );
  }
}

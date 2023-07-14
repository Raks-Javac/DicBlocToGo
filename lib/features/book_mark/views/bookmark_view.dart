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
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            for (int i = 0; i < 20; i++)
              BookMarkTile(
                onTap: () {},
                active: false,
                tileTile: 'Grace',
                onLongPress: () {},
                onLongPressBool: false,
              ),
          ],
        ),
      ).marginSymmetric(horizontal: 20, vertical: 30),
    );
  }
}

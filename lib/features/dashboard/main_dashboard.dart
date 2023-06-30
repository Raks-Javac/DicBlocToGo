import 'package:dict_app/core/utils/extensions.dart';
import 'package:dict_app/features/book_mark/views/bookmark_view.dart';
import 'package:dict_app/features/home/blocs/home_bloc.dart';
import 'package:dict_app/features/home/views/home_screen.dart';
import 'package:dict_app/features/settings/views/settings_view.dart';
import 'package:dict_app/shared/res/res.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainDashboardScreen extends StatefulWidget {
  const MainDashboardScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MainDashBoardScreenState createState() => _MainDashBoardScreenState();
}

class _MainDashBoardScreenState extends State<MainDashboardScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  List<Tab> tabs({ThemeBloc? themeBloc}) => [
        const Tab(
          iconMargin: EdgeInsets.only(top: 10),
          icon: ImageIcon(
            AssetImage(nAHomeIcon),
          ),
          text: '',
        ),
        const Tab(
          iconMargin: EdgeInsets.only(top: 10),
          icon: ImageIcon(
            AssetImage(nABookMarkIcon),
          ),
          text: '',
        ),
        const Tab(
          iconMargin: EdgeInsets.only(top: 10),
          icon: ImageIcon(
            AssetImage(nASettingsIcon),
          ),
          text: '',
        ),
      ];

  final List<Widget> _views = [
    const DictionaryHomeView(),
    const BookMarkMainView(),
    const SettingsMainView(),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: tabs().length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final homeBloc = BlocProvider.of<HomeActivityBloc>(context);
    return Scaffold(
      body: TabBarView(
        physics: const NeverScrollableScrollPhysics(),
        controller: _tabController,
        children: _views,
      ),
      bottomNavigationBar: Builder(builder: (context) {
        final themeBloc = context.watch<ThemeBloc>();
        return SizedBox(
          height: 65.h,
          child: TabBar(
            indicator: BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: context.appTheme.primaryColor,
                  width: 3.0,
                ),
              ),
            ),
            labelStyle: context.appTextTheme.bodySmall,
            controller: _tabController,
            tabs: tabs(themeBloc: themeBloc),
            labelColor: themeBloc.isDarkMode == false
                ? WColors.primaryColor
                : WColors.white,
            unselectedLabelColor: themeBloc.isDarkMode == false
                ? WColors.barBlackColor
                : WColors.white,
          ),
        );
      }),
    );
  }
}

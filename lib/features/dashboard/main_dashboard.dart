import 'package:dict_app/core/utils/extensions.dart';
import 'package:dict_app/features/book_mark/views/bookmark_view.dart';
import 'package:dict_app/features/home/views/home_screen.dart';
import 'package:dict_app/features/settings/views/settings_view.dart';
import 'package:flutter/material.dart';
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

  final List<Tab> _tabs = [
    Tab(
      iconMargin: EdgeInsets.zero,
      height: 40.h,
      icon: const Icon(Icons.home),
      text: 'Home',
    ),
    Tab(
      height: 40.h,
      iconMargin: EdgeInsets.zero,
      icon: const Icon(Icons.favorite),
      text: 'Favorites',
    ),
    Tab(
      height: 40.h,
      iconMargin: EdgeInsets.zero,
      icon: const Icon(Icons.person),
      text: 'Profile',
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
    _tabController = TabController(length: _tabs.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: _tabController,
        children: _views,
      ),
      bottomNavigationBar: SizedBox(
        height: 60.h,
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
          tabs: _tabs,
          labelColor: Colors.white,
          unselectedLabelColor: Colors.grey,
        ),
      ).marginOnly(bottom: 10),
    );
  }
}

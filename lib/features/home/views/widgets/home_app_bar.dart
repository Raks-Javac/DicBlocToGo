import 'package:dict_app/core/utils/extensions.dart';
import 'package:dict_app/features/home/blocs/home_bloc.dart';
import 'package:dict_app/shared/res/res.dart';
import 'package:dict_app/shared/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final homeBloc = BlocProvider.of<HomeActivityBloc>(context);
    return Builder(builder: (context) {
      return BlocConsumer<HomeActivityBloc, HomeState>(
          listener: (context, state) {},
          builder: (context, state) {
            return PWidgetsAppBar(
              title: state is IsTypingState ? "Search" : "Home",
              leadingWidget: state is IsTypingState
                  ? BackButton(
                      color: context.appTextTheme.bodyLarge?.color,
                      onPressed: () {
                        homeBloc.reset();
                      },
                    )
                  : const SizedBox(),
              trailingWidgets: [
                if (state is NotTypingState)
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Image.asset(
                      nABookMarkIcon,
                      width: 18,
                      height: 18,
                    ),
                  ),
                addHorizontalSpacing(19),
                // GestureDetector(
                //   onTap: () {
                //     context.read<ThemeBloc>().changeTheme();
                //   },
                //   child: Padding(
                //     padding: const EdgeInsets.only(right: 20.0),
                //     child: Image.asset(
                //       themeBloc.isDarkMode == false
                //           ? nADarkModeIcon
                //           : nALightModeIcon,
                //       width: 18,
                //       height: 18,
                //     ),
                //   ),
                // ),
              ],
            );
          });
    });
  }

  @override
  Size get preferredSize => const Size(double.infinity, 60);
}

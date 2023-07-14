import 'package:dict_app/core/navigation/navigation_1.0.dart';
import 'package:dict_app/core/navigation/routes.dart';
import 'package:dict_app/core/utils/extensions.dart';
import 'package:dict_app/features/recent_words/bloc/recent_word_bloc.dart';
import 'package:dict_app/shared/res/res.dart';
import 'package:dict_app/shared/widgets/render_assets.dart';
import 'package:dict_app/shared/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RecentSearchedViewedWords extends StatelessWidget {
  const RecentSearchedViewedWords({super.key});

  @override
  Widget build(BuildContext context) {
    final homeBloc = BlocProvider.of<RecentWordsBloc>(context, listen: true);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          addVerticalSpacing(10),
          Row(
            children: [
              const Expanded(child: Text("Recent words")),
              if (homeBloc.state.recentWordList != null)
                homeBloc.state.recentWordList!.isNotEmpty
                    ? TextButton(
                        onPressed: () {
                          context.read<RecentWordsBloc>().clearAllRecentWords();
                        },
                        child: Text(
                          "clear all",
                          style: context.appTextTheme.bodyMedium?.copyWith(
                              fontSize: 15,
                              color: context.appTextTheme.bodyMedium?.color
                                  ?.withOpacity(0.5)),
                        ),
                      )
                    : const SizedBox.shrink()
            ],
          ),
          if (homeBloc.state.recentWordList == null)
            const Center(
                    child: SizedBox(
                        width: 100,
                        height: 100,
                        child: WWidgetsRenderLottie(
                            lottiePath: nALoadingAnimation)))
                .marginOnly(top: 100),
          if (homeBloc.state.recentWordList != null)
            homeBloc.state.recentWordList!.isEmpty
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      addVerticalSpacing(50),
                      Image.asset(
                        nANoWordFoundHereYet,
                        width: 200,
                        height: 200,
                      ),
                      addVerticalSpacing(8),
                      Text(
                        "You have no word here yet",
                        style: context.appTextTheme.bodyMedium?.copyWith(
                          fontSize: 15,
                        ),
                      )
                    ],
                  )
                : const SizedBox.shrink(),
          if (homeBloc.state.recentWordList != null)
            ...homeBloc.state.recentWordList!.map((e) {
              return PWidgetsWordTile(
                title: e.word.toString(),
                onTap: () {
                  WNavigator.pushNamed(WRoutes.detailsRoute, arguments: e);
                },
              );
            })
        ],
      ),
    );
  }
}

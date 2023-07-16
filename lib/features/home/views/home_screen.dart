import 'package:dict_app/core/navigation/navigation_1.0.dart';
import 'package:dict_app/core/navigation/routes.dart';
import 'package:dict_app/core/utils/extensions.dart';
import 'package:dict_app/core/utils/helper_functions.dart';
import 'package:dict_app/core/utils/logger.dart';
import 'package:dict_app/features/book_mark/bloc/book_amrk_bloc.dart';
import 'package:dict_app/features/home/blocs/home_bloc.dart';
import 'package:dict_app/features/home/blocs/words_bloc.dart';
import 'package:dict_app/features/home/data/models/search_word_model.dart';
import 'package:dict_app/features/recent_words/bloc/recent_word_bloc.dart';
import 'package:dict_app/features/recent_words/views/recent_word_views.dart';
import 'package:dict_app/shared/res/res.dart';
import 'package:dict_app/shared/widgets/custom_page_with_app_bar.dart';
import 'package:dict_app/shared/widgets/render_assets.dart';
import 'package:dict_app/shared/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DictionaryHomeView extends StatefulWidget {
  const DictionaryHomeView({super.key});

  @override
  State<DictionaryHomeView> createState() => _DictionaryHomeViewState();
}

class _DictionaryHomeViewState extends State<DictionaryHomeView> {
  @override
  void initState() {
    BlocProvider.of<HomeActivityBloc>(context).runInit();
    BlocProvider.of<RecentWordsBloc>(context).runInit();
    BlocProvider.of<BookMarkBloc>(context).runInit();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //dictionary cubit
    final cubit = BlocProvider.of<DictionaryBloc>(context);
    final homeBloc = BlocProvider.of<HomeActivityBloc>(context, listen: true);
    return GestureDetector(
      onTap: () {
        dissmissKeyboard();
      },
      child: BlocConsumer<DictionaryBloc, DictionaryState>(
          listener: (context, state) {
            returnOnState(state);
          },
          bloc: cubit,
          builder: (context, state) {
            return CustomPageWithAppBar(
              appBarBody: Column(
                children: [
                  Text(
                    "Hi ${homeBloc.state.username ?? "Pal"}",
                    style: context.appTextTheme.bodyLarge!.copyWith(
                      fontFamily: WStrings.boldFontName,
                    ),
                  ),
                  addVerticalSpacing(20),
                  PWidgetTextFieldInDarkState(
                    prefixIcon: const UnconstrainedBox(
                      child: WWidgetsRenderSvg(
                        svgPath: nASearchIcon,
                      ),
                    ),
                    hintText: "Enter the word you want to search",
                    onChanged: (val) {
                      if (val.isNotEmpty) {
                        cubit.searchWordOnUI();
                      }
                    },
                    suffixIcon: UnconstrainedBox(
                      child: Row(
                        children: [
                          if (cubit
                              .wordSearchTextFieldController.text.isNotEmpty)
                            GestureDetector(
                              onTap: () {
                                cubit.clearTextField();
                              },
                              child: const WWidgetsRenderSvg(
                                svgPath: nACancelIcon,
                              ),
                            ),
                          addHorizontalSpacing(10),
                          GestureDetector(
                            onTap: () {
                              cubit.searchWordOnUI();
                              dissmissKeyboard();
                            },
                            child: const WWidgetsRenderSvg(
                              svgPath: nASendIcon,
                            ),
                          ),
                        ],
                      ).marginOnly(right: 15),
                    ),
                    textEditingController: cubit.wordSearchTextFieldController,
                  ).marginSymmetric(
                    horizontal: 10,
                  ),
                ],
              ).marginOnly(top: 20),
              extendedBody: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 15.0,
                        vertical: 10,
                      ),
                    ),
                    returnOnState(state)
                  ],
                ),
              ),
            );
          }),
    );
  }

  Widget returnOnState(DictionaryState state) {
    if (state is WordExistState) {
      return WordsList(state.words);
    } else if (state is SearchingWordState) {
      return const LoadingWidget();
    } else if (state is NotSearchingWordState) {
      return const RecentSearchedViewedWords();
    } else if (state is ErrorState) {
      return ErrorWidget(
        erroMessage: state.errorMessage,
      );
    } else {
      return const ErrorWidget();
    }
  }
}

class WordsList extends StatelessWidget {
  final List<SearchWordModelResponse> words;
  const WordsList(
    this.words, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final recentWordsBloc =
        BlocProvider.of<RecentWordsBloc>(context, listen: true);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Suggestions",
            style: context.appTextTheme.titleMedium?.copyWith(
              fontFamily: WStrings.boldFontName,
              color: context.appTextTheme.bodyLarge?.color,
            ),
          ),
          addVerticalSpacing(10),
          ...words.map((e) {
            return PWidgetsWordTile(
                onTap: () {
                  recentWordsBloc.addRecentWordToDB(e);

                  WNavigator.pushNamed(WRoutes.detailsRoute, arguments: e);
                },
                title: e.word.toString());
          })
        ],
      ),
    );
  }
}

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 200,
            width: 200,
            child: Center(
                child: WWidgetsRenderLottie(
              lottiePath: nAsearchingAnimation,
              isContinous: true,
            )),
          ),
          addVerticalSpacing(10),
          const Text(
            "Please wait a moment while we retrieve the information for your searched word. Thank you for your patience!",
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}

class ErrorWidget extends StatelessWidget {
  final String? erroMessage;
  const ErrorWidget({super.key, this.erroMessage});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 90),
            child: Text(
              erroMessage ?? "Word not found",
              textAlign: TextAlign.center,
            )));
  }
}

class NoInternetConnection extends StatelessWidget {
  const NoInternetConnection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text("No internet");
  }
}

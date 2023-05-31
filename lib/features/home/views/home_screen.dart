import 'package:dict_app/core/utils/constants.dart';
import 'package:dict_app/core/utils/extensions.dart';
import 'package:dict_app/features/home/blocs/words_bloc.dart';
import 'package:dict_app/features/home/data/models/search_word_model.dart';
import 'package:dict_app/shared/res/res.dart';
import 'package:dict_app/shared/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../core/navigation/go_router.dart';

class DictionaryHomeView extends StatelessWidget {
  const DictionaryHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    //theme bloc
    final themeBloc = BlocProvider.of<ThemeBloc>(context);

    //dictionary cubit
    final cubit = BlocProvider.of<DictionaryBloc>(context);

    //
    return BlocConsumer<DictionaryBloc, DictionaryState>(
        listener: (context, state) {},
        bloc: cubit,
        builder: (context, state) {
          return Scaffold(
              appBar: PWidgetsAppBar(
                title: cubit.wordSearchTextFieldController.text.isNotEmpty
                    ? "Search"
                    : "Home",
                leadingWidget:
                cubit.wordSearchTextFieldController.text.isNotEmpty
                    ? null
                    : const SizedBox(),
                trailingWidgets: [
                  if (cubit.wordSearchTextFieldController.text.isEmpty)
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Image.asset(
                        nABookMarkIcon,
                        width: 18,
                        height: 18,
                      ),
                    ),
                  addHorizontalSpacing(19),
                  GestureDetector(
                    onTap: () {
                      context.read<ThemeBloc>().changeTheme();
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: Image.asset(
                        themeBloc.isDarkMode == false
                            ? nADarkModeIcon
                            : nALightModeIcon,
                        width: 18,
                        height: 18,
                      ),
                    ),
                  ),
                ],
              ),
              body: SizedBox(
                width: double.infinity,
                height: double.infinity,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 15.0,
                          vertical: 10,
                        ),
                        child: PWidgetTextFieldInDarkState(
                          label: "Word",
                          hintText: "Enter the word you want to search",
                          onChanged: (val) {
                            cubit.searchWordOnUI();
                          },
                          suffixIcon: UnconstrainedBox(
                              child: ImageIcon(
                                const AssetImage(
                                  nASendIcon,
                                ),
                                size: 18,
                                color: context.appTextTheme.bodyLarge!.color,
                              )),
                          textEditingController:
                          cubit.wordSearchTextFieldController,
                        ),
                      ),
                      returnOnState(state)
                    ],
                  ),
                ),
              ));
        });
  }

  Widget returnOnState(DictionaryState state) {
    if (state is WordExistState) {
      return WordsList(state.words);
    } else if (state is SearchingWordState) {
      return const LoadingWidget();
    } else if (state is NotSearchingWordState) {
      return const NoWordsSearchedYet();
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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 2),
      child: Column(
        children: [
          ...words.map((e) {
            return ListTile(
              leading: const Icon(Icons.book),
              title: Text(e.word),
              subtitle: Text("Meaning count : ${e.meanings!.length}"),
              onTap: () {
                SearchWordModelResponse wordModel = SearchWordModelResponse(
                    word: e.word, phonetic: e.phonetic, meanings: e.meanings);
                context.goNamed('detail', extra: wordModel);
              },
            );
            // return PWidgetsWordTile(onTap: () {}, title: e.word.toString());
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
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 90),
      child: Center(
        child: CupertinoActivityIndicator(
          color: context.appTextTheme.bodyLarge!.color!,
        ),
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

class NoWordsSearchedYet extends StatelessWidget {
  const NoWordsSearchedYet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          addVerticalSpacing(10),
          Row(
            children: [
              const Expanded(child: Text("Recent words")),
              if (AppConstants.recentWordList.isNotEmpty)
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "clear all",
                    style: context.appTextTheme.bodyMedium?.copyWith(
                        fontSize: 15,
                        color: context.appTextTheme.bodyMedium?.color
                            ?.withOpacity(0.5)),
                  ),
                )
            ],
          ),
          if (AppConstants.recentWordList.isEmpty) addVerticalSpacing(40),
          if (AppConstants.recentWordList.isEmpty)
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
            ),
          if (AppConstants.recentWordList.isNotEmpty)
            ...AppConstants.recentWordList.map((e) {
              return PWidgetsWordTile(
                title: e.word.toString(),
                onTap: () {},
              );
            })
        ],
      ),
    );
  }
}

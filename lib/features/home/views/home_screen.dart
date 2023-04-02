import 'package:dict_app/core/navigation/go_router.dart';
import 'package:dict_app/core/utils/extensions.dart';
import 'package:dict_app/features/home/blocs/words_bloc.dart';
import 'package:dict_app/features/home/data/models/search_word_model.dart';
import 'package:dict_app/shared/res/res.dart';
import 'package:dict_app/shared/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class DictionaryHomeView extends StatelessWidget {
  const DictionaryHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    // final cubit = context.watch<DictionaryBloc>();
    final cubit = BlocProvider.of<DictionaryBloc>(context);
    return BlocConsumer<DictionaryBloc, DictionaryState>(
        listener: (context, state) {},
        bloc: cubit,
        builder: (context, state) {
          return Scaffold(
              appBar: PWidgetsAppBar(
                title: "Home",
                leadingWidget: const SizedBox(),
                trailingWidgets: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Image.asset(
                      nABookMarkIcon,
                      width: 18,
                      height: 18,
                    ),
                  ),
                  addHorizontalSpacing(19),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Image.asset(
                      nADarkModeIcon,
                      width: 18,
                      height: 18,
                    ),
                  ),
                ],
              ),
              body: Column(
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
                          child: Image.asset(
                        nASendIcon,
                        width: 20,
                        height: 20,
                      )),
                      textEditingController:
                          cubit.wordSearchTextFieldController,
                    ),
                  ),
                  Expanded(child: returnOnState(state)),
                ],
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
    return SingleChildScrollView(
      child: Column(
        children: [
          ...words.map((e) {
            return ListTile(
              leading: const Icon(Icons.book),
              title: Text(e.word),
              subtitle: Text("Meaning count : ${e.meanings.length}"),
              onTap: () {
                context.go("$dictionaryHomeRoute/$detailsRoute");
              },
            );
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
    return const Center(
      child: CupertinoActivityIndicator(),
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
            padding: const EdgeInsets.symmetric(horizontal: 20),
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
          addVerticalSpacing(6),
          Expanded(
            child: Column(
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
          ),
        ],
      ),
    );
  }
}

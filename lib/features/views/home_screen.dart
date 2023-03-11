import 'package:dict_app/core/navigation/go_router.dart';
import 'package:dict_app/features/blocs/words_bloc.dart';
import 'package:dict_app/features/data/models/search_word_model.dart';
import 'package:dict_app/shared/res/res.dart';
import 'package:dict_app/shared/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class DictionaryHome extends StatelessWidget {
  const DictionaryHome({super.key});

  @override
  Widget build(BuildContext context) {
    // final cubit = context.watch<DictionaryBloc>();
    final cubit = BlocProvider.of<DictionaryBloc>(context);
    return BlocConsumer<DictionaryBloc, DictionaryState>(
        listener: (context, state) {},
        bloc: cubit,
        builder: (context, state) {
          return Scaffold(
              body: Column(
            children: [
              Container(
                color: Colors.black,
                width: double.infinity,
                child: Column(
                  children: [
                    addVerticalSpacing(25),
                    const Text(
                      "Search word",
                      style: TextStyle(
                        color: DColors.white,
                        fontSize: 20,
                      ),
                    ),
                    addVerticalSpacing(20),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: PWidgetTextFieldInDarkState(
                        label: "Enter search word",
                        onChanged: (val) {
                          cubit.searchWordOnUI();
                        },
                        textEditingController:
                            cubit.wordSearchTextFieldController,
                      ),
                    ),
                    addVerticalSpacing(20),
                  ],
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
                context.go(detailsRoute);
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
    return Center(child: Text(erroMessage ?? "Word not found"));
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
    return const Center(
        child: Text("Type in the word you would like to search"));
  }
}

import 'package:dict_app/features/recent_words/entitiy/recent_words_entity.dart';

class RecentWordState {
  List<RecentWordsEntity>? recentWordList;
  RecentWordsEntity? selectedRecentWord;
  RecentWordState({this.recentWordList, this.selectedRecentWord});

  factory RecentWordState.initialState() {
    return RecentWordState();
  }

  RecentWordState copyWith(
      {List<RecentWordsEntity>? recentWordList,
      RecentWordsEntity? selectedRecentWord}) {
    return RecentWordState(
        recentWordList: recentWordList ?? this.recentWordList,
        selectedRecentWord: selectedRecentWord ?? this.selectedRecentWord);
  }
}

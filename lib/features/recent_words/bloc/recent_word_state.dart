import 'package:dict_app/features/recent_words/entitiy/recent_words_entity.dart';

class RecentWordState {
  List<RecentWordsEntity>? recentWordList;

  RecentWordState({this.recentWordList});

  factory RecentWordState.initialState() {
    return RecentWordState();
  }

  RecentWordState copyWith({
    List<RecentWordsEntity>? recentWordList,
  }) {
    return RecentWordState(
      recentWordList: recentWordList ?? this.recentWordList,
    );
  }
}

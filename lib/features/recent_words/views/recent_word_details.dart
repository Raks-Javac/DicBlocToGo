import 'package:dict_app/core/utils/extensions.dart';
import 'package:dict_app/core/utils/logger.dart';
import 'package:dict_app/features/book_mark/bloc/book_amrk_bloc.dart';
import 'package:dict_app/features/recent_words/bloc/recent_word_bloc.dart';
import 'package:dict_app/features/recent_words/entitiy/recent_words_entity.dart';
import 'package:dict_app/shared/res/res.dart';
import 'package:dict_app/shared/widgets/custom_page_with_app_bar.dart';
import 'package:dict_app/shared/widgets/play_pause_audio.dart';
import 'package:dict_app/shared/widgets/render_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RecentWordDetailsScreen extends StatefulWidget {
  final bool? isBookMarkedConstrcutor;
  const RecentWordDetailsScreen(
      {super.key, this.isBookMarkedConstrcutor = false});

  @override
  State<RecentWordDetailsScreen> createState() =>
      _RecentWordDetailsScreenState();
}

class _RecentWordDetailsScreenState extends State<RecentWordDetailsScreen> {
  @override
  void initState() {
    final recentWordBloc = BlocProvider.of<RecentWordsBloc>(context);
    BlocProvider.of<BookMarkBloc>(context)
        .runRecentInt(recentWordBloc.state.selectedRecentWord!, (p0, audio) {
      Logger.logInfo(p0);
      setState(() {
        isBookMarked = widget.isBookMarkedConstrcutor!;
        audioUrl = audio;
      });
    });
    super.initState();
  }

  bool isBookMarked = false;
  String audioUrl = "";
  @override
  Widget build(BuildContext context) {
    final bookMarkBloc = BlocProvider.of<BookMarkBloc>(context);
    final recentWordBloc =
        BlocProvider.of<RecentWordsBloc>(context, listen: true);
    final wordInformation =
        ModalRoute.of(context)!.settings.arguments as RecentWordsEntity;
    return CustomPageWithAppBar(
      appBarBody: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BackButton(
            color: context.appTextTheme.bodyLarge?.color!,
          ),
          addVerticalSpacing(4),
          Row(
            children: [
              Expanded(
                child: Text(
                  wordInformation.word!.toUpperCase(),
                  style: context.appTextTheme.titleLarge!.copyWith(
                    color: context.appTheme.primaryColor,
                    fontFamily: WStrings.boldFontName,
                  ),
                ),
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      recentWordBloc.selectedRecentWordBool(wordInformation);

                      bookMarkBloc.removeBookMarkFromRecent(
                          recentWordBloc.state.selectedRecentWord!,
                          isBookMarked);
                      setState(() {
                        isBookMarked = !isBookMarked;
                      });
                    },
                    child: isBookMarked == true
                        ? const WWidgetsRenderSvg(
                            svgPath: nAActiveBookMarkIcon,
                          )
                        : const ImageIcon(
                            AssetImage(nABookMarkIcon),
                            color: WColors.primaryColor,
                          ),
                  ),
                  if (audioUrl.isNotEmpty)
                    AudioPlayerWidget(
                      audioUrl: audioUrl,
                    )
                ],
              )
            ],
          ).marginOnly(top: 20, right: 20, left: 20)
        ],
      ),
      extendedBody: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              color: WColors.barBlackColor,
              child: Column(
                children: [
                  for (int i = 0; i < wordInformation.meanings!.length; i++)
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Text(
                                "${i + 1}.  As a (${wordInformation.meanings![i].partOfSpeech}) ",
                                style:
                                    context.appTextTheme.titleMedium!.copyWith(
                                  color: context.appTheme.primaryColor,
                                  fontFamily: WStrings.boldFontName,
                                ),
                              ),
                            ),
                          ],
                        ).marginOnly(top: 3),
                        addVerticalSpacing(10),
                        ...wordInformation.meanings![i].definitions!.map((e) {
                          return Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "- ${e.definition.toString()}",
                              textAlign: TextAlign.left,
                            ).marginSymmetric(horizontal: 10, vertical: 6),
                          );
                        }).toList(),
                        addVerticalSpacing(3),
                        Divider(
                          color: context.appTheme.textTheme.bodyLarge?.color
                              ?.withOpacity(0.5),
                        )
                      ],
                    ).marginOnly(
                      bottom: 20,
                    )
                ],
              ).paddingSymmetric(horizontal: 15, vertical: 10),
            ),
          ],
        ).marginOnly(top: 20),
      ),
    );
  }
}

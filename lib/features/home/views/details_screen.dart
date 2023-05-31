import 'package:flutter/material.dart';

import '../data/models/search_word_model.dart';

class DictionaryWordDetailsScreen extends StatefulWidget {
  const DictionaryWordDetailsScreen({super.key, this.object});

  final SearchWordModelResponse? object;

  @override
  State<DictionaryWordDetailsScreen> createState() =>
      _DictionaryWordDetailsScreenState();
}

class _DictionaryWordDetailsScreenState
    extends State<DictionaryWordDetailsScreen> {
  final ScrollController _controller = new ScrollController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Center(
                    child: Text(
                      widget.object!.word,
                      style: const TextStyle(
                          fontWeight: FontWeight.w700, fontSize: 30.0),
                    ),
                  ),
                ),
                const Text(
                  'Definition',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 25.0),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                SizedBox(
                  child: ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: widget.object!.meanings!.length,
                      itemBuilder: (context, index) {
                        var meaning = widget.object!.meanings![index];
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              meaning.partOfSpeech,
                              style: const TextStyle(
                                  fontSize: 20.0, fontWeight: FontWeight.w500),
                            ),
                            Container(
                              padding: const EdgeInsets.fromLTRB(
                                  0.0, 2.0, 0.0, 10.0),
                              child: ListView.builder(
                                  physics: const BouncingScrollPhysics(),
                                  shrinkWrap: true,
                                  itemCount: meaning.definitions.length,
                                  itemBuilder: (context, index) {
                                    return Row(
                                      children: [
                                        Expanded(
                                          child: Text(
                                            meaning
                                                .definitions[index].definition,
                                            overflow: TextOverflow.visible,
                                            softWrap: true,
                                          ),
                                        ),
                                      ],
                                    );
                                  }),
                            ),
                          ],
                        );
                      }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

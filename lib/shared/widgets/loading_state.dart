import 'package:dict_app/core/navigation/navigation_1.0.dart';
import 'package:dict_app/shared/res/res.dart';
import 'package:dict_app/shared/widgets/render_assets.dart';
import 'package:flutter/material.dart';

class LoadingDialog extends StatelessWidget {
  final bool isLoading;

  const LoadingDialog({Key? key, required this.isLoading}) : super(key: key);

  static showLoadingState(bool isLoading) {
    if (isLoading) {
      showDialog(
          context: WNavigator.currentContext,
          builder: (context) {
            return LoadingDialog(isLoading: isLoading);
          });
    } else {
      if (WNavigator.canPop) WNavigator.pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black54,
      child: const Center(
        child: SizedBox(
            width: 100,
            height: 100,
            child: WWidgetsRenderLottie(lottiePath: nALoadingAnimation)),
      ),
    );
  }
}

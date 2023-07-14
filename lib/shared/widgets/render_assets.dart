import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';

class WWidgetsRenderSvg extends StatelessWidget {
  final String svgPath;
  const WWidgetsRenderSvg({super.key, required this.svgPath});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      svgPath,
    );
  }
}

//image path

class WWidgetsRenderAssetImage extends StatelessWidget {
  final String imagePath;
  final BoxFit? fit;
  final double? width;
  final double? height;

  const WWidgetsRenderAssetImage(
      {super.key, required this.imagePath, this.fit, this.width, this.height});

  @override
  Widget build(BuildContext context) {
    if (width != null && height != null) {
      return Image.asset(
        imagePath,
        fit: fit ?? BoxFit.cover,
      );
    } else {
      return Image.asset(
        imagePath,
        fit: fit ?? BoxFit.cover,
        width: width,
        height: height,
      );
    }
  }
}

//write an extension of the add function in the List class that also adds to the list
//render lottie files
class WWidgetsRenderLottie extends StatefulWidget {
  final String lottiePath;
  final bool isContinous;
  const WWidgetsRenderLottie(
      {super.key, required this.lottiePath, this.isContinous = false});

  @override
  State<WWidgetsRenderLottie> createState() => _WWidgetsRenderLottieState();
}

class _WWidgetsRenderLottieState extends State<WWidgetsRenderLottie>
    with TickerProviderStateMixin {
  late AnimationController _lottieController;

  @override
  void initState() {
    super.initState();

    _lottieController = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _lottieController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Lottie.asset(widget.lottiePath,
        controller: _lottieController,
        repeat: widget.isContinous,
        reverse: widget.isContinous,
        animate: widget.isContinous, onLoaded: (composition) {
      _lottieController.duration = composition.duration;
      _lottieController.forward();
      _lottieController.addStatusListener((status) async {
        if (status == AnimationStatus.completed) {
          if (widget.isContinous == true) {
            _lottieController.repeat();
          }
        }
      });
    });
  }
}

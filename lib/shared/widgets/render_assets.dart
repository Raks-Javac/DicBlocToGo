import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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

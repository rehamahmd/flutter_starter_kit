import 'package:flutter_starter_kit/app/imports.dart';

class ImageWidgetProps {
  final String image;
  final double? width;
  final double? height;
  final Color? color;
  ImageWidgetProps({
    required this.image,
    this.height,
    this.width,
    this.color,
  });
}

class ImageWidget extends StatelessWidget {
  final ImageWidgetProps props;
  const ImageWidget({super.key, required this.props});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: props.height,
      width: props.width,
      child: Image.asset(
        props.image,
        // color: props.color ?? Colors.white,
      ),
    );
  }
}

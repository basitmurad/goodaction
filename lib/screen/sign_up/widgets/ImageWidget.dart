import 'package:flutter/cupertino.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({
    super.key, required this.imagePath,
  });

  final String imagePath;



  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Image(
        fit: BoxFit.fitWidth,
        image: AssetImage(imagePath),
        height: 194,
      ),
    );
  }
}

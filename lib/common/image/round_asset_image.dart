import 'package:flutter/material.dart';

class RoundAssetImage extends StatelessWidget {
  final String fileName;
  final BorderRadius? radius;

  const RoundAssetImage({Key? key, required this.fileName, this.radius})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: radius ?? BorderRadius.circular(8),
      child: Image.asset('assets/images/main-page/$fileName.jpeg'),
    );
  }
}

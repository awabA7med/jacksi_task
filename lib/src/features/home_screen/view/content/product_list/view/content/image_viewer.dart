import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ImageViewer extends StatefulWidget {
  const ImageViewer({
    super.key,
    required this.image,
  });

  final String image;

  @override
  State<ImageViewer> createState() => _ImageViewerState();
}

class _ImageViewerState extends State<ImageViewer> {
  File? picture;
  @override
  void initState() {
    picture = convertImage(widget.image);
    super.initState();
  }
  // here we should check the source first

  convertImage(image) {
    return File(widget.image);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      height: Get.height * .12,
      width: Get.height * .12,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.file(
          picture!,
          fit: BoxFit.fill,
          height: Get.height * .12,
          width: Get.height * .12,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:loven_dialogue/enums/dialouge_picture_versions.dart';
import 'package:loven_dialogue/parts/dialogue_picture.dart';

class Dialogue extends StatelessWidget {
  final String characterImage;
  final String characterName;
  final String url;
  final Axis direction;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry margin;
  final DialoguePictureVersions pictureVersions;
  const Dialogue(
      {super.key,
      required this.characterImage,
      this.url = 'assets/',
      this.padding =
          const EdgeInsets.symmetric(horizontal: 10.0, vertical: 3.0),
      this.margin = const EdgeInsets.only(bottom: 10.0),
      this.direction = Axis.vertical,
      this.pictureVersions = DialoguePictureVersions.standard,
      this.characterName = 'N/A'});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: Padding(
        padding: padding,
        child: DialoguePicture(
            version: pictureVersions,
            characterImage: characterImage,
            direction: direction,
            url: url,
            characterName: characterName),
      ),
    );
  }
}

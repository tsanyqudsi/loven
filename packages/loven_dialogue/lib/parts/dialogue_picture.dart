import 'package:flutter/material.dart';
import 'package:loven_dialogue/enums/dialouge_picture_versions.dart';

class DialoguePicture extends StatelessWidget {
  final String characterImage;
  final DialoguePictureVersions version;
  final String characterName;
  final String url;
  final Axis direction;

  const DialoguePicture(
      {super.key,
      required this.characterImage,
      required this.direction,
      required this.url,
      required this.characterName,
      required this.version});

  @override
  Widget build(BuildContext context) {
    switch (version) {
      case DialoguePictureVersions.standard:
        return Flex(
          direction: direction,
          children: [Image.asset('$url/$characterImage'), Text(characterName)],
        );
      case DialoguePictureVersions.noText:
        return Image.asset('$url/$characterImage');
      case DialoguePictureVersions.onlyText:
        return Text(characterName);
      case DialoguePictureVersions.none:
        return const SizedBox.shrink();
    }
  }
}

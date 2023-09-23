import 'package:flutter/material.dart';
import 'package:rick_and_morty_app/Features/Home/data/models/character/result.dart';

import '../../../../../Core/utils/my_colors.dart';

class CharacterDetailsViewAppBar extends StatelessWidget {
  const CharacterDetailsViewAppBar({super.key, required this.characterResultModel});

  final Result characterResultModel;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 600,
      pinned: true,
      stretch: true,
      backgroundColor: MyColors.appBarColor,
      centerTitle: true,
      flexibleSpace: FlexibleSpaceBar(
        title: Text(characterResultModel.name!),
        background: Hero(
          tag: characterResultModel.id!,
          child: Image.network(
            characterResultModel.image!,
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}

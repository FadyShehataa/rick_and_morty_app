import 'package:flutter/material.dart';
import '../../../../../Core/utils/styles.dart';
import '../../../data/models/character/result.dart';

import '../../../../../Core/utils/my_colors.dart';

class CharacterDetailsViewAppBar extends StatelessWidget {
  const CharacterDetailsViewAppBar(
      {super.key, required this.characterResultModel});

  final Result characterResultModel;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 600,
      pinned: true,
      stretch: true,
      backgroundColor: MyColors.appBarColor,
      flexibleSpace: FlexibleSpaceBar(
        title: Text(
          characterResultModel.name!,
          style: Styles.textStyle22.copyWith(
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
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

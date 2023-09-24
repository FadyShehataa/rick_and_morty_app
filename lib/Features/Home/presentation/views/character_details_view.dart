import 'package:flutter/material.dart';
import '../../../../Core/utils/my_colors.dart';
import 'widgets/character_details_view_app_bar.dart';
import 'widgets/character_details_view_body.dart';

import '../../data/models/character/result.dart';

class CharacterDetailsView extends StatelessWidget {
  const CharacterDetailsView({super.key, required this.characterResultModel});

  final Result characterResultModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.appBarColor,
      body: CustomScrollView(
        slivers: [
          CharacterDetailsViewAppBar(
            characterResultModel: characterResultModel,
          ),
          CharacterDetailsViewBody(
            characterResultModel: characterResultModel,
          ),
        ],
      ),
    );
  }
}

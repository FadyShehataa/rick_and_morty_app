import 'package:flutter/material.dart';
import 'package:rick_and_morty_app/Core/utils/my_colors.dart';
import 'package:rick_and_morty_app/Features/Home/presentation/views/widgets/character_details_view_app_bar.dart';
import 'package:rick_and_morty_app/Features/Home/presentation/views/widgets/character_details_view_body.dart';

import '../../data/models/character/result.dart';

class CharacterDetailsView extends StatelessWidget {
  const CharacterDetailsView({super.key, required this.characterResultModel});

  final Result characterResultModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.appBarColor,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            CharacterDetailsViewAppBar(
              characterResultModel: characterResultModel,
            ),
            CharacterDetailsViewBody(
              characterResultModel: characterResultModel,
            ),
          ],
        ),
      ),
    );
  }
}

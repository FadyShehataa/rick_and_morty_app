import 'package:flutter/material.dart';
import 'package:rick_and_morty_app/Features/Home/presentation/views/widgets/character_details_view_body.dart';

import '../../data/models/character/result.dart';

class CharacterDetailsView extends StatelessWidget {
  const CharacterDetailsView({super.key, required this.characterResultModel});

  final Result characterResultModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const SafeArea(
        child: CharacterDetailsViewBody(),
      ),
    );
  }
}

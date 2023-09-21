import 'package:flutter/material.dart';
import 'package:rick_and_morty_app/Features/Home/data/models/character/character_model.dart';
import 'package:rick_and_morty_app/Features/Home/presentation/views/widgets/characters_grid_view_item.dart';
import 'package:rick_and_morty_app/constants.dart';

class CharactersGridView extends StatelessWidget {
  const CharactersGridView({
    super.key,
    required this.characterModel,
  });
  final CharacterModel characterModel;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(kPadding),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.7,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (BuildContext context, int index) => CharactersGridViewItem(
        characterResultModel: characterModel.results![index],
      ),
      itemCount: characterModel.results!.length,
    );
  }
}

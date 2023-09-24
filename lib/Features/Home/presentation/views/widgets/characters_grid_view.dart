import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../manager/character_cubit/character_cubit.dart';
import 'characters_grid_view_item.dart';
import '../../../../../Core/utils/constants.dart';

class CharactersGridView extends StatelessWidget {
  const CharactersGridView({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CharactersCubit, CharactersState>(
        builder: (context, state) {
      return GridView.builder(
        padding: const EdgeInsets.all(kPadding),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.7,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (BuildContext context, int index) =>
            CharactersGridViewItem(
          characterResultModel: BlocProvider.of<CharactersCubit>(context)
              .searchedCharacters[index],
        ),
        itemCount:
            BlocProvider.of<CharactersCubit>(context).searchedCharacters.length,
      );
    });
  }
}

import 'package:flutter/material.dart';
import 'package:rick_and_morty_app/Features/Home/presentation/views/widgets/characters_grid_view_item.dart';

class CharactersGridView extends StatelessWidget {
  const CharactersGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(8),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.7,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (BuildContext context, int index) => const CharactersGridViewItem(),
      itemCount: 20,
    );
  }
}

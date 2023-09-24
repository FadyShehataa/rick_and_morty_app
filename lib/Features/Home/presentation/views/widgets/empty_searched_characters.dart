import 'package:empty_widget/empty_widget.dart';
import 'package:flutter/material.dart';
import '../../../../../Core/utils/assets_data.dart';

class EmptySearchedCharacters extends StatelessWidget {
  const EmptySearchedCharacters({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        EmptyWidget(
          title: 'No Characters Found',
          subTitle: 'Try to search for another character',
          image: AssetsData.emptySearched,
        ),
      ],
    );
  }
}

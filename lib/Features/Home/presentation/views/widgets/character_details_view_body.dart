import 'package:flutter/material.dart';
import 'animated_text.dart';
import 'character_info.dart';
import 'custom_divider.dart';
import '../../../../../Core/utils/constants.dart';

import '../../../data/models/character/result.dart';

class CharacterDetailsViewBody extends StatelessWidget {
  const CharacterDetailsViewBody(
      {super.key, required this.characterResultModel});

  final Result characterResultModel;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          Container(
            padding: const EdgeInsets.all(kPadding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CharacterInfo(
                    title: 'Status : ', value: characterResultModel.status!),
                const CustomDivider(endIndent: 305),
                CharacterInfo(
                    title: 'Species : ', value: characterResultModel.species!),
                const CustomDivider(endIndent: 290),
                CharacterInfo(
                    title: 'Type : ',
                    value: characterResultModel.type!.isEmpty
                        ? 'Unknown'
                        : characterResultModel.type!),
                const CustomDivider(endIndent: 320),
                CharacterInfo(
                    title: 'Gender : ', value: characterResultModel.gender!),
                const CustomDivider(endIndent: 300),
                const AnimatedText(),
                const SizedBox(
                  height: 395,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

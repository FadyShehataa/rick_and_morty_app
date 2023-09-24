import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rick_and_morty_app/Core/utils/styles.dart';
import 'package:rick_and_morty_app/Features/Home/data/models/character/result.dart';
import 'package:rick_and_morty_app/Core/utils/constants.dart';

import '../../../../../Core/utils/app_router.dart';

class CharactersGridViewItem extends StatelessWidget {
  const CharactersGridViewItem({super.key, required this.characterResultModel});
  final Result characterResultModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context)
            .push(AppRouter.kCharacterDetailsView, extra: characterResultModel);
      },
      child: Hero(
        tag: characterResultModel.id!,
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(characterResultModel.image!),
              fit: BoxFit.cover,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(10)),
          ),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.black54,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(kPadding),
                child: Text(
                  characterResultModel.name!,
                  textAlign: TextAlign.center,
                  style: Styles.textStyle16,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

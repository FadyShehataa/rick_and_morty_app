import 'package:flutter/material.dart';
import 'package:rick_and_morty_app/Core/utils/assets_data.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            AssetsData.logo,
          ),
        ],
      ),
    );
  }
}

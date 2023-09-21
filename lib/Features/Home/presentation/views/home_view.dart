import 'package:flutter/material.dart';
import 'package:rick_and_morty_app/Core/utils/my_colors.dart';
import 'package:rick_and_morty_app/Features/Home/presentation/views/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rick and Morty Characters'),
        backgroundColor: MyColors.appBarColor,
      ),
      body: const SafeArea(
        child: HomeViewBody(),
      ),
    );
  }
}

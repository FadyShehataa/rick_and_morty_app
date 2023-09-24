import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty_app/Core/utils/my_colors.dart';
import 'package:rick_and_morty_app/Core/utils/styles.dart';
import 'package:rick_and_morty_app/Features/Home/presentation/manager/character_cubit/character_cubit.dart';
import 'package:rick_and_morty_app/Features/Home/presentation/views/widgets/home_view_body.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  bool isSearching = false;
  final TextEditingController? searchController = TextEditingController();

  // function to start searching
  void startSearching() {
    ModalRoute.of(context)!
        .addLocalHistoryEntry(LocalHistoryEntry(onRemove: stopSearching));
    setState(() => isSearching = true);
  }

  // function to stop searching (BackButton)
  void stopSearching() {
    BlocProvider.of<CharactersCubit>(context).searchCharacter('');
    searchController!.clear();
    setState(() => isSearching = false);
  }

  // function to return app bar actions
  List<Widget> appBarActions() {
    if (isSearching) {
      return [
        IconButton(
          onPressed: () {
            if (searchController!.text.isNotEmpty) {
              searchController!.clear();
              BlocProvider.of<CharactersCubit>(context).searchCharacter('');
            } else {
              Navigator.pop(context);
            }
          },
          icon: const Icon(Icons.close),
        )
      ];
    } else {
      return [
        IconButton(
          onPressed: startSearching,
          icon: const Icon(Icons.search),
        )
      ];
    }
  }

  // function for app bar title when isSearching = false
  Text appBarTitle() {
    return const Text(
      'Rick and Morty Characters',
      style: Styles.textStyle20,
    );
  }

  // function for app bar title when isSearching = true
  TextField appBarSearchField() {
    return TextField(
      controller: searchController,
      decoration: const InputDecoration(
        hintText: 'Find  a character...',
        hintStyle: Styles.textStyle20,
        border: InputBorder.none,
      ),
      style: Styles.textStyle20,
      cursorColor: MyColors.myWhite,
      onChanged: (String searchingText) {
        BlocProvider.of<CharactersCubit>(context)
            .searchCharacter(searchingText);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: isSearching ? appBarSearchField() : appBarTitle(),
        backgroundColor: MyColors.appBarColor,
        actions: appBarActions(),
      ),
      body: const SafeArea(
        child: HomeViewBody(),
      ),
    );
  }
}

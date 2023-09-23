import 'package:flutter/material.dart';
import 'package:rick_and_morty_app/Core/widgets/custom_error_widget.dart';
import 'package:rick_and_morty_app/Core/widgets/custom_loading_widget.dart';
import 'package:rick_and_morty_app/Features/Home/presentation/manager/character_cubit/character_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty_app/Features/Home/presentation/views/widgets/characters_grid_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CharactersCubit, CharactersState>(
      builder: (context, state) {
        if (state is CharactersSuccess) {
          return const CharactersGridView();
        } else if (state is CharactersLoading) {
          return const CustomLoadingWidget();
        } else if (state is CharactersFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        }
        return Container();
      },
    );
  }
}

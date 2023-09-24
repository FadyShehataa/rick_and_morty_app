import 'package:flutter/material.dart';
import '../../../../../Core/widgets/custom_error_widget.dart';
import '../../../../../Core/widgets/custom_loading_widget.dart';
import '../../manager/character_cubit/character_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'characters_grid_view.dart';

import 'empty_searched_characters.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CharactersCubit, CharactersState>(
      builder: (context, state) {
        if (state is CharactersSuccess) {
          if (BlocProvider.of<CharactersCubit>(context)
              .searchedCharacters
              .isEmpty) {
            return const EmptySearchedCharacters();
          } else {
            return const CharactersGridView();
          }
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

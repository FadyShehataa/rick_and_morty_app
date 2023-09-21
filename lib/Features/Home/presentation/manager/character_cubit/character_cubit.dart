import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:rick_and_morty_app/Features/Home/data/models/character/character_model.dart';

import '../../../data/repos/home_repo.dart';

part 'character_state.dart';

class CharactersCubit extends Cubit<CharactersState> {
  CharactersCubit(this.homeRepo) : super(CharactersInitial());

  final HomeRepo homeRepo;

  Future<void> fetchCharacters() async {
    emit(CharactersLoading());
    var result = await homeRepo.fetchCharacters();

    result.fold(
      (failure) => emit(CharactersFailure(errMessage: failure.errMessage)),
      (character) => emit(CharactersSuccess(character: character)),
    );
  }
}

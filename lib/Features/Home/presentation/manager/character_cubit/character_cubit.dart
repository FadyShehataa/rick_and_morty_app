import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../data/models/character/character_model.dart';

import '../../../data/models/character/result.dart';
import '../../../data/repos/home_repo.dart';

part 'character_state.dart';

class CharactersCubit extends Cubit<CharactersState> {
  CharactersCubit(this.homeRepo) : super(CharactersInitial());

  final HomeRepo homeRepo;
  late final CharacterModel character;
  late List<Result> searchedCharacters = [];

  Future<void> searchCharacter(String query) async {
    emit(CharactersSearching());
    searchedCharacters = character.results!
        .where((element) =>
            element.name!.toLowerCase().startsWith(query.toLowerCase()))
        .toList();
    emit(CharactersSuccess());
  }

  Future<void> fetchCharacters() async {
    emit(CharactersLoading());
    var result = await homeRepo.fetchCharacters();

    result.fold(
      (failure) => emit(CharactersFailure(errMessage: failure.errMessage)),
      (character) {
        this.character = character;
        searchedCharacters = character.results!;
        emit(CharactersSuccess());
      },
    );
  }
}

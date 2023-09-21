import 'package:dartz/dartz.dart';
import 'package:rick_and_morty_app/Features/Home/data/models/character/character_model.dart';

import '../../../../Core/errors/failures.dart';

abstract class HomeRepo {
  Future<Either<Failure, CharacterModel>> fetchCharacters();
}

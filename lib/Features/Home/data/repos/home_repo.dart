import 'package:dartz/dartz.dart';
import '../models/character/character_model.dart';

import '../../../../Core/errors/failures.dart';

abstract class HomeRepo {
  Future<Either<Failure, CharacterModel>> fetchCharacters();
}

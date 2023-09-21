import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:rick_and_morty_app/Core/errors/failures.dart';
import 'package:rick_and_morty_app/Features/Home/data/models/character/character_model.dart';
import 'package:rick_and_morty_app/Features/Home/data/repos/home_repo.dart';

import '../../../../Core/utils/api_service.dart';

class HomeRepoImpl implements HomeRepo {
  HomeRepoImpl(this.apiService);
  ApiService apiService;

  @override
  Future<Either<Failure, CharacterModel>> fetchCharacters() async {
    try {
      var data = await apiService.get(endPoint: 'character');
      CharacterModel character = CharacterModel.fromJson(data);

      return right(character);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(errMessage: e.toString()));
    }
  }
}

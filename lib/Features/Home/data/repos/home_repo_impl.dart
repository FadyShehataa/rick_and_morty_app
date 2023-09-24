import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import '../../../../Core/errors/failures.dart';
import '../models/character/character_model.dart';
import 'home_repo.dart';

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

part of 'character_cubit.dart';

sealed class CharactersState extends Equatable {
  const CharactersState();

  @override
  List<Object> get props => [];
}

final class CharactersInitial extends CharactersState {}

final class CharactersLoading extends CharactersState {}

final class CharactersFailure extends CharactersState {
  final String errMessage;

  const CharactersFailure({required this.errMessage});
}

final class CharactersSuccess extends CharactersState {}

final class CharactersSearching extends CharactersState {}

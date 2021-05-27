part of 'characters_bloc.dart';

@freezed
class CharactersState with _$CharactersState {
  const factory CharactersState.data({
    required final List<ViewModel> characterList,
    required final bool isGrid,
  }) = _DataCharactersState;

  const factory CharactersState.initial() = _InitialCharactersState;

  const factory CharactersState.loading() = _LoadingCharactersState;
}

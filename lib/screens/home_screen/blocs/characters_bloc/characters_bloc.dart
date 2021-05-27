import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_app/resources/data.dart';
import 'package:flutter_app/screens/home_screen/models/view_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'characters_bloc.freezed.dart';
part 'characters_event.dart';
part 'characters_state.dart';

class CharactersBloc extends Bloc<CharactersEvent, CharactersState> {
  CharactersBloc() : super(CharactersState.initial());
  bool isGrid = false;

  @override
  Stream<CharactersState> mapEventToState(
    CharactersEvent event,
  ) async* {
    yield* event.map(
      initial: _mapInitialCharactersEvent,
      selectedView: _mapSelectedViewCharactersEvent,
    );
  }

  Stream<CharactersState> _mapInitialCharactersEvent(
      _InitialCharactersEvent event) async* {
    yield CharactersState.loading();

    yield CharactersState.data(
      characterList: characters,
      isGrid: isGrid,
    );
  }

  Stream<CharactersState> _mapSelectedViewCharactersEvent(
      _SelectedViewCharactersEvent event) async* {
    yield CharactersState.loading();
    isGrid = !event.isGrid;
    yield CharactersState.data(
      characterList: characters,
      isGrid: isGrid,
    );
  }
}

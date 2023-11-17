// ignore_for_file: override_on_non_overriding_member

import 'dart:ui';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rutapp/repositorios/preferencias_reporsitorio.dart';

abstract class PreferencesEvent extends Equatable {}

class ChangeLocale extends PreferencesEvent {
  final Locale locale;

  ChangeLocale(this.locale);

  @override
  List<Object> get props => [locale];
}

class PreferencesState extends Equatable {
  final Locale locale;
  const PreferencesState({required this.locale});

  @override
  List<Object> get props => [locale];
}

class PreferencesBloc extends Bloc<PreferencesEvent, PreferencesState> {
  late PreferenciasRepositorio _preferenciasRepositorio;
  late PreferencesState _initialState;

  PreferencesBloc(
      {required PreferenciasRepositorio preferenciasRepositorio,
      required Locale initialLocale})
      : super(PreferencesState(locale: initialLocale)) {
    _preferenciasRepositorio = preferenciasRepositorio;
    _initialState = PreferencesState(locale: initialLocale);
  }

  @override
  PreferencesState get initialState => _initialState;

  // Stream<PreferencesState> mapEventToState(
  //   PreferencesEvent event,
  // ) async* {
  //   if (event is ChangeLocale) {
  //     await _preferenciasRepositorio.saveLocale(event.locale);
  //     yield PreferencesState(locale: event.locale);
  //   }
  // }
  @override
  Stream<PreferencesState> mapEventToState(
    PreferencesEvent event,
  ) async* {
    if (event is ChangeLocale) {
      await _preferenciasRepositorio.saveLocale(event.locale);
      yield PreferencesState(locale: event.locale);
    }
  }
}

class PreferencesCubit extends Cubit<PreferencesState> {
  final PreferenciasRepositorio _preferenciasRepositorio;

  PreferencesCubit({
    required PreferenciasRepositorio preferenciasRepositorio,
    required Locale initialLocale,
  })  : _preferenciasRepositorio = preferenciasRepositorio,
        super(PreferencesState(locale: initialLocale));

  void changeLocale(Locale newLocale) async {
    await _preferenciasRepositorio.saveLocale(newLocale);
    emit(PreferencesState(locale: newLocale));
  }
}

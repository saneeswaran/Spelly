part of 'grammer_bloc.dart';

sealed class GrammerEvent extends Equatable {
  const GrammerEvent();

  @override
  List<Object> get props => [];
}

class FixGrammarEvent extends GrammerEvent {
  final String text;

  const FixGrammarEvent(this.text);
}

class LoadHistoryEvent extends GrammerEvent {}

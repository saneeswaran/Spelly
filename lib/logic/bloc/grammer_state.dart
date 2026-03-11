part of 'grammer_bloc.dart';

sealed class GrammerState extends Equatable {
  const GrammerState();

  @override
  List<Object> get props => [];
}

final class GrammerInitial extends GrammerState {}

final class GrammerLoading extends GrammerState {}

final class GrammerFixed extends GrammerState {
  final String correctText;

  const GrammerFixed(this.correctText);
}

class GrammarHistoryLoaded extends GrammerState {
  final List<GrammerHistory> history;

  const GrammarHistoryLoaded(this.history);
}

final class GrammerError extends GrammerState {
  final String error;

  const GrammerError(this.error);
}

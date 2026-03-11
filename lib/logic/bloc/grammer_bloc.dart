import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spelly/data/grammer/hive/grammer_history.dart';

part 'grammer_event.dart';
part 'grammer_state.dart';

class GrammerBloc extends Bloc<GrammerEvent, GrammerState> {
  GrammerBloc() : super(GrammerInitial()) {
    on<GrammerEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}

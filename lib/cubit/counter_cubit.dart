import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial(0));

  void increment() {
    if (state is CounterInitial) {
      final currentValue = (state as CounterInitial).count;
      emit(CounterInitial(currentValue + 1));
    }
  }

  void decrement() {
    if (state is CounterInitial) {
      final currentValue = (state as CounterInitial).count;
      emit(CounterInitial(currentValue - 1));
    }
  }

  void reset() {
    emit(CounterInitial(0));
  }
}

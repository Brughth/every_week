import 'package:bloc/bloc.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterState(incrementValue: 0));

  void incremend() => emit(CounterState(
        incrementValue: state.incrementValue + 1,
        wasIncremed: true,
      ));

  void decremend() => emit(CounterState(
        incrementValue: state.incrementValue - 1,
        wasIncremed: false,
      ));
}

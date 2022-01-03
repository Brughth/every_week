import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBlockBloc extends Bloc<CounterBlockEvent, CounterBlockState> {
  CounterBlockBloc() : super(CounterBlockState(countervalue: 0)) {
    on<CounterBlockEvent>((event, emit) {});
    on<CounterIncrementPressed>((event, emit) {
      emit(CounterBlockState(countervalue: state.countervalue + 1));
    });

    on<CounterDecrementPressed>((event, emit) {
      emit(CounterBlockState(countervalue: state.countervalue - 1));
    });
  }
}

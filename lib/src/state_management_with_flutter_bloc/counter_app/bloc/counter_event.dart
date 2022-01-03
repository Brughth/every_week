part of 'counter_bloc.dart';

@immutable
abstract class CounterBlockEvent {}

class CounterIncrementPressed extends CounterBlockEvent {}

class CounterDecrementPressed extends CounterBlockEvent {}

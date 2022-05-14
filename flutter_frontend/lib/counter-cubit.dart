import 'dart:async';

import 'package:bloc/bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  void increment() => emit(state + 1);
  void decrement() => emit(state - 1);
}

Future<void> main(List<String> args) async {
  final cubit = CounterCubit();

 // final Stream stream = cubit.stream; //! this subscribes to the cubit state stream and prints the state values emitted by it

  cubit.increment();
  cubit.increment();
  cubit.increment();
  cubit.increment();
  Duration testDur = Duration(seconds: 1);
  await Future.delayed(testDur); //! we use this to not cancel the subscription immediately down here
  await cubit.close();
}

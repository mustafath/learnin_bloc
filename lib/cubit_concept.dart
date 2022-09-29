import 'dart:developer';

import 'package:bloc/bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);
  void increment() => emit(state + 1);
  void decrement() => emit(state - 1);
}

void main() {
  final cubit = CounterCubit();
  cubit.increment();
  cubit.increment();
  cubit.increment();
  print(cubit.state);
  cubit.increment();
}

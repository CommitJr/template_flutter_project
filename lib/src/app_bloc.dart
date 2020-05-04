import 'dart:async';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/widgets.dart';
import 'package:rxdart/rxdart.dart';

class AppBloc extends BlocBase {
  BehaviorSubject<int> counterController =
      BehaviorSubject<int>.seeded(initialStateCounter());

  Stream<int> get getCounterStream => counterController.stream;
  Sink<int> get setCounter => counterController.sink;
  int get getCounterValue => counterController.value;

  // Stream<int> get getCounterStream{
  //   return counterController.stream;
  // }
  // Sink<int> get setCounter {
  //   return counterController.sink;
  // }

  static initialStateCounter() {
    return 0;
  }

  void backFromOtherPageToHome(context) {
    // do something before navigate
    setCounter.add(0);
    Navigator.pop(context);
  }

  void increment() {
    setCounter.add(counterController.value + 1);
  }

  void decrement() {
    setCounter.add(counterController.value - 1);
  }

  void multiply(int value) {
    setCounter.add(counterController.value * value);
  }

  @override
  void dispose() {
    counterController.close();
  }
}

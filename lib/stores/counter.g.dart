// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'counter.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$Counter on _Counter, Store {
  Computed<String>? _$mediaGeralComputed;

  @override
  String get mediaGeral => (_$mediaGeralComputed ??=
          Computed<String>(() => super.mediaGeral, name: '_Counter.mediaGeral'))
      .value;

  late final _$listAtom = Atom(name: '_Counter.list', context: context);

  @override
  ObservableList<double> get list {
    _$listAtom.reportRead();
    return super.list;
  }

  @override
  set list(ObservableList<double> value) {
    _$listAtom.reportWrite(value, super.list, () {
      super.list = value;
    });
  }

  late final _$_CounterActionController =
      ActionController(name: '_Counter', context: context);

  @override
  void increment() {
    final _$actionInfo =
        _$_CounterActionController.startAction(name: '_Counter.increment');
    try {
      return super.increment();
    } finally {
      _$_CounterActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
list: ${list},
mediaGeral: ${mediaGeral}
    ''';
  }
}

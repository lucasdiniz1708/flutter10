import 'package:mobx/mobx.dart';

// Include generated file
part 'counter.g.dart';

// This is the class used by rest of your codebase
class Counter = _Counter with _$Counter;

// The store-class
abstract class _Counter with Store {
  @observable
  ObservableList<double> list = ObservableList<double>();

  int value = 0;
  bool altera = false;
  double _consumo = 0;

  double get consumo => _consumo;

  set consumo(double consumo) {
    _consumo = consumo;
  }

  @computed
  String get mediaGeral {
    if (list.length > 0) {
      double sum = 0;
      list.forEach((element) {
        sum = sum + element;
      });
      return (sum / list.length).toStringAsFixed(2);
    } else {
      return '0.00';
    }
  }

  @action
  void increment() {
    value++;
  }

  void handleConsumoField(String text) {
    if (text != '') {
      consumo = double.parse(text);
    } else {
      consumo = 0;
    }
    print(consumo);
  }

  void handleRegistrarButton() {
    if (consumo > 0) {
      addConsumo(consumo);
    }
  }

  void alterar() {
    altera = !altera;
  }

  void limpar() => list = ObservableList<double>();

  void addConsumo(double data) {
    list.add(data);
  }
}

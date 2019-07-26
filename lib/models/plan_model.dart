import 'dart:core';

class PlanOperModel {
  num id;
  num amount;
  String payPeriodCode; //D, W, W2...
  String mandatoryCode; //
  String name;
  String categoryFrom;
  String categoryTo;
  DateTime dfrom;
  DateTime dto;

  PlanOperModel(this.id, this.amount, this.categoryFrom, this.categoryTo, this.name,
      this.payPeriodCode, this.mandatoryCode, this.dfrom, this.dto);

  void desc() {
    print(
        '[PlanOperModel: id = $id, amount = $amount, categoryFrom = $categoryFrom, categoryTo = $categoryTo, name = $name, payPeriodCode = $payPeriodCode, mandatoryCode = $mandatoryCode, dfrom = $dfrom, dto = $dto]');
  }

  @override
  String toString() {
  return 'Операция: '+this.name;
   }
}

List<PlanOperModel> dummyData = [
  new PlanOperModel(
      1, 100, 'пРок', 'пАКред', 'тест 1', 'S', 'K0', DateTime.now(), DateTime.now()),
  new PlanOperModel(
      2, 10, 'пРок', 'пВтб', 'тест 2', 'S', 'K0', DateTime.now(), DateTime.now()),
  new PlanOperModel(
      3, -100, 'пРок', 'пАКред', 'тест 3', 'S', 'K0', DateTime.now(), DateTime.now())
];

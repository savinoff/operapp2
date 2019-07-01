import 'dart:core';

class PlanOperModel {
  num amount;
  String payPeriodCode; //D, W, W2...
  String mandatoryCode; //
  String name;
  String categoryFrom;
  String categoryTo;
  DateTime dfrom;
  DateTime dto;

  PlanOperModel(this.amount, this.categoryFrom, this.categoryTo, this.name,
      this.payPeriodCode, this.mandatoryCode, this.dfrom, this.dto);

  void desc() {
    print(
        '[PlanOperModel: amount = $amount, categoryFrom = $categoryFrom, categoryTo = $categoryTo, name = $name, payPeriodCode = $payPeriodCode, mandatoryCode = $mandatoryCode, dfrom = $dfrom, dto = $dto]');
  }
}

List<PlanOperModel> dummyData = [
  new PlanOperModel(
      100, 'пРок', 'пАКред', 'тест', 'S', 'K0', DateTime.now(), DateTime.now()),
  new PlanOperModel(
      10, 'пРок', 'пВтб', 'тест', 'S', 'K0', DateTime.now(), DateTime.now()),
  new PlanOperModel(
      -100, 'пРок', 'пАКред', 'тест', 'S', 'K0', DateTime.now(), DateTime.now())
];

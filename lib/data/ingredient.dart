
enum AmountType {
  liquid,
  count,
  weight,
  measurement,
}
enum LiquidUnit {
  unset,
}
enum WeightUnit {
  unset,
}
enum MeasurementUnit {
  unset,
  ounce,
  teaspoon,
  tablespoon,
  cup,
}

class Amount {
  final num amount;
  final LiquidUnit liquidUnit;
  final WeightUnit weightUnit;
  final MeasurementUnit measurementUnit;
  final AmountType type;
  Amount._internal(this.amount, this.type, {this.liquidUnit: LiquidUnit.unset, this.weightUnit: WeightUnit.unset, this.measurementUnit: MeasurementUnit.unset});

  factory Amount.liquid(num amount, LiquidUnit liquidUnit) {
    return new Amount._internal(amount, AmountType.liquid, liquidUnit: liquidUnit);
  }

  factory Amount.count(num amount) {
    return new Amount._internal(amount, AmountType.count);
  }

  factory Amount.weight(num amount, WeightUnit weightUnit) {
    return new Amount._internal(amount, AmountType.weight, weightUnit: weightUnit);
  }

  factory Amount.measurement(num amount, MeasurementUnit measurementUnit) {
    return new Amount._internal(amount, AmountType.measurement, measurementUnit: measurementUnit);
  }
}


class Ingredient {
  final String name;

  Ingredient(this.name);
}
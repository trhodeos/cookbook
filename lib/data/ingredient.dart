
enum AmountType {
  liquid,
  count,
  weight,
}
enum LiquidUnit {
  unset,
}
enum WeightUnit {
  unset,
}

class Amount {
  final double amount;
  final LiquidUnit liquidUnit;
  final WeightUnit weightUnit;
  final AmountType type;
  Amount._internal(this.amount, this.type, {this.liquidUnit: LiquidUnit.unset, this.weightUnit: WeightUnit.unset});

  factory Amount.liquid(double amount, LiquidUnit liquidUnit) {
    return new Amount._internal(amount, AmountType.liquid, liquidUnit: liquidUnit);
  }

  factory Amount.count(double amount) {
    return new Amount._internal(amount, AmountType.count);
  }

  factory Amount.weight(double amount, WeightUnit weightUnit) {
    return new Amount._internal(amount, AmountType.weight, weightUnit: weightUnit);
  }
}


class Ingredient {
  final String name;

  Ingredient(this.name);
}
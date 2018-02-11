enum AmountType {
  liquid,
  count,
  weight,
  measurement,
}
enum MeasurementUnit {
  unset,
  ounce,
  teaspoon,
  tablespoon,
  cup,
}

String _measurementUnitShortened(MeasurementUnit unit) {
  switch (unit) {
    case MeasurementUnit.cup:
      return 'c';
    case MeasurementUnit.tablespoon:
      return 'tbsp';
    case MeasurementUnit.teaspoon:
      return 'tsp';
    case MeasurementUnit.ounce:
      return 'oz';
    default:
      return unit.toString();
  }
}

class Amount {
  final num amount;
  final MeasurementUnit measurementUnit;
  final AmountType type;

  Amount._internal(this.amount, this.type,
      {this.measurementUnit: MeasurementUnit.unset});

  factory Amount.count(num amount) {
    return new Amount._internal(amount, AmountType.count);
  }

  factory Amount.measurement(num amount, MeasurementUnit measurementUnit) {
    return new Amount._internal(
        amount, AmountType.measurement, measurementUnit: measurementUnit);
  }

  @override
  String toString() {
    if (type == AmountType.measurement) {
      var shortenedUnit = _measurementUnitShortened(measurementUnit);
      return "$amount $shortenedUnit";
    }
    return "$amount";
  }
}


class Ingredient {
  final String name;

  Ingredient(this.name);
}
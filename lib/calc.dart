class Tabulation {
  late double rangeFrom;
  late double rangeTo;
  late double step;
  double? _maxValue;
  double? _minValue;
  List<double> values = [];

  Tabulation({double this.step = 0.25}) {
    setRange(-5, 5);
  }

  void setRange(double from, double to) {
    rangeFrom = from;
    rangeTo = to;
  }

  void runTabulation() {
    var x = rangeFrom;

    for (; x <= rangeTo; x += step) {
      final y = _calc(x);

      values.add(y);

      if (_maxValue == null || y > _maxValue!) {
        _maxValue = y;
      }
      if (_minValue == null || y < _minValue!) {
        _minValue = y;
      }

      print("x = $x, y = $y");
    }

    print("Мінімальне значення функції: $_minValue");
    print("Максимальне значення функції: $_maxValue");
  }

  double _calc(double x) {
    return 8 - (x*x) - (x*x*x); }
}

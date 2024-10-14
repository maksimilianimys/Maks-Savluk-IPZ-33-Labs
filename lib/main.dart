void main() {
  const start = -2.0;
  const end = 6.0;
  const step = 0.25;
  double sum = 0.0;

  print("y = 10 / (x^2 - 4)");
  print(" x   |   y");

  double x = start;

  while (x < end) {
    if (x != -2 && x != 2) {
      final y = a(x);
      sum += y;
      print("${x.toStringAsFixed(2)} | ${y.toStringAsFixed(2)}");
    }
    x += step;
  }

  print('Сума значень функції: ${sum.toStringAsFixed(2)}');
}

double a(double x) {
  return 10 / (x * x - 4);
}
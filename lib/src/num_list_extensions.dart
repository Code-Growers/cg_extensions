import 'dart:math';

extension NumListExtensions on List<num> {
  double get avg =>
      this.fold<double>(0, (double acc, num value) => acc + value) /
      max(1, this.length);

  String get avgIntString => this.avg.toStringAsFixed(1);
}

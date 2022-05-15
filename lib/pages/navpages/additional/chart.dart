import 'package:charts_flutter/flutter.dart' as charts;

class BarChart {
  String month;
  int total;
  final charts.Color color;

  BarChart({required this.month, required this.total, required this.color});
}
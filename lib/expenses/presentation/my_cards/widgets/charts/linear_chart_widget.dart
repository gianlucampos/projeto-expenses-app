import 'package:expenses_app/expenses/domain/entities/Expense.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LinearChartWidget extends StatefulWidget {
  const LinearChartWidget({super.key});

  @override
  State<LinearChartWidget> createState() => _LinearChartWidgetState();
}

class _LinearChartWidgetState extends State<LinearChartWidget> {
  List<Color> gradientColors = [
    const Color(0xff23b6e6),
    const Color(0xff02d39a),
  ];

  bool showAvg = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        AspectRatio(
          aspectRatio: 3,
          child: Padding(
            padding: const EdgeInsets.only(
              right: 18,
              left: 12,
              top: 24,
              bottom: 12,
            ),
            child: LineChart(
              mainData(),
            ),
          ),
        ),
      ],
    );
  }

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      color: Color(0xff68737d),
      fontWeight: FontWeight.bold,
      fontSize: 16,
    );

    List<String> months = [
      'Jan',
      '',
      'Mar',
      '',
      'May',
      '',
      'July',
      '',
      'Sep',
      '',
      'Nov',
      ''
    ];

    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: Text(months[value.toInt()], style: style),
    );
  }

  LineChartData mainData() {
    return LineChartData(
      gridData: FlGridData(show: false),
      titlesData: FlTitlesData(
        show: true,
        rightTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 30,
            interval: 1,
            getTitlesWidget: bottomTitleWidgets,
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: false,
          ),
        ),
      ),
      borderData: FlBorderData(
        show: false,
      ),
      minX: 0,
      maxX: 11,
      minY: 0,
      maxY: 1999,
      lineBarsData: [
        LineChartBarData(
          spots: [
            FlSpot(0, getListExpenses()[0].spentValue),
            FlSpot(1, getListExpenses()[1].spentValue),
            FlSpot(2, getListExpenses()[2].spentValue),
            FlSpot(3, getListExpenses()[3].spentValue),
            FlSpot(4, getListExpenses()[4].spentValue),
            FlSpot(5, getListExpenses()[5].spentValue),
            FlSpot(6, getListExpenses()[6].spentValue),
            FlSpot(7, getListExpenses()[7].spentValue),
            FlSpot(8, getListExpenses()[8].spentValue),
            FlSpot(9, getListExpenses()[9].spentValue),
            FlSpot(10, getListExpenses()[10].spentValue),
            FlSpot(11, getListExpenses()[11].spentValue),
          ],
          isCurved: true,
          gradient: LinearGradient(
            colors: gradientColors,
          ),
          barWidth: 5,
          isStrokeCapRound: true,
          dotData: FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: true,
            gradient: LinearGradient(
              colors: gradientColors
                  .map((color) => color.withOpacity(0.3))
                  .toList(),
            ),
          ),
        ),
      ],
    );
  }
}

List<Expense> getListExpenses() {
  return [
    Expense('Food', 1253.43, 4057.14, 'Jan'),
    Expense('Food', 924.92, 4014.63, 'Feb'),
    Expense('Food', 656.03, 5290.37, 'Mar'),
    Expense('Food', 641.46, 4010.13, 'Apr'),
    Expense('Food', 649.44, 5009.14, 'May'),
    Expense('Food', 1001.30, 4060.31, 'June'),
    Expense('Food', 1978.55, 4619.32, 'July'),
    Expense('Food', 920.61, 4233.22, 'Aug'),
    Expense('Food', 584.55, 4009.14, 'Sep'),
    Expense('Food', 228.72, 4009.14, 'Oct'),
    Expense('Food', 394.34, 6000.00, 'Nov'),
    Expense('Food', 99.90, 6000.00, 'Dec'),
  ];
}

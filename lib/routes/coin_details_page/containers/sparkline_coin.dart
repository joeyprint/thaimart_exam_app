import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:thaimart_exam_app/widgets/bases/palette_theme.dart';

class SparklineCoin extends StatelessWidget {
  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    String text = switch (value.toInt()) {
      0 => '00:00',
      6 => '06:00',
      12 => '12:00',
      18 => '18:00',
      23 => '23:00',
      _ => '',
    };
    if (text.isEmpty) {
      return const SizedBox.shrink();
    }
    return SideTitleWidget(
      meta: meta,
      child: Text(text, style: TextStyle(fontSize: 8)),
    );
  }

  Widget leftTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(fontSize: 8);
    return SideTitleWidget(
      meta: meta,
      child: Text('\$${meta.formattedValue}', style: style),
    );
  }

  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(8, 0, 24, 0),
        child: LineChart(
          LineChartData(
            lineBarsData: [
              LineChartBarData(
                color: primarySwatch.shade500,
                spots: [
                  FlSpot(0, 63485.51548839093),
                  FlSpot(1, 63388.720770614076),
                  FlSpot(2, 63346.59150275059),
                  FlSpot(3, 63305.48467949367),
                  FlSpot(4, 63180.44667039238),
                  FlSpot(5, 62989.4642104802),
                  FlSpot(6, 62823.707949318006),
                  FlSpot(7, 62792.53953034466),
                  FlSpot(8, 62811.773998758064),
                  FlSpot(9, 62824.45168166364),
                  FlSpot(10, 62768.99019624468),
                  FlSpot(11, 62633.196490184215),
                  FlSpot(12, 62615.75276079464),
                  FlSpot(13, 62757.45240990609),
                  FlSpot(14, 63044.74774471746),
                  FlSpot(15, 63086.75044206974),
                  FlSpot(16, 62940.22999975751),
                  FlSpot(17, 62850.48826711793),
                  FlSpot(18, 62889.48788471473),
                  FlSpot(19, 62843.78288144204),
                  FlSpot(20, 62813.28205507002),
                  FlSpot(21, 62891.16541223247),
                  FlSpot(22, 62961.49379195617),
                  FlSpot(23, 62961.95672118511),
                ],
                isCurved: true,
                dotData: const FlDotData(show: false),
                belowBarData: BarAreaData(
                  show: true,
                  color: primarySwatch.shade100,
                ),
              ),
            ],
            borderData: FlBorderData(show: false),
            gridData: FlGridData(show: true, drawVerticalLine: false),
            titlesData: FlTitlesData(
              bottomTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  interval: 6,
                  getTitlesWidget: (value, meta) {
                    return bottomTitleWidgets(value, meta);
                  },
                ),
              ),
              leftTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  reservedSize: 48,
                  getTitlesWidget: leftTitleWidgets,
                ),
              ),
              topTitles: const AxisTitles(
                sideTitles: SideTitles(showTitles: false),
              ),
              rightTitles: const AxisTitles(
                sideTitles: SideTitles(showTitles: false),
              ),
            ),
          ),
          duration: Duration(milliseconds: 150), // Optional
          curve: Curves.linear, // Optional
        ),
      ),
    );
  }
}

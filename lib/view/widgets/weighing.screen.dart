// import 'package:flutter/material.dart';
// import 'package:fl_chart/fl_chart.dart';
//
//
// List<Inek> inekler = [
//   Inek(kulakKupesiNo: "1234", eskiKilo: 300, yeniKilo: 320),
//   Inek(kulakKupesiNo: "5678", eskiKilo: 280, yeniKilo: 290),
//
// ];
//
// class Inek {
//   final String kulakKupesiNo;
//   final double eskiKilo;
//   final double yeniKilo;
//
//   Inek({
//     required this.kulakKupesiNo,
//     required this.eskiKilo,
//     required this.yeniKilo,
//   });
// }
//
// class WeighingScreen extends StatelessWidget {
// @override
// Widget build(BuildContext context) {
//   return Scaffold(
//     appBar: AppBar(
//       title: Text('İnek Tartı Sonuçları'),
//     ),
//     body: ListView.builder(
//       itemCount: inekler.length,
//       itemBuilder: (context, index) {
//         return InekListItem(inek: inekler[index]);
//       },
//     ),
//   );
// }
// }
//
// class InekListItem extends StatelessWidget {
//   final Inek inek;
//
//   InekListItem({required this.inek});
//
//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       title: Text('Kulak Küpesi No: ${inek.kulakKupesiNo}'),
//       subtitle: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text('Eski Kilo: ${inek.eskiKilo} kg'),
//           Text('Yeni Kilo: ${inek.yeniKilo} kg'),
//           Text('Değişim: ${inek.yeniKilo - inek.eskiKilo} kg'),
//           SizedBox(height: 10),
//           KiloGrafigi(inek: inek),
//         ],
//       ),
//     );
//   }
// }
//
// class KiloGrafigi extends StatelessWidget {
//   final Inek inek;
//
//   KiloGrafigi({required this.inek});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 150,
//       child: LineChart(
//         LineChartData(
//           minX: 0,
//           maxX: 4,
//           minY: 0,
//           maxY: 400,
//           // titlesData: FlTitlesData(
//           //     AxisTitles leftTitles = const AxisTitles(sideTitles: SideTitles(reservedSize: 44, showTitles: true)),
//           //   leftTitles:SideTitles(reversedSize: 44,showTitle: true),
//           //   bottomTitles: AxisTitles(showTitle: true),
//           // ),
//           lineBarsData: [
//             LineChartBarData(
//               spots: [
//                 FlSpot(0, inek.eskiKilo),
//                 FlSpot(2, inek.yeniKilo),
//               ],
//               isCurved: true,
//               color: Colors.blue,
//               barWidth: 4,
//               isStrokeCapRound: true,
//               belowBarData: BarAreaData(
//                 show: false,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

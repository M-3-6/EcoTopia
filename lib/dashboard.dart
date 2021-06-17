import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import 'navbar.dart';

class Dashboard extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => DashboardState();
}

class DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        elevation: 0,
        leading: Builder(builder: (BuildContext context) {
          return IconButton(
              icon: const Icon(Icons.menu, color: Colors.grey),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              });
        }),
        
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "Dashboard",
              style: TextStyle(color: Colors.white),
            ),
            InkWell(
              onTap: () => null,
              child: Image.asset(
                "images/person2.png",
                height: 39,
                width: 39,
              ),
            ),
          ],
        ),
      ),
      drawer: NavBar(),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.all(0),
        decoration: BoxDecoration(
          color: Colors.blue[900],
        ),
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1.7,
              child: Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4)),
                color: Colors.blue[900],
                child: BarChart(
                  BarChartData(
                    alignment: BarChartAlignment.spaceAround,
                    maxY: 20,
                    barTouchData: BarTouchData(
                      enabled: false,
                      touchTooltipData: BarTouchTooltipData(
                        tooltipBgColor: Colors.transparent,
                        tooltipPadding: const EdgeInsets.all(0),
                        tooltipMargin: 8,
                        getTooltipItem: (
                          BarChartGroupData group,
                          int groupIndex,
                          BarChartRodData rod,
                          int rodIndex,
                        ) {
                          return BarTooltipItem(
                            rod.y.round().toString(),
                            TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          );
                        },
                      ),
                    ),
                    titlesData: FlTitlesData(
                      show: true,
                      bottomTitles: SideTitles(
                        showTitles: true,
                        getTextStyles: (value) => const TextStyle(
                            color: Color(0x06297A),
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                        margin: 20,
                        getTitles: (double value) {
                          switch (value.toInt()) {
                            case 0:
                              return 'Mn';
                            case 1:
                              return 'Te';
                            case 2:
                              return 'Wd';
                            case 3:
                              return 'Tu';
                            case 4:
                              return 'Fr';
                            case 5:
                              return 'St';
                            case 6:
                              return 'Sn';
                            default:
                              return '';
                          }
                        },
                      ),
                      leftTitles: SideTitles(showTitles: false),
                    ),
                    borderData: FlBorderData(
                      show: false,
                    ),
                    barGroups: [
                      BarChartGroupData(
                        x: 0,
                        barRods: [
                          BarChartRodData(y: 20, colors: [Colors.white])
                        ],
                        showingTooltipIndicators: [0],
                      ),
                      BarChartGroupData(
                        x: 1,
                        barRods: [
                          BarChartRodData(y: 10, colors: [
                            Colors.lightBlueAccent,
                            Colors.greenAccent
                          ])
                        ],
                        showingTooltipIndicators: [0],
                      ),
                      BarChartGroupData(
                        x: 2,
                        barRods: [
                          BarChartRodData(y: 14, colors: [
                            Colors.lightBlueAccent,
                            Colors.greenAccent
                          ])
                        ],
                        showingTooltipIndicators: [0],
                      ),
                      BarChartGroupData(
                        x: 3,
                        barRods: [
                          BarChartRodData(y: 15, colors: [
                            Colors.lightBlueAccent,
                            Colors.greenAccent
                          ])
                        ],
                        showingTooltipIndicators: [0],
                      ),
                      BarChartGroupData(
                        x: 3,
                        barRods: [
                          BarChartRodData(y: 13, colors: [
                            Colors.lightBlueAccent,
                            Colors.greenAccent
                          ])
                        ],
                        showingTooltipIndicators: [0],
                      ),
                      BarChartGroupData(
                        x: 3,
                        barRods: [
                          BarChartRodData(y: 10, colors: [
                            Colors.lightBlueAccent,
                            Colors.greenAccent
                          ])
                        ],
                        showingTooltipIndicators: [0],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // Next component
          ],
        ),
      ),
    );
  }
}


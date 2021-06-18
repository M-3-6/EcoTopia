import 'package:ecotopia/services/getgraph.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'navbar.dart';

class Dashboard extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => DashboardState();
}

class DashboardState extends State<Dashboard> {
  List graphData = [];
  List<BarChartGroupData> graphs = [];

  @override
  void initState() {
    super.initState();
    GetData.getGraph().then((val) {
      graphData = val['message'];
      renderGraph(graphData);
    });
  }

  void renderGraph(List graphData) {
    List<BarChartGroupData> graph = [];
    for (int i = 0; i < (graphData.length >= 10 ? 10 : graphData.length); i++) {
      graph.add(BarChartGroupData(
        x: i,
        barRods: [
          BarChartRodData(
              y: (graphData[i]['outlet']).toDouble(),
              colors: [Colors.lightBlueAccent, Colors.greenAccent])
        ],
        showingTooltipIndicators: [0],
      ));
    }
    setState(() {
      graphs = graph;
    });
  }

  List _usage = [
    {"month": "January 2021", "usage": "22K lt"},
    {"month": "February 2021", "usage": "20K lt"},
    {"month": "March 2021", "usage": "21K lt"}
  ];

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
          ],
        ),
        actions: [
          InkWell(
            onTap: () => null,
            child: Image.asset(
              "images/person2.png",
              height: 39,
              width: 39,
            ),
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
      drawer: NavBar(),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.all(0),
        decoration: BoxDecoration(
          color: Colors.blue[900],
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 1.5,
                child: Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4)),
                  color: Colors.blue[900],
                  child: graphs.length == 0
                      ? Container()
                      : BarChart(
                          BarChartData(
                              alignment: BarChartAlignment.spaceAround,
                              maxY: 250,
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
                              barGroups: graphs),
                        ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Monthly Usage",
                          style: GoogleFonts.raleway(
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          "View All",
                          style: GoogleFonts.raleway(
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        )
                      ],
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 2 - 54,
                      child: ListView.builder(
                        itemCount: _usage.length,
                        itemBuilder: (context, index) {
                          return Container(
                            width: 550,
                            height: 60,
                            child: Row(
                              children: [
                                Text(
                                  "${_usage[index]["month"]}",
                                  style: GoogleFonts.raleway(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                    fontSize: 19,
                                  ),
                                ),
                                Text(
                                  "${_usage[index]["usage"]}",
                                  style: GoogleFonts.raleway(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                    fontSize: 19,
                                  ),
                                )
                              ],
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              )
              // Next component
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: new Icon(Icons.home, color: Colors.black),
            title: Text(""),
          ),
          BottomNavigationBarItem(
              icon: new Icon(Icons.person, color: Colors.black),
              title: Text("")),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications, color: Colors.black),
              title: Text("")),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
                color: Colors.black,
              ),
              title: Text(""))
        ],
      ),
    );
  }
}

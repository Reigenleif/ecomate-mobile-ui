import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

List<List<dynamic>> dummyAQI = [
  ["1", "Jakarta", "50", 0],
  ["2", "Bandung", "100", 1],
  ["3", "Surabaya", "150", 2],
  ["4", "Semarang", "200", 3],
  ["5", "Yogyakarta", "300", 4],
  ["6", "Bali", "500", 5],
];

class AqiPage extends StatelessWidget {
  AqiPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          flexibleSpace: Container(
            width: double.maxFinite,
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                end: Alignment.topRight,
                begin: Alignment.bottomLeft,
                colors: [
                  Color(0xFF005244),
                  Color(0xFF287867),
                  Color(0xFFCCEAE0)
                ],
              ),
            ),
          ),
          title: const Center(
            child: Text("AQI",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center),
          ),
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () => Navigator.pop(context),
          )),
      body: Column(children: [
        Expanded(
            child: SingleChildScrollView(
                child: Column(children: [
          Padding(
              padding: EdgeInsets.only(top: 20),
              child: Column(children: [
                Padding(
                  padding: EdgeInsets.only(top: 40, right: 20, left: 20),
                  child: SizedBox(
                      width: 400,
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Theme.of(context).colorScheme.surface,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              blurRadius: 8,
                              offset: Offset(0, 5),
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.search_outlined),
                            Container(
                              width: 300,
                              child: TextFormField(
                                decoration: InputDecoration(
                                  hintText: "Search",
                                  border: InputBorder.none,
                                ),
                              ),
                            )
                          ],
                        ),
                      )),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Text("Last updated : 18 January 2023 21:00"),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: InkWell(
                    onTap: () async {
                      Uri url = Uri.parse(
                          "https://www.airnow.gov/aqi/aqi-basics/#:~:text=Think%20of%20the%20AQI%20as,300%20represents%20hazardous%20air%20quality.");
                      if (!await launchUrl(url)) {
                        throw Exception('Could not launch $url');
                      }
                    },
                    child: Text(
                      "See Condition Explanation -->",
                    ),
                  ),
                ),
                AqiTable(),
              ]))
        ])))
      ]),
    );
  }
}

class AqiTable extends StatelessWidget {
  const AqiTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Table(
        columnWidths: {
          0: FlexColumnWidth(1),
          1: FlexColumnWidth(3),
          2: FlexColumnWidth(2),
          3: FlexColumnWidth(4),
        },
        children: [
          TableRow(children: [
            Text(
              'Rank',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            ),
            Text('City',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
            Text('US AQI',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
            Text('Condition',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
          ]),
          for (var row in dummyAQI) aqiTabelRow(row[0], row[1], row[2], row[3]),
        ],
      ),
    );
  }
}

TableRow aqiTabelRow(String rank, String city, String usAqi, int severity) {
  List<String> rowCondition = [
    "good",
    "moderate",
    "unhealthy for sensitive groups",
    "unhealthy",
    "very unhealthy",
    "hazardous"
  ];

  List<Color> rowColor = [
    Color(0xFF88F875),
    Color(0xFF9BD970),
    Color(0xFFAFBA6C),
    Color(0xFFC29C67),
    Color(0xFFD67D63),
    Color(0xFFE95E5E)
  ];

  return TableRow(
      decoration: BoxDecoration(
        color: rowColor[severity],
        border: Border(
          bottom: BorderSide(width: 1, color: Colors.black),
          top: BorderSide(width: 1, color: Colors.black),
        ),
      ),
      children: [
        Text(rank, style: TextStyle(fontSize: 14)),
        Text(city, style: TextStyle(fontSize: 14)),
        Text(usAqi, style: TextStyle(fontSize: 14)),
        Text(rowCondition[severity], style: TextStyle(fontSize: 14)),
      ]);
}

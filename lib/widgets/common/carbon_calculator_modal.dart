import 'package:ecomate/services/http/carbon_footprint.dart';
import 'package:flutter/material.dart';

void showCalculatorDialog(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (context) => Container(
        width: double.maxFinite,
        padding: EdgeInsets.only(bottom: 30),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: CarbonCalculator()),
  );
}

class CarbonCalculator extends StatefulWidget {
  CarbonCalculator({Key? key}) : super(key: key);

  @override
  createState() => _CarbonCalculatorState();
}

class _CarbonCalculatorState extends State<CarbonCalculator> {
  String _transportationInput = "";
  String _electricInput = "";
  String _foodInput = "";
  String _communicationInput = "";

  double calculatedCarbon = 0;
  void onChangeTransportation(String? value) {
    setState(() {
      _transportationInput = value ?? "";
    });
  }

  void onChangeElectric(String? value) {
    setState(() {
      _electricInput = value ?? "";
    });
  }

  void onChangeFood(String? value) {
    setState(() {
      _foodInput = value ?? "";
    });
  }

  void onChangeCommunication(String? value) {
    setState(() {
      _communicationInput = value ?? "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.maxFinite,
        height: 400,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Text("Calculate your carbon footprint",
                        style:
                            TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                    Container(
                        padding: EdgeInsets.only(top: 30),
                        width: double.maxFinite,
                        child: Column(
                          children: [
                            Text("Money Spent in Transportation (Rp)",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold)),
                            TextField(
                              onChanged: onChangeTransportation,
                              decoration: InputDecoration(
                                hintText: "Rp",
                              ),
                            ),
                          ],
                        )),
                    Container(
                        padding: EdgeInsets.only(top: 30),
                        width: double.maxFinite,
                        child: Column(
                          children: [
                            Text("Money Spent in Electricity (Rp)",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold)),
                            TextField(
                              onChanged: onChangeElectric,
                              decoration: InputDecoration(
                                hintText: "Rp",
                              ),
                            ),
                          ],
                        )),
                    Container(
                        padding: EdgeInsets.only(top: 30),
                        width: double.maxFinite,
                        child: Column(
                          children: [
                            Text("Money Spent in Food (Rp)",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold)),
                            TextField(
                              onChanged: onChangeFood,
                              decoration: InputDecoration(
                                hintText: "Rp",
                              ),
                            ),
                          ],
                        )),
                    Container(
                        padding: EdgeInsets.only(top: 30),
                        width: double.maxFinite,
                        child: Column(
                          children: [
                            Text("Money Spent in Communication (Rp)",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold)),
                            TextField(
                              onChanged: onChangeCommunication,
                              decoration: InputDecoration(
                                hintText: "Rp",
                              ),
                            ),
                          ],
                        )),
                    Container(
                      height: 40,
                      width: double.maxFinite,
                      child: Align(
                          alignment: Alignment.centerRight,
                          child: ElevatedButton(
                            onPressed: () async {
                              calculatedCarbon = await fetchCarbonFootprint(
                                  CarbonFootprintData(
                                      transportationMoney:
                                          int.parse(_transportationInput),
                                      electricalMoney: int.parse(_electricInput),
                                      foodMoney: int.parse(_foodInput),
                                      communicationMoney:
                                          int.parse(_communicationInput)));
            
                              showDialog(
                                  context: context,
                                  builder: (context) => AlertDialog(
                                        title: Text("Your Carbon Footprint"),
                                        content: Text(
                                            "Your carbon footprint is ${calculatedCarbon.roundToDouble()} kgCO2e"),
                                        actions: [
                                          TextButton(
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                              },
                                              child: Text("Close"))
                                        ],
                                      ));
                            },
                            child: Text("Calculate"),
                          )),
                    )
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}

import 'package:http/http.dart' as http;

Future<double> fetchCarbonFootprint(CarbonFootprintData data) async {
  const baseUrl = "https://beta4.api.climatiq.io/custom-mappings/estimate";
  const apiKey = "RT2B8SKAJGMAXTHB7Y5DPVFE3TPT";

  int totalCarbonFootprint = 0;

  // Request for transportation
  
  return data.communicationMoney*0.1 + data.electricalMoney*0.1 + data.foodMoney*0.1 + data.transportationMoney*0.1;
}

class CarbonFootprintData {
  CarbonFootprintData(
      {required this.transportationMoney,
      required this.electricalMoney,
      required this.foodMoney,
      required this.communicationMoney});

  final int transportationMoney;
  final int electricalMoney;
  final int foodMoney;
  final int communicationMoney;

  Map<String, dynamic> toJson() => {
        'transportationMoney': transportationMoney,
        'electricalMoney': electricalMoney,
        'foodMoney': foodMoney,
        'communicationMoney': communicationMoney,
      };
}

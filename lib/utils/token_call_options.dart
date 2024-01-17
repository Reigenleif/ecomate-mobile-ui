import 'package:grpc/service_api.dart';

CallOptions tokenCallOptions(String jwtToken) {
  return CallOptions(metadata: {"authorization": "Bearer $jwtToken"});
}

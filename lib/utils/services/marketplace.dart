import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:grpc/grpc.dart';
import 'package:namer_app/proto/main.pbgrpc.dart';

class MarketplaceService {
  String baseUrl = dotenv.env["GRPC_SERVER_URL"] ?? "";
  int port = int.parse(dotenv.env["GRPC_SERVER_PORT"] ?? "");

  MarketplaceService._internal();
  static final MarketplaceService _instance = MarketplaceService._internal();

  factory MarketplaceService() => _instance;

  static MarketplaceService get instance => _instance;

  late MarketplaceClient _marketplaceServiceClient;

  Future<void> init() async {
    _createChannel();
  }

  MarketplaceClient get marketplaceServiceClient {
    return _marketplaceServiceClient;
  }

  _createChannel() {
    final channel = ClientChannel(
      baseUrl,
      port: port,
      options: const ChannelOptions(),
    );
    _marketplaceServiceClient = MarketplaceClient(channel);
  }
}

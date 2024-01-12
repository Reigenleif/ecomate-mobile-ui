import 'package:grpc/grpc.dart';
import 'package:namer_app/proto/main.pbgrpc.dart';

class MarketplaceService {
  String baseUrl = "localhost";

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
      port: 8080,
      options: const ChannelOptions(),
    );
    _marketplaceServiceClient = MarketplaceClient(channel);
  }

}
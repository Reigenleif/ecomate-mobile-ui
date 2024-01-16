import 'package:ecomate/proto/main.pbgrpc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:grpc/grpc.dart';

class NewsService {
  String baseUrl = dotenv.env["GRPC_SERVER_URL"] ?? "";
  int port = 8080;

  NewsService._internal();
  static final NewsService _instance = NewsService._internal();
  factory NewsService() => _instance;
  static NewsService get instance => _instance;

  late NewsServiceClient _newsServiceClient;

  Future<void> init() async {
    _createChannel();
  }

  NewsServiceClient get newsServiceClient {
    return _newsServiceClient;
  }

  _createChannel() {
    final channel = ClientChannel(
      baseUrl,
      port: port,
      options: const ChannelOptions(
        credentials: ChannelCredentials.insecure()
      ),
    );
    _newsServiceClient = NewsServiceClient(channel);
  }
}

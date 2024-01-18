import 'package:ecomate/proto/main.pbgrpc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:grpc/grpc.dart';

class FlashcardService {
  String baseUrl = dotenv.env["GRPC_SERVER_URL"] ?? "";
  int port = int.parse(dotenv.env["GRPC_SERVER_PORT"] ?? "");

  FlashcardService._internal();
  static final FlashcardService _instance = FlashcardService._internal();

  factory FlashcardService() => _instance;

  static FlashcardService get instance => _instance;

  late FlashcardServiceClient _flashcardServiceClient;

  Future<void> init() async {
    _createChannel();
  }

  FlashcardServiceClient get flashcardServiceClient {
    return _flashcardServiceClient;
  }

  _createChannel() {
    final channel = ClientChannel(
      baseUrl,
      port: port,
      options: const ChannelOptions(
        credentials: ChannelCredentials.insecure(),
      ),
    );
    _flashcardServiceClient = FlashcardServiceClient(channel);
  }
}

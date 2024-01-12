import "package:grpc/grpc.dart";
import "package:namer_app/proto/main.pbgrpc.dart";
class AuthService {
  String baseUrl = "example.com";

  AuthService._internal();
  static final AuthService _instance = AuthService._internal();
  factory AuthService() => _instance;
  static AuthService get instance => _instance;

  late AuthServiceClient _authServiceClient;

  Future<void> init() async {
    _createChannel();
  }

  AuthServiceClient get authServiceClient {
    return _authServiceClient;
  }

  _createChannel() {
    final channel = ClientChannel(
      baseUrl,
      port: 443,
      options: const ChannelOptions(),
    );
    _authServiceClient = AuthServiceClient(channel);
  }
}
import "package:ecomate/proto/main.pbgrpc.dart";
import "package:grpc/grpc.dart";
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
      options: const ChannelOptions(
        credentials: ChannelCredentials.insecure(),
      ),
    );
    _authServiceClient = AuthServiceClient(channel);
  }
}
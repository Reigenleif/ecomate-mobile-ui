import "package:ecomate/proto/main.pbgrpc.dart";
import "package:grpc/grpc.dart";
class UserService {
  String baseUrl = "example.com";

  UserService._internal();
  static final UserService _instance = UserService._internal();
  factory UserService() => _instance;
  static UserService get instance => _instance;

  late UserServiceClient _userServiceClient;

  Future<void> init() async {
    _createChannel();
  }

  UserServiceClient get userServiceClient {
    return _userServiceClient;
  }

  _createChannel() {
    final channel = ClientChannel(
      baseUrl,
      port: 443,
      options: const ChannelOptions(
        credentials: ChannelCredentials.insecure(),
      ),
    );
    _userServiceClient = UserServiceClient(channel);
  }
}
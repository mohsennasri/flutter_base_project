class Endpoints {
  Endpoints._();

  // base url
  static const String baseUrl = "http://127.0.0.1:5000";
  // receiveTimeout
  static const int receiveTimeout = 15000;
  // connectTimeout
  static const int connectionTimeout = 30000;

  // Api urls
  static const String refreshTokenUrl = "$baseUrl/refresh-token";
  static const String loginUrl = "$baseUrl/refresh-token";
}

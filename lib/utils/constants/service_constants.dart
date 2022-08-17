class ServiceConstants {
  String get baseUrl => 'http://worldtimeapi.org/api/';

  Map<String, String> get headerWithoutAuth => {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      };
}

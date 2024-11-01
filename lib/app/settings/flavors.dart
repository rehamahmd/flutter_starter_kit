enum Flavors {
  dev("http://localhost:5062/api/", "assets/.env/.env.test"),
  staging("http://localhost:5062/api/", "assets/.env/.env.test"),
  production("https://live.api....../", "assets/.env/.env.prod");

  final String baseUrl;
  final String envFilePath;
  const Flavors(this.baseUrl, this.envFilePath);
}

class AppFlavors {
  static Flavors appFlavors = Flavors.dev;
  static String get appName => appFlavors.name;
  static String get baseUrl => appFlavors.baseUrl;
  static String get envFilePath => appFlavors.envFilePath;
}

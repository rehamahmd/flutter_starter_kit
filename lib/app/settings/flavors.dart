enum Flavors {
  dev("http://localhost:5062/api/"),
  staging("http://localhost:5062/api/"),
  production("https://live.api....../");

  final String baseUrl;
  const Flavors(this.baseUrl);
}

class AppFlavors {
  static Flavors appFlavors = Flavors.dev;
  static String get appName => appFlavors.name;
  static String get baseUrl => appFlavors.baseUrl;
}

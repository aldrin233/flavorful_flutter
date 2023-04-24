enum Flavor {
  dev,
  prod,
}

class F {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static String get baseURL {
    switch (appFlavor) {
      case Flavor.dev:
        return 'https://dev.example.com';
      case Flavor.prod:
        return 'https://example.com';
      default:
        return 'https://example.com';
    }
  }

  static String get title {
    switch (appFlavor) {
      case Flavor.dev:
        return 'Flavorful flutter DEV';
      case Flavor.prod:
        return 'Flavorful flutter';
      default:
        return 'title';
    }
  }
}

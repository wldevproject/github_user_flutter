import 'package:github_user_flutter/infrastructure/utils/constants.dart';

class Environments {
  static const String PRODUCTION = 'prod';
  static const String QAS = 'QAS';
  static const String DEV = 'dev';
}

class ConfigEnvironments {
  static const String _currentEnvironments = Environments.DEV;
  static final List<Map<String, String>> _availableEnvironments = [
    {
      'env': Environments.DEV,
      'url': 'https://api.github.com',
      'bearer': ghKey,
    },
    {
      'env': Environments.QAS,
      'url': 'https://api.github.com',
      'bearer': ghKey,
    },
    {
      'env': Environments.PRODUCTION,
      'url': 'https://api.github.com',
      'bearer': ghKey,
    },
  ];

  static Map<String, String> getEnvironments() {
    return _availableEnvironments.firstWhere(
      (d) => d['env'] == _currentEnvironments,
    );
  }
}

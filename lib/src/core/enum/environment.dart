import 'package:my_project/src/core/extensions/object.dart';

enum Environment with Compare<Environment> {
  production(''),
  staging(''),
  development('');

  const Environment(this.baseUrl);

  final String baseUrl;

  @override
  int compareTo(Environment other) => index.compareTo(other.index);
}

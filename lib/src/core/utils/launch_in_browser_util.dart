// ignore_for_file: avoid-ignoring-return-values
import 'package:url_launcher/url_launcher.dart' as launcher;

mixin LaunchInBrowserUtil {
  /// Открывает ссылку в браузере
  static Future<void> launchUrl(String url) async {
    if (await launcher.canLaunchUrl(Uri.parse(url))) {
      await launcher.launchUrl(Uri.parse(url));
    } else {
      throw Exception('Could not launch $url');
    }
  }

  /// Открывает ссылку как приложения
  static Future<void> launchUrlWithExternalAppMode(String url) async {
    if (await launcher.canLaunchUrl(Uri.parse(url))) {
      await launcher.launchUrl(
        Uri.parse(url),
        mode: launcher.LaunchMode.externalApplication,
      );
    } else {
      throw Exception('Could not launch $url');
    }
  }
}

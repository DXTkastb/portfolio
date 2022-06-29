import 'package:url_launcher/url_launcher.dart' as hyperlink;
class LaunchLink {
  static Future<void> launchUrl(String link) async {
    await hyperlink.launchUrl(Uri.parse(link),
        mode: hyperlink.LaunchMode.inAppWebView);
  }
}
import 'package:url_launcher/url_launcher.dart';

Future launchURL(url) async {
  await canLaunchUrl(url)
      ? await launchURL(url)
      : throw 'Could not launch $url';
}

import 'package:bookly_app/core/utils/widgets/custom_snack_bar.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> customUrlLauncher({context, required String url}) async {
  Uri uri = Uri.parse(url);

  if (await canLaunchUrl(uri)) {
    showCustomSnackBar(context, 'launch success', true);
    await launchUrl(uri);
  } else {
    showCustomSnackBar(context, 'cannot launch to $url', false);
  }
}

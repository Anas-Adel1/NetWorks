import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaIcon extends StatelessWidget {

  final String socialMedia;
  final String socialMediaLinks;
  const SocialMediaIcon({
    super.key,
    required this.socialMedia,
    required this.socialMediaLinks
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: InkWell(
        child: CircleAvatar(
          radius: 35,
          backgroundImage:
              AssetImage('assets/social media/$socialMedia.jpg'),
        ),
        onTap: () {
          launchUrl(Uri.parse(socialMediaLinks), mode: LaunchMode.externalApplication);
        },
      ),
    );
  }
}



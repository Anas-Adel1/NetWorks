import 'package:flutter/material.dart';
import 'package:my_network/start.dart';

class SocialMediaIcon extends StatelessWidget {

  final String platform;
  final Uri url;
  const SocialMediaIcon({
    super.key,
    required this.platform,
    required this.url
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: InkWell(
        child: CircleAvatar(
          radius: 35,
          backgroundImage:
              AssetImage('assets/social media/$platform.jpg'),
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => StartSocialMedia(
                url: url,
              ),
            ),
          );
        },
      ),
    );
  }
}



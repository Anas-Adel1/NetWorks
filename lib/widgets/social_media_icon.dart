import 'package:flutter/material.dart';
import 'package:my_network/start.dart';
import 'package:url_launcher/url_launcher.dart';

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
          showModalBottomSheet(context: context, builder: (context) {
              return Center(
                child: ElevatedButton(
                  style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.deepOrange),
                  ),
                  onPressed: () {
                    launchUrl(url, mode: LaunchMode.externalApplication);
                  },
                  child: Text('Start $platform'),
                ),
              );
            },
          );
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder: (context) => StartSocialMedia(
          //       url: url,
          //     ),
          //   ),
          // );
        },
      ),
    );
  }
}



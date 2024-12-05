import 'package:flutter/material.dart';
import 'package:my_network/widgets/social_media_icon.dart';

class ContactsGrid extends StatelessWidget {
  const ContactsGrid({
    super.key,
    required Map<String, String> socialMedia,
  }) : _socialMedia = socialMedia;

  final Map<String, String> _socialMedia;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate:  const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          // crossAxisSpacing: 25.0,
          // mainAxisSpacing: 10.0,
        ),
      itemCount: _socialMedia.length,
      itemBuilder: (context, index) {
        if(index < _socialMedia.length){
          return SocialMediaIcon(socialMedia: _socialMedia.keys.toList()[index], socialMediaLinks: _socialMedia.values.toList()[index]);
        }
        return SocialMediaIcon(socialMedia: _socialMedia.keys.toList()[index-_socialMedia.length], socialMediaLinks: _socialMedia.values.toList()[index-_socialMedia.length]);
      },
      shrinkWrap: true,
      physics:  const NeverScrollableScrollPhysics(),
      padding:  const EdgeInsets.all(25),
    );
  }
}
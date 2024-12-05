import 'package:flutter/material.dart';
import 'package:my_network/widgets/contacts_grid.dart';
import 'package:url_launcher/url_launcher.dart';

class MyContacts extends StatelessWidget {
  MyContacts({super.key});
   final Map<String, String> _socialMedia = {
    'facebook': 'https://www.facebook.com/',
    'instagram': 'https://www.facebook.com/',
    'linkedin': 'https://www.facebook.com/',
    'snapchat': 'https://www.facebook.com/',
    'telegram': 'https://www.facebook.com/',
    'tiktok': 'https://www.facebook.com/',
    'whatsapp': 'https://www.facebook.com/',
    'youtube': 'https://www.facebook.com/',
    // 'youtube',
   };
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   backgroundColor: const Color.fromARGB(
        //     255,
        //     3,
        //     7,
        //     30,
        //   ),
        // ),
        body: Container(
          color: const Color.fromARGB(
            255,
            3,
            7,
            30,
          ),
          // color: Colors.white,
          width: double.infinity,
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 55,
                ),
                const CircleAvatar(
                  radius: 95,
                  backgroundImage: AssetImage('assets/anas.jpg'),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Anas Adel',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(217, 217, 217, 1),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      '+967 7151729291',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(217, 217, 217, 1),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.phone,
                        size: 20,
                        color: Color.fromRGBO(217, 217, 217, 1),
                      ),
                      onPressed: () {
                        launchUrl(Uri.parse('tel:+967715729291'));
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                ContactsGrid(socialMedia: _socialMedia),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class StartSocialMedia extends StatelessWidget {
  final Uri url;
  const StartSocialMedia({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 3, 7, 30),
      appBar: AppBar(backgroundColor: Colors.transparent,),
      body: Center(
        child: ElevatedButton(
          style: const ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(Colors.deepOrange),
          ),
          onPressed: (){
          launchUrl(url, mode: LaunchMode.externalApplication);
        }, child: const Text('Start Social Media')),
      )
    );
  }
}
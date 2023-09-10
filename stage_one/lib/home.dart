import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class Home extends StatefulWidget {
  // const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        color: Colors.white,
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            // mainAxisSize: MainAxisSize.min,
            children: [
             Container(
               decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(100),
                   border: Border.all(color: const Color(0xffed4c4e), width: 5)
               ),
               child: ClipRRect(
                   borderRadius: BorderRadius.circular(100),
                   child: Image.asset("assets/images/profile.png", height: 160, width: 160, fit: BoxFit.cover,)),
             ),

             Padding(
               padding: const EdgeInsets.symmetric(vertical: 10.0),
               child: Row(
                 crossAxisAlignment: CrossAxisAlignment.center,
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Text("Slack Name: ",
                       style: Theme.of(context).textTheme.bodyText1),
                   Text("akamsr",
                       style: Theme.of(context).textTheme.headline2),
                 ],
               ),
             ),

              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20,),
                margin: const EdgeInsets.symmetric(vertical: 50),
                decoration: BoxDecoration(
                  color: const Color(0xff410603),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: TextButton(onPressed: (){
                  launchUrl(
                    Uri.parse("https://github.com/eraloop"),
                    mode: LaunchMode.inAppWebView,
                    webViewConfiguration: const WebViewConfiguration(
                        headers: <String, String>{'my_header_key': 'my_header_value'}),
                  );
                },
                    child: Text("View Github Profile",
                    style: Theme.of(context).textTheme.bodyText2,)),
              )
            ],
          ),
        ),
      ),
    );
  }
}

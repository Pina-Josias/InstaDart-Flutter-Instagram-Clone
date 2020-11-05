// import 'dart:async';
import 'package:flutter/material.dart';
import 'package:instagram/utilities/themes.dart';
import 'package:url_launcher/url_launcher.dart';

class SplashScreen extends StatefulWidget {
  @override
  SplashScreenState createState() => new SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          new Column(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text('Developed with ♥ by:'),
              Padding(
                padding: EdgeInsets.only(bottom: 30.0, top: 10),
                child: GestureDetector(
                  onTap: () async {
                    const url = 'https://Edenik.com';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                  child: Text(
                    'Edenik.Com',
                    style: kBillabongFamilyTextStyle.copyWith(fontSize: 45),
                  ),
                ),
              ),
            ],
          ),
          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              new Image.asset(
                'assets/images/instagram_logo.png',
                height: 150,
                width: 150,
              ),
              Text(
                'Instagram',
                style: kBillabongFamilyTextStyle,
              )
            ],
          ),
        ],
      ),
    );
  }
}
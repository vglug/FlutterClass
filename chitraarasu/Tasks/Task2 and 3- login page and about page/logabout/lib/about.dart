import 'package:flutter/material.dart';
import 'package:logabout/setting.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:logabout/widgets/CusListTile.dart';
import 'package:logabout/widgets/button.dart';

class About extends StatelessWidget {
  List settings = [
    SettingField(Icon(Icons.people), "Contributors"),
    SettingField(FaIcon(FontAwesomeIcons.question), "How to Contribute?"),
    SettingField(FaIcon(FontAwesomeIcons.gitAlt), "See Source Code"),
    SettingField(FaIcon(FontAwesomeIcons.heart), "Donate for Developers"),
    SettingField(FaIcon(FontAwesomeIcons.telegram), "Join Telegram Group"),
    SettingField(Icon(Icons.mail), "Feedback & Contact us"),
    SettingField(Icon(Icons.translate), "Help us Translate"),
    SettingField(FaIcon(FontAwesomeIcons.shieldAlt), "Credits"),
    SettingField(Icon(Icons.copyright), "third Party Libraries"),
    SettingField(Icon(Icons.search), "Private Policy"),
  ];

  List<Widget> setList = [];

  setListMethod() {
    for (int a = 0; a < settings.length; a++) {
      setList.add(ListTile(
        leading: settings[a].icon,
        title: Text(settings[a].text),
      ));
    }
    return setList;
  }

  @override
  Widget build(BuildContext context) {
    nav() {
      Navigator.pop(context);
    }

    return Scaffold(
      backgroundColor: Color(0xFF1c1c1c),
      appBar: AppBar(
        backgroundColor: Color(0xFF1c1c1c),
        title: Text("About"),
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            SizedBox(
              height: 50.0,
            ),
            Hero(
              tag: 'logo',
              child: Image(
                image: AssetImage("images/logo.png"),
                width: 100,
                height: 100,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Center(
              child: Text("Spell4Wiki"),
            ),
            SizedBox(
              height: 15.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Text(
                "Spell4Wiki is a mobile application to record and upload audio for Wiltionary words to Wikimedia commons. This ia act as a Wiki-Dictionary.",
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              "version: 1.2.0 & License : GPLv3",
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 15.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OB("Rate the App", Icon(Icons.star), nav),
                OB("Share the App", Icon(Icons.share), nav),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Divider(
              color: Colors.white,
            ),
            Text('Powered by'),
            CusLT(
              "images/logo_kaniyam.png",
              'kaniyam',
              'The kaniyam Foundation is an organization for ensuring the development of the use of Tamil language in all aspects of science and socio-economic development and making knowledge & resources available in free access.\nhttps.//www.kaniyam.com/',
            ),
            SizedBox(
              height: 40.0,
            ),
            CusLT("images/logo_vglug.png", 'VGLUG',
                'Villupuram GNU/Linux Users Group(Villupuram GLUG) is a non profit organization started in 2013, inspired by Free and open-source software (FOSS).\nhttps://vglug.org/'),
            SizedBox(
              height: 10.0,
            ),
            Divider(
              color: Colors.white,
            ),
            Column(
              children: setListMethod(),
            )
          ],
        ),
      ),
    );
  }
}

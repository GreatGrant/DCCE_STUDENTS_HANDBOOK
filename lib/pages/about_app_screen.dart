import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../widgets/common_app_bar.dart';

class AboutAppScreen extends StatelessWidget {
  const AboutAppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonAppBar(title: "About App"),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Card(
              color: Theme.of(context).canvasColor,
              elevation: 4.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'A digital version of the Department Of Computer And Communication Engineering Handbook, Abubakar Tafawa Balewa University, Bauchi',
                      style: TextStyle(fontSize: 16.0, fontFamily: "montserrat"),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            Card(
              color: Theme.of(context).canvasColor,
              elevation: 4.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Text(
                      'Developer',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: "montserrat",
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    ListTile(
                      leading: SvgPicture.asset(
                        "assets/svg/icons8-linkedin.svg"
                      ),
                      title: Text(
                        'Grant Williams',
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: "montserrat",
                          color: Theme.of(context).textTheme.displaySmall?.color
                        ),
                      ),
                    ),
                    ListTile(
                      leading: SvgPicture.asset(
                          "assets/svg/icons8-twitterx.svg",
                      ),
                      title: Text(
                          '@iAmGreatGrant',
                        style: TextStyle(
                          color: Theme.of(context).textTheme.displaySmall?.color,
                          fontFamily: "montserrat",
                        ),
                      ),
                    ),
                    ListTile(
                      leading: SvgPicture.asset(
                          "assets/svg/icons8-github.svg",
                      ),
                      title: Text(
                        '@GreatGrant',
                        style: TextStyle(
                          fontFamily: "montserrat",
                          color: Theme.of(context).textTheme.displaySmall?.color,
                        ),
                      ), // Twitter handle
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            Card(
              color: Theme.of(context).canvasColor,
              elevation: 4.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Version',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: "montserrat",
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      '1.0.0', // Replace with your app's version
                      style: TextStyle(fontSize: 16.0, fontFamily: "montserrat"),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

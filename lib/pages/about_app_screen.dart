import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
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
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'A digital version of the Department Of Computer And Communication Engineering Handbook, Abubakar Tafawa Balewa University, Bauchi',
                      style: GoogleFonts.montserrat(fontSize: 16.0),
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
                    Text(
                      'Developer',
                      style: GoogleFonts.montserrat(
                        fontSize: 20.0,
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
                        style: GoogleFonts.montserrat(
                            fontSize: 20,
                            color: Theme.of(context).textTheme.displaySmall?.color)
                      ),
                    ),
                    ListTile(
                      leading: SvgPicture.asset(
                          "assets/svg/icons8-twitterx.svg",
                      ),
                      title: Text(
                          '@iAmGreatGrant',
                        style: GoogleFonts.montserrat(color: Theme.of(context).textTheme.displaySmall?.color)
                      ),
                    ),
                    ListTile(
                      leading: SvgPicture.asset(
                          "assets/svg/icons8-github.svg",
                        height: 52,
                        width: 52,
                      ),
                      title: Text(
                        '@GreatGrant',
                        style: GoogleFonts.montserrat(
                            color: Theme.of(context).textTheme.displaySmall?.color),
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
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Version',
                      style: GoogleFonts.montserrat(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    Text(
                      '1.0.0', // Replace with your app's version
                      style: GoogleFonts.montserrat(fontSize: 16.0)
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

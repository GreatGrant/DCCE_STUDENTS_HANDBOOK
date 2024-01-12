import 'package:dcce_handbook/util/strings.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import '../widgets/build_drawer.dart';
import '../widgets/common_app_bar.dart';

class GradingScreen extends StatefulWidget {
  const GradingScreen({super.key, required this.title});
  final String title;

  @override
  GradingScreenState createState() => GradingScreenState();
}

class GradingScreenState extends State<GradingScreen> {
  late final WebViewController _controller;

  @override
  void initState() {
    super.initState();
    _controller = WebViewController();
    _onLoadFlutterAsset(_controller, context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonAppBar(title: "Grading"),
      drawer: buildDrawer(context),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                AppStrings.gradingParagraphString,
                style: TextStyle(fontSize: 16, fontFamily: "montserrat"),
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                height: MediaQuery.of(context).size.height - 400, // Adjust the height as needed
                child: WebViewWidget(controller: _controller),
            ),
            ),
          ],
        ),
      ),
    );
  }
}

Future<void> _onLoadFlutterAsset(
    WebViewController controller, BuildContext context) async {
  await controller.loadFlutterAsset('assets/tables/grading_table.html');
}

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
  double fontSize = 16.0;
  late final WebViewController _controller;

  @override
  void initState() {
    super.initState();
    _controller = WebViewController()..loadRequest(
    Uri.parse('https://flutter.dev'),
    );
    _controller.loadFlutterAsset("assets/tables/grading_table.html");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonAppBar(title: "Grading"),
      drawer: buildDrawer(context),
      body: ListView(
        children: [
          const Text(
            AppStrings.gradingParagraphString,
            style: TextStyle(fontSize: 16),
          ),
          WebViewWidget(controller: _controller),
        ],
      ),
    );
  }
}

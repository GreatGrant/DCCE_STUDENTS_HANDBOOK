import 'package:dcce_handbook/util/drawer_selection.dart';
import 'package:dcce_handbook/util/strings.dart';
import 'package:dcce_handbook/widgets/common_dropcap_layout.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webview_flutter/webview_flutter.dart';
import '../widgets/app_drawer.dart';
import '../widgets/common_app_bar.dart';
import '../widgets/show_back_dialog.dart';

class GradingScreen extends StatefulWidget {
  const GradingScreen({super.key, required this.title});
  final String title;

  @override
  GradingScreenState createState() => GradingScreenState();
}

class GradingScreenState extends State<GradingScreen> {
  late final WebViewController _controller;
  late Color backgroundColor; // Store the background color

  @override
  void initState() {
    super.initState();
    _controller = WebViewController();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    // Now that the dependencies have changed, get the background color
    backgroundColor = getBackgroundColor(context);

    // Load the HTML string and set the background color after the web page has finished loading
    _onLoadFlutterAsset(_controller);
  }


  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (bool didPop) {
        if (didPop) {
          return;
        }
        showBackDialog(context);
      },
      child: Scaffold(
        appBar: const CommonAppBar(title: "Grading"),
        drawer: const AppDrawer(initialSelection: DrawerSelection.grading),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: CommonDropCapLayout(
                  paragraph: AppStrings.gradingParagraphString,
                  )
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
      ),
    );
  }


  Future<void> _onLoadFlutterAsset(
      WebViewController controller) async {
    await controller.loadHtmlString(AppStrings.gradingTable);

    // Set the background color after the web page has finished loading
    controller.clearCache(); // Clear cache to ensure styles are applied
    controller.setBackgroundColor(backgroundColor);
    controller.setJavaScriptMode(JavaScriptMode.unrestricted);
    if (isColorDark(backgroundColor)) {
      controller.runJavaScript('''
    document.body.style.color = "white";
    var tableHeaders = document.querySelectorAll('th');
    for (var i = 0; i < tableHeaders.length; i++) {
      tableHeaders[i].style.color = "#ffffff";
    }  
    ''');
    } else {
      controller.runJavaScript(
          ''' var tableHeaders = document.querySelectorAll('th');
          for (var i = 0; i < tableHeaders.length; i++) {
           tableHeaders[i].style.color = "#ffffff";
            }
    '''
      );
    }
  }

  bool isColorDark(Color color) {
    // Calculate the luminance of the color
    final luminance = color.computeLuminance();

    // Check if the luminance is below a certain threshold
    return luminance < 0.5;
  }

  Color getBackgroundColor(BuildContext context) {
    return Theme.of(context).canvasColor;
  }
}

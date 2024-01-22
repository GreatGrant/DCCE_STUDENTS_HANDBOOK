import 'package:dcce_handbook/util/DrawerSelection.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import '../../util/strings.dart';
import '../../widgets/app_drawer.dart';
import '../../widgets/common_app_bar.dart';

class CurriculumScreen extends StatefulWidget {
  const CurriculumScreen({super.key, required this.title});
  final String title;

  @override
  State createState() => CurriculumScreenState();
}

class CurriculumScreenState extends State<CurriculumScreen> {
  late final WebViewController webViewController;
  late Color backgroundColor; // Store
  // the background color

  @override
  void initState() {
    super.initState();
    webViewController = WebViewController();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    // Now that the dependencies have changed, get the background color
    backgroundColor = getBackgroundColor(context);

    // Load the HTML string and set the background color after the web page has finished loading
    _onLoadFlutterAsset(webViewController);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(title: widget.title),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "THE CURRICULUM:",
              style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                fontFamily: "montserrat",
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Curriculum of the Department, which clearly indicates the course codes, course titles, course units, and structures, as given by the Minimum Academic Standard of the National Universities Commission (NUC-MAS).",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: "montserrat",
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: SingleChildScrollView(child: WebViewWidget(controller: webViewController)),
          ),
        ],
      ),
    );
  }

  Future<void> _onLoadFlutterAsset(WebViewController controller) async {
    await controller.loadHtmlString(AppStrings.curriculum);

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
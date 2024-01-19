import 'package:dcce_handbook/util/strings.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import '../../widgets/course_contents.dart';
import '../../widgets/course_header.dart';

class ThirdYearFirstSemester extends StatefulWidget {
  const ThirdYearFirstSemester({super.key, required this.title});

  final String title;

  @override
  State<StatefulWidget> createState() => ThirdYearFirstSemesterState();
}

class ThirdYearFirstSemesterState extends State<ThirdYearFirstSemester> {
  late final WebViewController webViewController;
  late Color backgroundColor; // Store the background color

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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CourseHeader(
                'MTH 337: NUMERICAL ANALYSIS I (3 UNITS)',
              ),
              const CourseContent(
                content:
                    'Solution of single algebraic equations: Newton\'s method, Bairstow\'s method. Interpolation. Solution of Systems of equations: Matrix algebra, Gaussian methods, LU decomposition, iterative methods, matrix inversion. Interpolating polynomials. Numerical differentiation and integration. Numerical solutions of ordinary differential equations: Initial and boundary value problems. Euler\'s method, Taylor series and method, Runge-Kutta, predictor-corrector methods, multi-step methods. Systems of equations and higher order equations. Finite difference calculus: Difference equations.',
              ),
              const CourseHeader(
                'EA 311: INTRODUCTORY ENGINEERING STATISTICS (3 UNITS)',
              ),
              const CourseContent(
                content:
                    'Measures of central tendency and dispersion, (grouped and ungrouped): mean - arithmetic, geometric, Harmonic; median; mode; quartiles, deciles and percentiles. Empirical relation between mean, median and mode. Relative and absolute dispersion. Sample space and events as sets. Finite probability space. Properties of probability. Statistical independence and conditional probability. Tree diagram. Bayes theorem. Discrete and continuous random variables. Expectation. Independent Bernoulli trails. Binomial, Poisson and Normal Distributions. Normal approximation to Binomial and Poisson distributions. Hypergeometric.',
              ),
              const CourseHeader(
                'EE 311: CIRCUIT THEORY I (3 UNITS)',
              ),
              const CourseContent(
                content:
                    'Laplace and Fourier transforms, application of Laplace transformation to transient analysis of RLC circuits, transfer function concept, realizability of transfer functions, Foster and Cauer\'s methods of synthesis 2-port network synthesis, active filters. Analysis of continuous and discrete signals and systems.',
              ),
              const CourseHeader(
                'EE 312: ANALOGUE ELECTRONIC CIRCUITS (3 UNITS)',
              ),
              const CourseContent(
                content:
                    'Review of single stage transistor amplifiers and operational amplifier circuits. Analysis and design of multistage amplifiers. Feedback, Broadband and Narrow band amplifiers, power amplifiers, voltage and current stabilizing circuits. Sinusoidal RC and LC and crystal oscillators, other communication circuits.',
              ),
              const CourseHeader(
                'EE 313: ELECTROMAGNETIC FIELDS AND WAVES I (3 UNITS)',
              ),
              const CourseContent(
                content:
                    'Review of electromagnetic laws in integral form, Gauss\'s Law, Ampere\'s and Faraday\'s Laws; Electrostatic fields due to distribution of charge magnetic fields in and around current carrying conductors; Introduction to time varying magnetic and electric fields; conduction and displacement current, Maxwell\'s equations (in rectangular coordinates and vector calculus notations.)',
              ),
              const CourseHeader(
                'EE 314: TELECOMMUNICATION PRINCIPLES (3 UNITS)',
              ),
              const CourseContent(
                content:
                    'Amplitude modulation; double sideband, single sideband, and vestigial sideband modulation schemes; simple modulators, power and bandwidth performance. Angle modulation: frequency modulation, phase modulation, bandwidth requirement, clippers and limiters. Amplitude modulated signal reception: Demodulation techniques, detectors, and noise performance. Angle modulated signal reception: discrimination frequency tracking loop, phase locked loop and noise performance. Commercial radio system. Transmission media; attenuation in open space, air, cable and fibre channels; construction of cables and fibres. Sampling theorem, pulse amplitude modulation, pulse code modulation, delta modulation, sources and correction of errors in PCM and DM, ideal and matched filters, frequency acquisition, phase referencing and timing. Line codes, block encoding and Shannon\'s theorem.',
              ),
              const CourseHeader(
                'EE 315: MEASUREMENTS AND INSTRUMENTATION (3 UNITS)',
              ),
              const CourseContent(
                content:
                    'General instrumentation, Basic Meter in DC Measurements, Basic Meter in AC Measurements, rectifier voltmeter, electrodynamometer and wattmeter, instrument transformers; DC and AC bridges and their applications: general form of AC bridge, universal impedance bridge; Electronic Instruments for the Measurement of voltage, current, resistance and other circuit parameter: electronic voltmeters, AC voltmeters using rectifiers, electronic multimeter, digital voltmeters; oscilloscope: vertical deflection system, horizontal deflection system, probes, sampling CRO; Instruments for generating and analysing waveforms; square-wave and pulse generator, signal generators, function generators, wave analyzers; Electronic counters and their applications; time base circuitry, universal counter measurement modes; Analogue and digital data acquisition systems; tape recorders, D/A and A/D conversions, sample and hold circuits.',
              ),
              const CourseHeader(
                'EE 316: TELECOMMUNICATIONS LABORATORY (1 UNIT)',
              ),
              const CourseContent(
                content:
                    'A laboratory work on telecommunication principles and designed to illustrate topics covered in EE 314',
              ),
              const CourseHeader(
                'EE 317: ELECTRICAL AND ELECTRONICS WORKSHOP (1 UNIT)',
              ),
              const CourseContent(
                content:
                    'Passive and active components; service accessories and ratings; IC nomenclature, data sheets and application; Electrical and Electronics symbols; Use of testing and measuring instruments; safety engineering; workshops practice; Installation practice, prototyping and soldering Trouble-shooting; Introduction to manufacturing technology. Illustrative project assignments.',
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height - 400,
                  child: WebViewWidget(controller: webViewController),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _onLoadFlutterAsset(WebViewController controller) async {
    await controller.loadHtmlString(AppStrings.thirdYearFirstSemesterTable);

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

  Color getBackgroundColor(BuildContext context) {
    return Theme.of(context).canvasColor;
  }

  bool isColorDark(Color color) {
    // Calculate the luminance of the color
    final luminance = color.computeLuminance();

    // Check if the luminance is below a certain threshold
    return luminance < 0.5;
  }
}

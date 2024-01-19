import 'package:dcce_handbook/util/strings.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import '../../widgets/course_contents.dart';
import '../../widgets/course_header.dart';

class ThirdYearSecondSemester extends StatefulWidget {
  const ThirdYearSecondSemester({super.key, required this.title});

  final String title;

  @override
  State<StatefulWidget> createState() => ThirdYearSecondSemesterState();
}

class ThirdYearSecondSemesterState extends State<ThirdYearSecondSemester> {
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
                'MTH 323: COMPLEX ANALYSIS I (3 UNITS)',
              ),
              const CourseContent(
                content:
                '''Functions of a complex variable. Limit and continuity of a complex valued function of a complex variable. Branch points. Differentiation. Cauchy-Riemann equations. Integration. Cauchy's theorem Cauchy's integral formula. Morera's theorem, Cauchy's inequality. Liouvilles' theorem. Singularities. Taylor's and Laurents' theorem. Residue theorem and applications to evaluation of integrals and summation of series. Conformal mapping. Schwarz-Christoffel transformation.''',
              ),
              const CourseHeader(
                'EA 321: TOPICS IN ENGINEERING MATHEMATICS (3 UNITS)',
              ),
              const CourseContent(
                content:
                '''Special Theory: Introduction to eigenvalues and eigenvectors, physical interpretation, characteristic polynomial; calculation of eigenvalues and eigenvectors for square matrices, algebraic and geometric multiplicity; reduction to Jordan form. Sequences and Series: Sequences; series, Tests for convergence and divergence of series; operations on series; power series; functions represented by power series. Taylor and Maclaurin series, uniform convergence; Laurent series. Harmonic Analysis: periodic functions, Trigonometric series; Euler Formulas, functions having arbitrary period; Even and Odd functions; Half-Range Expansions: Determination of Fourier Coefficients without integration; forced oscillations, Approximation by Trigonometric Polynomials; Square error; The Fourier Integral.''',
              ),
              const CourseHeader(
                'EE 321: ELECTRICAL MACHINES (4 UNITS)',
              ),
              const CourseContent(
                content:
                '''Review of electromechanical energy conversion, rotating magnetic fields, performance and methods of speed control of DC machines, induction motors, linear induction motors, circle diagrams, power transformers, parallel operation of 3-phase transformers. Performance of synchronous machines, parallel operation of synchronous generators, Fractional horse-power motors single-phase induction motors, universal motors. Reluctance motors, hysteresis motors. Faults on machines, methods of starting and protection of machines.''',
              ),
              const CourseHeader(
                'EE 322: DIGITAL ELECTRONICS (3 UNITS)',
              ),
              const CourseContent(
                content:
                '''Review of elementary concepts. Switching properties of Electronic devices. Switching and wave shaping circuits. Generation of non-sinusoidal waveforms: astable, monostable and bistable multivibrators, comparator, schmitt trigger and time-base generators using discrete transistor, operational amplifier or other integrated circuits. Timer chips and their applications. Analysis and design of logic gates of various families (Diode logic, RTL, TTL, ECL, MOS, and CMOS) of digital integrated circuits. Interfacing between various logic families. Concepts of small, medium, large and very large scale integration and their consequences. Some digital building blocks; flip-flops, counters, registers, and decoders. Introduction to D/A and A/D conversion principles.''',
              ),
              const CourseHeader(
                'EE 323: CIRCUIT THEORY II (3 UNITS)',
              ),
              const CourseContent(
                content:
                '''Approximation to non-linear characteristics, analysis and synthesis of non-linear resistive circuits, harmonic analysis of non-linear dynamical circuits, transient states in non-linear circuits, applications of computers in the analysis of linear and non-linear circuits.''',
              ),
              const CourseHeader(
                'EE 324: ELECTROMAGNETIC FIELDS AND WAVES II (3 UNITS)',
              ),
              const CourseContent(
                content:
                '''Review of time varying magnetic and electric fields, vector calculus notation. Derivation of Maxwell's equations; electromagnetic potential and waves; Poynting vector; Boundary conditions; wave propagation in good conductors; skin effect, plane waves in unbounded dielectric media, Fundamental of transmission lines, wave guides and antennas.''',
              ),
              const CourseHeader(
                'EE 325: ELECTRICAL MACHINES LABORATORY (1 UNIT)',
              ),
              const CourseContent(
                content:
                '''A laboratory work on electrical machines designed to illustrate topic covered in EE 321.''',
              ),
              const CourseHeader(
                'EE 326: ANALOG/DIGITAL ELECTRONICS LABORATORY (1 UNIT)',
              ),
              const CourseContent(
                content:
                '''A laboratory on electronic circuits designed to illustrate topics covered in EE 312 and EE322.''',
              ),
              const CourseHeader(
                'EE 327: MEASUREMENT AND INSTRUMENTATION LABORATORY (1 UNIT)',
              ),
              const CourseContent(
                content:
                '''A laboratory work on measurement and instrumentation designed to illustrate topics covered in EE 315.''',
              ),
              const CourseHeader(
                'GNS 321: PRIVATE BUSINESS MANAGEMENT (3 UNITS)',
              ),
              const CourseContent(
                content:
                '''Foundation Course in Entrepreneurial Studies
Introduction to entrepreneurship and new venture creation
- Introduction to module, learning objectives and assessment
- What is entrepreneurship
- Entrepreneurship – myths and realities
- The role of the entrepreneur
- Entrepreneurship in theory and practice
- How are new ventures created?
- Stevenson’s model
- Entrepreneurial resources
- The business plan
- Case Study- R&R
- The Opportunity
- Sources of opportunity
- Identification
- Researching the opportunity
- Assessment
- Protecting your IP
- The entrepreneurial Team
- What teams are important
- Individual and team performance
- Putting together a winning team
- Team roles
- Team pathologies
- Entrepreneurial Finance
- Determining your capital requirements
- Financing strategy
- Managing cash flow
- Raising financial capital
- Venture capital and informal equity
- Debt finance
- Other financial instruments
- Marketing and the new venture
- Product, Price, Place, Promotion, People
- Cash study
- Innovation
- R & D Management
- Determinants of innovation
- The innovation process in new ventures
- Cash study
- New Venture workshop
- Syndicate groups present their business ideas to class and receive constructive feedback from tutors and peers
Group and harvest
- Theories of firm growth
- Organic vs. M & A
- Organic growth strategies
- Resource implications
- The Harvest
- Introduction to Entrepreneurship Studies
Some of the ventures to be focused upon include the following:
- Soap/Detergent, Tooth brushes and Tooth paste making
- Photography
- Brick, nails, screws making
- Dyeing/Textile blocks paste making
- Rope making
- Plumbing
- Vulcanizing
- Brewing
- Glassware production/Ceramic, production
- Paper production
- Water treatment/Conditioning/packaging
- Food processing/packaging/preservation
- Metal working/Fabrication – Steel and aluminum door and windows
- Training industry
- Vegetable oil/and Salt extractions
- Fisheries/Aquaculture
- Refrigeration/Air conditioning
- Farming (crop)
- Domestic Electrical wiring
- Radio/TV repairs
- Carving
- Weaving
- Brick laying/making
- Bakery
- Brick laying/making
- Iron welding
- Building drawing
- Carpentry
- Leather tanning
- Interior decoration
- Printing
- Animal husbandry (Poultry, Piggery, Goat etc)
- Metal Craft- Blacksmith, tinsmith etc
- Sanitary wares
- Vehicle maintenance
- Bookkeeping.''',
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


  Future<void> _onLoadFlutterAsset(
      WebViewController controller) async {
    await controller.loadHtmlString(AppStrings.thirdYearSecondSemesterTable);

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


import 'package:dcce_handbook/pages/card_destinations/second_year_first_semester_screen.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import '../../util/strings.dart';
import '../../widgets/course_contents.dart';
import '../../widgets/course_header.dart';

class SecondYearSecondSemester extends StatefulWidget {
  const SecondYearSecondSemester({super.key, required this.title});

  final String title;

  @override
  State<StatefulWidget> createState() => SecondYearSecondSemesterState();
}

class SecondYearSecondSemesterState extends State<SecondYearSecondSemester> {
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
                'CE 222: STRENGTH OF MATERIALS II (2 UNITS)',
              ),
              const CourseContent(
                content:
                    'Deflection of beams, Macaulay\'s method, area moment method, Maxwell\'s reciprocal rule, built-in and continuous beams in various loading situations; complex stress and strain, Mohr\'s stress circle principal stress and strain; elastic constant and Volumetric strain; St. Venant\'s theory; stress in composite materials; bending of plates; membrane stresses; stresses in thin cylinders and spheres; thermal stresses; stresses in rivets, joints, etc; use of strain gauges and other measuring devices.',
              ),
              const CourseHeader(
                'CE 223: ENGINEERING HYDRO MECHANICS(2 UNITS)',
              ),
              const CourseContent(
                content:
                    'Introduction: Properties of fluids central volume and conservation mass; conservation momentum; mechanical energy and the Bernoulli equation hydrostatic pressure and buoyancy; concepts of fluid motion, dimensional analysis, similitude and modeling, boundary layers; drag and friction; laminar viscous flow in pipes, diffusers, orifices, etc, steady open channel flow.',
              ),
              const CourseHeader(
                'EE 222: ELECTRICAL ENGINEERING FUNDAMENTALS II (3 UNITS)',
              ),
              const CourseContent(
                content:
                    'Electrotechnics: principles of electromechanical energy conversion. Introduction to AC and DC machines and machine design, constructional features and characteristics, transformer theory, constructional features and characteristics, power transformers and distribution of electric power. Basic concepts of electrical measurements and measuring instruments. Electronics: physics of devices, discharge devices, semiconductors, diode and transistors, device characteristics, circuits and applications; analogue building blocks and operational amplifiers. Basic concepts in digital electronics - bits, bytes, logic gates and flip-flop. Introduction to microprocessors.',
              ),
              const CourseHeader(
                'ME 226: MATERIALS SCIENCE (2 UNITS)',
              ),
              const CourseContent(
                content:
                    'Fundamentals; Atomic and crystal structure of solids; Principal determination of structure crystal deformation; Mechanical, Electrical and thermal properties of materials; Metals, semi-conductors and insulators; Introduction to various engineering applications of iron, steel, aluminium, copper, important alloys, thermoplastics and thermal-setting plastics, wood, ceramics, glasses, rubbers, masonry materials, minerals, rock, bituminous materials, magnetic materials; survey of manufacturing processes and processing methods of different materials.',
              ),
              const CourseHeader(
                'EG 220: ENGINEERING LABORATORIES II (3 UNITS)',
              ),
              const CourseContent(
                content:
                    'A laboratory on 200-level Engineering Courses designed to illustrate topics covered in Electrical, Mechanical and Civil Engineering Courses at Second Semester.',
              ),
              const CourseHeader(
                'ME 222: ENGINEERING MECHANICS II (2 UNITS)',
              ),
              const CourseContent(
                content:
                    'Forces and stresses in machines: Static forces and dynamic forces; moment of inertia, second moment of inertia and polar moment of inertia. Perpendicular and parallel axis theorem. Radius of gyration. Mechanical vibration: Damped and undamped vibrations. Types of dampers. Vibration in Turbo-machinery. Mechanisms: links and cranks chains. Hacked joints. Friction clutches. Belt drives. Toothed gearing. Bearings: Bearing types and bearing materials; structural analysis of machine component; Elements of the dynamics of machines.',
              ),
              const CourseHeader(
                'ME 223: ENGINEERING DRAWING II (2 UNITS)',
              ),
              const CourseContent(
                content:
                    'Cams (Types of cams, followers, cam profile displacement curves). Auxiliary projections. Development and Intersections. Sectioning Drawings. Assembly drawings. Freehand sketching.',
              ),
              const CourseHeader(
                'ME 224: THERMOSCIENCES II (2 UNITS)',
              ),
              const CourseContent(
                content:
                    'Process of vaporization of water. Parameter of steam. Steam tables and steam diagrams. Reference Steam power cycles. Practical steam power cycles. Heat transfer: Introduction. Nature of heat transfer. Modes of heat transfer and heat exchangers.',
              ),
              const CourseHeader(
                'ME 225: WORKSHOP PRACTICE II (2 UNITS)',
              ),
              const CourseContent(
                content:
                    'Basic Machine Tools (Traditional Metal Removal Processes.)'
                    'Lathe - Type of lathes. Principal parts, standard and special attachments. Operations done on lathes. Geometry of typical tools used on lathes. Screw cutting, causes of inaccuracy.'
                    'Milling Machine - Types of milling machines. Principal parts of milling machines. Clamping wire types of attachment. Typical milling operations.Geometry of simple milling cutter.Use of fly cutters, throw away tipped milling cutters.'
                    'Grinding Machine - Types of grinding machines. Abrasives. Grinding wheels; Magnetic chucks; Typical grinding operations.'
                    'Drilling Machine - Principal parts; Types of drilling machines; Operations; Boring.'
                    'Shapers - Principal parts; Kinematics. In all cases metal rates should be compared with typical surface finish obtained.'
                    'Metal Forming Processes'
                    'Casting (use of fillet radii; cores and webs in weld). Sand casting and pattern-making. Die casting and die sinking.'
                    'Forging: Bending: Rivetting '
                    'Welding; Soldering; Brasing'
                    'Sheet Fabrication.'
              ),
              const CourseHeader(
                'MTH 222: MATHEMATICAL METHODS II (3 UNITS)',
              ),
              const CourseContent(
                title: 'Vectors:',
                content:
                    'Vector functions: Differentiation of Vector functions. Divergence Theorem, Stoke\'s Theorem, Gauss Theorem, Greens Formula. Multiple integrals.'
              ),
              const CourseContent(
                  title: 'Special Functions: ',
                  content: 'Bessel, Legendre, hypergeometric gamma and Beta functions and series. Chebyshev and Orthogonal Polynomial and functions.Series expansions of orthogonal functions.'
              ),
              const CourseContent(
                  title: 'The Laplace Transform:',
                  content:'Definition and basic properties of Laplace transform. Application to differential Equations. Fourier Transform: Solutions of Laplace, wave and heat equations by Fourier method.</p>',

              ),
              const CourseHeader(
                'GNS 222: PEACE & CONFLICT RESOLUTION (2 UNITS)',
              ),
              const CourseContent(
                content: '',
              ),
              const CourseHeader(
                'EG 220: ENGINEERING LABORATORIES II (3 UNITS)',
              ),
              const CourseContent(
                content:
                    'A laboratory on 200-level Engineering Courses designed to illustrate topics covered in Electrical, Mechanical and Civil Engineering Courses at Second Semester.',
              ),
              const CourseContent(
                content:
                    'The historical development of digital systems, how computers work; the computer systems; the algorithms and basic computer programming concepts. Basic programming language; computer applications; commercial.',
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
    await controller.loadHtmlString(AppStrings.secondYearSecondSemesterTable);

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

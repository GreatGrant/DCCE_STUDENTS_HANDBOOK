import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import '../../widgets/course_contents.dart';
import '../../widgets/course_header.dart';

class SecondYearFirstSemester extends StatefulWidget {
  const SecondYearFirstSemester({super.key, required this.title});
  final String title;

  @override
  State<StatefulWidget> createState() => SecondYearFirstSemesterState();
}


class SecondYearFirstSemesterState extends State<SecondYearFirstSemester>{
  late final WebViewController webViewController;

  @override
  void initState() {
    super.initState();
    webViewController = WebViewController();
    _onLoadFlutterAsset(webViewController, context);
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
                const CourseHeader('CE 211: STRENGTH OF MATERIALS I (2 UNITS)'),
                const CourseContent(
                  content:
                      'Introduction to stress and strain; some simple states of stress and strain; stresses; relationship between loading, shearing forces and bending moment, bending stresses; combined bending and direct stress torsional loading; composite shafts and torsional strain energy.',
                ),
                const CourseHeader(
                    'EE 211: ELECTRICAL ENGINEERING FUNDAMENTALS I (3 UNITS)'),
                const CourseContent(
                  content:
                      'Introduction to basic electrical and electronics engineering concepts.',
                ),
                const CourseContent(
                  title: 'Circuit Theory:',
                  content:
                      'Elements, DC and AC circuits, symbolic notations, resonance and resonant circuits, circuit laws and theorems; fundamental and harmonics; 3-phase circuit theory, power and power measurements. Power factor; transfer function concepts, RC, RL and RCL circuits, Field theory, Electromagnetism and magnetic circuits applications, capacitors, basic electromagnetic laws and theorems. Measurement circuits.',
                ),
                const CourseHeader('ME 211: ENGINEERING MECHANICS I (2 UNITS)'),
                const CourseContent(
                  content:
                      'Fundamental laws and terminology; force systems; equilibrium of a particle and rigid body; free-body diagrams; distributed forces; virtual work and energy methods.',
                ),
                const CourseContent(
                  content:
                      'Structures: trusses, frames and simple machines; kinematics and kinetics of a particle, kinematics of plane rigid bodies; examples of translation and rotation, impact.',
                ),
                const CourseHeader('ME 212: ENGINEERING DRAWING I (2 UNITS)'),
                const CourseContent(
                  content:
                      'Conic section (Ellipse, Parabola and |Hyperbola). Orthographic projections (Third Angle). Loci (Cycloid and involute). Loci of mechanics. Civil Engineering Drawing: Types of buildings, axonometric views, house and roof styles, doors and windows, staircases, Exercise in blueprint reading and drawing.',
                ),
                const CourseHeader('ME 213: THERMOSCIENCES I (2 UNITS)'),
                const CourseContent(
                  content:
                      'Introduction to Thermodynamics; Parameters of state and units; Equations of state for ideal and real gases; specific heat; The first law of thermodynamics for steady and unsteady processes; Calorific functions of state; Internal energy. Enthalpy, chemical energy (calorific value and heat of combustion). Work and power in thermodynamic system; Basic Thermodynamic processes; Thermodynamic cycles, Efficiency of the cycle, Carnot cycle; the second law of thermodynamics; Entropy.',
                ),
                const CourseHeader('ME 214: WORKSHOP PRACTICE I (1 UNITS)'),
                const CourseContent(
                  content:
                      'Industrial Safety: Environmental factors, clothing and footwear, eye protection, mechanical hazards, chemical hazards, electrical accidents, fire prevention. Use of hand tools, simple marking including the use of special instruments (surface gauge, combination set, etc). Measuring instruments (Micrometers, feeler gauges, thread gauges, etc). Simple machining (drilling, countersinking, spot facing, reaming and boring). Screw threads (thread forms, taps and dies, thread tapping, thread cutting on lathe). Joining processes, brazing, riveting, Sheet metal forming, nuts and bolts. Inserted threads, self-tapping screws. Woodwork: Use of woodworking tools, planning, joints. Use of wood turning lathe.',
                ),
                const CourseHeader('MTH 212: MATHEMATICAL METHODS 1 (3 UNITS)'),
                const CourseContent(
                  title: 'Ordinary Differential Equations:',
                  content:
                      'First and second order differential equations. Existence and uniqueness. Methods of undetermined coefficients. Method of variation of parameters, series solution of second order equations. The general theory of nth order linear equations. Application of O.D.E. to Physical, life and social sciences.',
                ),
                const CourseContent(
                  title: 'Vectors:',
                  content:
                      'Dot, cross and triple products, vector field theory, divergence, gradient and curl. Expressions for grad, div and curl in orthogonal, curvilinear coordinates.',
                ),
                const CourseContent(
                  title: 'Multiple Integrals:',
                  content:
                      'Line integrals, multiple integrals change of variables, the Jacobian. Area of surface and volume of a solid.',
                ),
                const CourseHeader('GNS 311: BUSINESS CREATION AND GROWTH (2 UNITS)'),
                const CourseContent(
                  title: 'History of Science and Technology Man:',
                  content: 'His origin and nature and his cosmic environment.',
                ),
                const CourseContent(
                  title: 'Advances in Technology:',
                  content:
                      'From stone Metal: Greco Roman/Medieval Technology, Internal Combustion/Industrial Revolution and Miniaturization.',
                ),
                const CourseContent(
                  title: 'Philosophy of Science and Technology:',
                  content:
                      'Aims, nature and functions of science including scientific theories, laws and explanations, scientific methodology, science and morality. Science and Technology in the society and in the service of man.',
                ),
                const CourseContent(
                  title: 'Renewable and Non-Renewable Resources:',
                  content:
                      'Man and his energy resources. Environmental Effects of Chemicals, Plastics, textiles and other materials. Chemical and radio-chemical hazards.',
                ),
                const CourseContent(
                  title:
                      'A review of 20th Century Scientific Applications and Technological Explosion:',
                  content:
                      'Post World War II Scientific and Technological Advancement, Scientific innovations in the developed world - U.S., Germany, U.K., France, USSR, Scientific innovations in the developing world - India, China, Brazil and Science and technology in the third world. The Development of Science and Technology in Nigeria:- History and Structural Organization of Research Centres in Nigeria. Research Policy in Nigeria, the challenge of scientific and technological innovation in Nigeria, the appropriate science and technology for a developing society and Ministry of Science and Technology aims and functions.',
                ),
                const CourseContent(
                  title: 'The future of Science and Technology:',
                  content:
                      'Automation; Man versus machine, Nuclear stockpiles, arms race, genetic manipulation and problems of the developed world and their likely impact on the developing nations.',
                ),
                const CourseHeader('EG 210: ENGINEERING LABORATORIES I (3 UNITS)'),
                const CourseContent(
                    content:
                        'A laboratory on 200-Level Engineering courses designed to illustrate topics covered in Electrical, Mechanical and Civil Engineering Courses at First Semester.'),
                const CourseHeader('ES 217: ENGINEER IN SOCIETY (2 UNITS)'),
                const CourseContent(
                    content:
                        'Philosophy of Science.  History of Engineering and Technology .Safety in Engineering and Introduction to Risk Analysis.The Role of Engineers in Nation Building. Invited Lectures from Professionals')
                ,
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
}

Future<void> _onLoadFlutterAsset(
    WebViewController controller,
    BuildContext context) async {
  await controller.loadFlutterAsset('assets/tables/two_hundred_fs.html');
}
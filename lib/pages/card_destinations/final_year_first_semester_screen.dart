import 'package:dcce_handbook/util/strings.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../widgets/course_contents.dart';
import '../../widgets/course_header.dart';

class FinalYearFirstSemester extends StatefulWidget {
  const FinalYearFirstSemester({super.key, required this.title});
  final String title;

  @override
  State<StatefulWidget> createState() => FinalYearFirstSemesterState();
}

class FinalYearFirstSemesterState extends State<FinalYearFirstSemester> {
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
              const CourseHeader('CCE510: PROJECT AND SEMINAR II (4 UNITS)'),
              const CourseContent(
                title: '',
                content:
                'This course lasts for one academic session. Each student or group of students must undertake a project under the supervision of a lecturer, submit a comprehensive project report and present seminar(s) at the end of the year. A project status report is to be presented with an appraisal seminar at the end of the first semester. Each student must attend Engineering Seminars.',
              ),
              const CourseHeader('CCE511: SYSTEM PROGRAMMING (2 UNITS)'),
              const CourseContent(
                title: '',
                content:
                'General machine structure: program counters and instruction registers. Machine Language and Assembly Language. Instruction formats and types of instructions, including operation codes, index and address registers, Addressing techniques; the use of unconomics to represent operation codes in Assembly Language. Symbolic Labels and the functions of the symbol Tables. The functions of the passes of a 2-pass Assembler. Macros: Definition and use, in relation to open sub-routine. Loaders: Absolute and Relocatable loaders. Compilers design.',
              ),
              // ... Repeat similar structures for other courses and content
              const CourseContent(
                title: '',
                content: 'A laboratory designed to illustrate topics covered in EE 508.',
              ),
              const CourseHeader('CE516: OPTICAL COMMUNICATION SYSTEMS (2 UNITS)'),
              const CourseContent(
                title: '',
                content:
                'Optical transmitting devices, LEDs optical receivers, optical fibres/types, features, joining, couphing/deep space communication system/capacity, reliability economy/application of PCM and ADPCM concepts.',
              ),
              const CourseHeader('CE517: SATELLITE COMMUNICATION (2 UNITS)'),
              const CourseContent(
                title: '',
                content:
                'Brief history and overview of Satellite Communications. Orbital Mechanics. Satellite Subsystems. Satellite Link Design. Modulation & Multiplexing Techniques used in Satcom. Multiple Access Techniques. Error Correction for Digital Satellite Links. Propagation Effects and their Impact on Satellite Links. VSAT Systems. LEOs and Non-Geostationary Satellite Systems. DBS TV and Radio. Satellite Navigation and the Global Positioning System',
              ),
              const CourseHeader('CE518: WIRELESS AND MOBILE COMMUNICATION (3 UNITS)'),
              const CourseContent(
                title: '',
                content:
                'Evolution of mobile radio communications. Examples of mobile radio systems: radio paging, cordless telephones, cellular radio. Trends in cellular radio and personal communications. A basic cellular system, Frequency reuse, Roaming, Hand-off strategies, Co-channel interference, Traffic and Grade of service, System capacity, Improving capacity of cellular system. Propagation path loss, multipath propagation problem, Raleigh fading, Rician distribution. Doppler effect. Field strength prediction models, co-channel interference and reduction, adjacent channel interference, near-far problem. Standards and overview of analogue and digital cellular systems: AMPS, TACS, GSM, CT2, PCN, DECT, PHS. Frequency management and channel assignment, speech coding, channel coding, bandwidth consideration, equalization, modulation techniques, multiple access techniques. GSM: Architecture, elements, and standard interfaces; FDMA/TDMA structure; Speech and channel coding ; time slots and bursts; signaling; hand-offs; DCS 1800; GPRS; data services over gsm. Third Generation Wireless Standard: convergence; UMTS; IMT-2000; CDMA2000; W-CDMA; UWC-136; Network layer standards. Paging services and technologies; Short Message Services. Call Processing: Signaling; Roaming and mobility management; Route optimization; Wireless Intelligent Networking; Databases; Protocols; Security and billing issues. Global Positioning System: principles, and applications.',
              ),
              const CourseHeader('EE508: MICROWAVE ENGINEERING (3 UNITS)'),
              const CourseContent(
                title: '',
                content:
                'Microwave frequencies and uses; microwave transmission in transmission lines and waveguides, microwave circuits, impedance transformation and matching, passive microwave devices, resonant and filter circuits, active microwave devices; Klystron, and magnetron tubes and semi-conductor devices for microwave generation. Antennae: definitions of elementary parameters related to radiation patterns; dipole and aperture antennae and the related design parameters; introduction to antenna arrays. Radiowave propagation: propagation in the ionosphere, troposphere and in stratified media; principles of scatter propagation; applications in general broadcast, television and satellite communication systems. Radar Systems: Nature of radar and radar equations; composition of a radar system; application of different types of radars.',
              ),
              const CourseHeader('EE509: MICROWAVE ENGINEERING LABORATORY (1 UNIT)'),
              const CourseContent(
                title: '',
                content: 'A laboratory on microwave engineering designed to illustrate topics covered in EE 508.',
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

  Future<void> _onLoadFlutterAsset(WebViewController controller, BuildContext context) async {
    await controller.loadHtmlString(AppStrings.finalYearFirstSemester);
  }
}



// class FinalYearFirstSemesterState extends State<FinalYearFirstSemester> {
//   late final WebViewController webViewController;
//
//   @override
//   void initState() {
//     super.initState();
//     webViewController = WebViewController();
//     _onLoadFlutterAsset(webViewController, context);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Padding(
//         padding: const EdgeInsets.all(8.0),
//     child: SingleChildScrollView(
//     child: Column(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: [
//     const CourseHeader('COMPUTER ENGINEERING OPTION'),
//     const CourseHeader('CCE510: PROJECT AND SEMINAR II (4 UNITS)'),
//     const CourseContent(
//     content:
//     '''This course lasts for one academic session. Each student or group of students must undertake a project under the supervision of a lecturer, submit a comprehensive project report and present seminar(s) at the end of the year. A project status report is to be presented with an appraisal seminar at the end of the first semester. Each student must attend Engineering Seminars.''',
//     ),
//
//     const CourseHeader('CCE511: SYSTEM PROGRAMMING (2 UNITS)'),
//     const CourseContent(
//     content:
//     '''General machine structure: program counters and instruction registers. Machine Language and Assembly Language.Instruction formats and types of instructions, including operation codes, index and address registers, Addressing techniques; the use of unconomics to represent operation codes in Assembly Language. Symbolic Labels and the functions of the symbol Tables.The functions of the passes of a 2-pass Assembler. Macros: Definition and use, in relation to open sub-routine. Loaders: Absolute and Relocatable loaders. Compilers design.''',
//     ),
//
//     const CourseHeader('CCE512: INTERNET TECHNOLOGY AND PROGRAMMING (2 UNITS)'),
//     const CourseContent(
//     content:
//     '''The Internet architecture and organization.Internet Protocols – IPV4 and IPV6. Addressing and routing: Web authoring, Designing and managing websites. E-Commerce.''',
//     ),
//
//     const CourseHeader('CCE513: INDUSTRIAL ELECTRONICS (2 UNITS)'),
//     const CourseContent(
//     content:
//     '''Characteristics and industrial applications of thyristors and other SCR devices.Transducers and their applications in sensing

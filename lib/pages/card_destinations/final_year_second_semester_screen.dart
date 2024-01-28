import 'package:dcce_handbook/util/strings.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import '../../util/check_color.dart';
import '../../util/webview_utils.dart';
import '../../widgets/course_contents.dart';
import '../../widgets/course_header.dart';

class FinalYearSecondSemester extends StatefulWidget {
  const FinalYearSecondSemester({super.key, required this.title});
  final String title;

  @override
  State<StatefulWidget> createState() => FinalYearSecondSemesterState();
}

class FinalYearSecondSemesterState extends State<FinalYearSecondSemester> {
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
    _onLoadHtmlContent(webViewController, context);
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
                'This course lasts for one academic session. Each student or group of students must undertake a project under the supervision of a lecturer, submit a comprehensive project report and present a seminar(s) at the end of the year. A project status report is to be presented with an appraisal seminar at the end of the first semester. Each student must attend Engineering Seminars.',
              ),
              const CourseHeader('CCE520: SOFTWARE ENGINEERING (2 UNITS)'),
              const CourseContent(
                title: '',
                content:
                'Introduction to Software Engineering; basic concepts, Principles of software engineering. Software life cycle. Project management. Computer based system engineering. Requirements and Specification: Analysis, definition, specification, software prototyping, formal specification, algebraic specification and model-based specification. Software Design: Architectural design. Object-oriented design. Function-oriented design. Real-time system design. User interface design. Dependable Systems. Reliability and reusability. Safety-critical consideration. Good programming practice. Computer-aided Software Engineering (CASE). Verification and Validation: Validation and testing. Problems of assessing and quantifying the system reliability. Test case and test data design. Management: People and organization issues. Cost estimation. Quality management. Process improvement. Maintenance, configuration and re-engineering of software.',
              ),
              const CourseHeader('CCE529: EMBEDDED SYSTEM DESIGN (3 UNITS)'),
              const CourseContent(
                title: '',
                content:
                'Introduction to embedded system, components, characteristics, applications. Intel 8051/8031 Micro-controller: Features of the 8051/8031 family, block diagram and definitions of the pin of the 8051, I/O port structure, memory organisation: general-purpose RAM, bit addressable RAM, register bank, special function registers, external memory, memory space mapping and decoding, bus control signals timing, a typical 8051 micro-controller based system. Instruction Set and Assembly Language Programming: Addressing modes, the 8051 instruction set and typical examples, assembler operation, assembly language format, assembler directives, operation of assemblers and linkers, programming examples. On-chip Peripheral Devices: I/O ports, operations and uses of port 0, port 1, port 2, port 3, timers: their operations, programming, and applications, serial port: operations and programming, typical applications, serial port interrupt. Interfacing to external memory, keypad, seven-segment LED display, ADC and DAC chips, and input / output port expansion, description and uses of hardware development tools. MOTOROLA M6811 Micro-controller: Features of the M6811 family, block diagram and definitions of the pin of the M6811, I/O port structure, memory organisation: general-purpose RAM, bit addressable RAM, register bank, special function registers, external memory, memory space mapping and decoding, bus control signals timing. Instruction Set and Assembly Language Programming. On-chip peripheral devices and I/O interfacing. Introduction to PIC microcontroller: general architecture, applications and selection of microcontroller, advantages, low-end, and high-performance PIC. Specific PIC microcontrollers: Features, architecture, block diagram, pin configuration, on-chip memory, and peripheral. Instruction set and Assembly language programming. Serial I/O interfacing: I2C, and SPI interfacing and programming. Memory interfacing: external memory interfacing, EEPROM and Flash memory interfacing. Design exercises using development system.',
              ),
              const CourseHeader(
                  'EE523: SYSTEM RELIABILITY AND MAINTAINABILITY (2 UNITS)'),
              const CourseContent(
                title: '',
                content:
                'Introduction to Reliability; maintainability, availability. Elementary reliability theory. Application to power systems and electronic components. Test characteristics of electrical and electronics components. Types of fault. Designing for higher reliability. Packaging, mounting, ventilation. Protection from humidity, dust.',
              ),
              const CourseContent(
                title: 'CCE525 (EE517): TELECOMMUNICATION ENGINEERING (2 UNITS)',
                content:
                'This course contains a description of some of the current and emerging technologies in various areas of telecommunication. They include; 4G systems and Beyond, Smart grid, Green Communication, Radio Resource and Interference Management, Mobile Cloud, Vehicular Networks, Internet of Things (IoT). 4G systems and Beyond: HSPA, HSPA+, LTE-Advanced, Specifications for 4G systems, emerging 5G. Smart Grid: Definition, Applications and benefits, Standards and Smart grid projects. Green Communication: Heterogeneous networks, Base station Relaying, Cell Zooming, Cell switching, Energy-efficient power amplifier techniques, Management of Physical layer using Multiple-in-Multiple-out (MIMO), Cognitive radio Radio resource and interference management: Concept, Algorithm; Hand off, Power Control, Admission Control, Load control and Packet Scheduling. Mobile Cloud: Definition, Architecture, Requirements, Applications and Challenges of mobile cloud. Vehicular Networks: Communications in Vehicular Network, Current Trends in Vehicular Ad Hoc Networks, Architecture, Characteristics and Challenges. Internet of Things: Definition, State of Art, Challenges of IoT and Future of IoT.',
              ),
              const CourseHeader(
                  'CCE528: COMMUNICATION SYSTEMS PLANNING (2 UNITS)'),
              const CourseContent(
                title: '',
                content:
                'FDM. CCITT, modulation plans, high order PCMCCITT requirement delta modulation and adpm, different type systems co-operation integrated network, network planning.',
              ),
              const CourseHeader(
                  'CCE540: TELECOMMUNICATION SERVICES DESIGN (2 UNITS)'),
              const CourseContent(
                title: '',
                content:
                'Telephone installations, PBAX installations choice of cables, installations, accessories, optic fibre installations and accessories. Lighting protection techniques, Earthing techniques. Bill of engineering material and Evaluation and billing of telecommunications installations.',
              ),
              const CourseHeader(
                  'CCE526: DIGITAL COMMUNICATION SYSTEM (2 UNITS)'),
              const CourseContent(
                title: '',
                content:
                'Block diagram of digital communication system, sampling theorem, Shanom theorem and applications in digital communication system. Advantages of digital signals. Noise in digital digital systems. Filtering and equalisation. Digital modulation techniques: FSK, ASK, QPSK, M-PSK, QAM, etc. Error detection and correction techniqes. Encodes and decorders. Applications of digital communication, telephoning, microwave, wireless communication, internet technology.',
              ),
              const CourseHeader(
                  'CCE527: IMAGE AND DATA TRANSMISSION SYSTEM (2 UNITS)'),
              const CourseContent(
                title: '',
                content:
                'A/D and D/A transformation, coding, error detection and correction Asynchronous and synchronous transmission, modern schemes, channel capacity, equalization techniques, practical modern applications, simplified network configurations, data switching.',
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: MediaQuery
                      .of(context)
                      .size
                      .height,
                  child: WebViewWidget(controller: webViewController),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }


  Future<void> _onLoadHtmlContent(WebViewController controller,
      BuildContext context) async {
    await WebViewUtils.loadHtmlContent(
      controller: controller,
      htmlContent: AppStrings.finalYearSecondSemester,
      backgroundColor: Theme
          .of(context)
          .canvasColor,
      isColorDark: isColorDark(Theme
          .of(context)
          .canvasColor),
    );
  }
}
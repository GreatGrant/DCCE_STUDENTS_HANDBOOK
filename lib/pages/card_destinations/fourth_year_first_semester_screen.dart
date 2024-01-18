import 'package:dcce_handbook/util/strings.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import '../../widgets/course_contents.dart';
import '../../widgets/course_header.dart';

class FourthYearFirstSemester extends StatefulWidget {
  const FourthYearFirstSemester({super.key, required this.title});

  final String title;

  @override
  State<StatefulWidget> createState() => FourthYearFirstSemesterState();
}

class FourthYearFirstSemesterState extends State<FourthYearFirstSemester> {
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
              const CourseHeader(
                'CCE411: COMPUTER PROGRAMMING AND KNOWLEDGE-BASED SYSTEM (2 UNITS)',
              ),
              const CourseContent(
                content:
                '''Software development techniques, programming using structured language such as C, C++, JAVA symbols, keywords, identifiers, data types, operator, etc, extensive examples and exercises in solving engineering problems; ; Details of basic Fortran in engineering individual programming in engineering subjects; introduction to knowledge-based systems (AI and ANN)''',
              ),
              const CourseHeader(
                'CCE 412: PROJECT AND SEMINAR I (2 UNITS)',
              ),
              const CourseContent(
                content:
                '''Each student is to attend Engineering seminar regularly, undertake a practical project under the supervision of one or two lecturers, submit a project report and present a short seminar on the project to Lecturers and students of Computer and Communications Engineering at the end of the Semester. Students will also visit relevant industries in Bauchi during the semester.''',
              ),
              const CourseHeader(
                'CCE 413: DATABASE MANAGEMENT SYSTEM (2 UNITS)',
              ),
              const CourseContent(
                content:
                '''User Interface; Data Independence; User View; Three Data Models (relational, hierarchical, network, object oriented); Conceptual, Logical and Physical Database Design and Evaluation; Query Languages; Query Optimization; Security, Integrity and concurrency Protocols; Introduction to SQL and its application to RDMS; Database Design; Model Building; Data Table; Forms and Reports; Database Administration.''',
              ),
              const CourseHeader(
                'CCE 414: COMPUTER AND COMMUNICATIONS NETWORKS (2 UNITS)',
              ),
              const CourseContent(
                content:
                '''Communication within computer systems: addressing and data bases; CPU-memory-I/O device communication (communication ports- serial and parallel); communication between systems: host/host versus host/slave relationships, handshaking protocols and synchronization; hardware elements of network design: terminals, modems, multiplexers and concentrators; software aspects of network: host operating systems; message and package routing and switching; types of networks: local area network (LAN), wide area network (WAN); LAN topologies: the linear bus, star and ring configurations; peer-to-peer and client-server networks; LAN protocols: ArcNet, Ethernet and Token Ring; adapter, LAN cables and cabling; WAN: the internet; major internet protocols: transmission control protocol/internet protocols (TCP/IP), file transfer protocol (FTP), e-mail, world wide web(www), browsers.''',
              ),
              const CourseHeader(
                'CCE 415: SOFT COMPUTING TECHNIQUES (2 UNITS)',
              ),
              const CourseContent(
                content:
                '''Theory and applications of Artificial Neural Networks: Multi-layer perceptron and back-propagation learning; Pattern Recognition using the Hamming Distance Rule; Radial basis network; Hopfield network; Recurrent network; Introduction to use of ANN Matlab toolbox or any other analytical tool.
Introduction to Fuzzy set theory and fuzzy logic; Fuzzy logic system and control; Fuzzy time series analysis; Introduction to Neuro Fuzzy systems; Introduction to use of fuzzy logic and ANFIS Matlab toolboxes or any other analytical tools;
Introduction to Genetic Algorithm, Artificial Immune System (AIS), Intelligent Agents, Game Theory etc.''',
              ),
              const CourseHeader(
                'EA 413: COMPUTER PROGRAMMING FOR ENGINEERS (3 UNITS)',
              ),
              const CourseContent(
                content:
                '''Elementary treatment of computer systems. Computer programming concept: Algorithms, flowchart diagram, looping, documentation of programming etc.''',
              ),
              const CourseHeader(
                'EE 411: CONTROL ENGINEERING I (3 UNITS)',
              ),
              const CourseContent(
                content:
                '''Basic concepts and examples of control systems; Feedback, Time response analysis, concept of stability, Routh-Hurwitz criterion, Root-locus techniques, Frequency-response analysis, Polar and Bode plots.Nyguist stability criteria. Nicholas chart; Compensation Techniques Chart, Compensation Techniques, Introduction to Non-Linear Systems.''',
              ),
              const CourseHeader(
                'EE 413: DIGITAL SYSTEMS (3 UNITS)',
              ),
              const CourseContent(
                content:
                '''Introduction to analysis and design of digital systems. Boolean algebra and mapping methods: Karnaugh and variable-entered maps, combinational logic realization with gates, multiplexers, read only memories (ROMs) and programmable logic arrays (PLAs). State machine analysis and design: state diagrams, state flip-flops, input and output forming logic, state assignments, redundant states sequential counters, and mainly synchronous systems; state machine, realization with multiplexers, ROMs and PLAs. Asynchronous systems, Approach to digital systems design, top-down design, trial-and-error methods. Codes, number systems, and arithmetic operations. Introduction to computer structures: register transfers, hardware programming methods, Von Neumann machines, and memory systems. Standard logic functions with MSI circuits: seven segment display drivers, parity generator/checker, encoders, compactors, adders, etc. Sequences and data flow controls; Error detection.''',
              ),
              const CourseHeader(
                'EE 414: ANALOGUE CIRCUIT DESIGN (3 UNITS)',
              ),
              const CourseContent(
                content:
                '''Analysis and design of integrated operational amplifiers and advanced circuits such as wideband amplifiers, instrumentation amplifiers, multiplier circuits, voltage controlled oscillators, analogue circuits containing transistors and operational amplifiers. Small, medium, large and very large scale integrated circuits. Applications.''',
              ),
              const CourseHeader(
                'EE 415: PHYSICAL ELECTRONICS (3 UNITS)',
              ),
              const CourseContent(
                content:
                '''Free electron motion in Static Electric and magnetic fields, Electronic structure of matter: Conductivity in Crystalline Solids; Theory of energy bands in conductors, insulators and semiconductors. Insulators and Semiconductors; Electrons in metals and electron emission; carriers and transport phenomena in Semiconductors, Characteristics of some electron and photo devices, junction diodes and transistors, FETS, SCR, Vacuum tubes, photo resistors, diodes, transistors, photo cell and light emitting diode. Elementary discrete devices fabrication techniques and IC technology.''',
              ),
              const CourseHeader(
                'EE 417: DIGITAL SYSTEMS LABORATORY (3 UNITS)',
              ),
              const CourseContent(
                content:
                '''A laboratory work on digital systems designed to illustrate topics covered in EE 413.''',
              ),
              const CourseHeader(
                'EE 418: CONTROL SYSEMS ENGINEERING LABORATORY (1 UNIT)',
              ),
              const CourseContent(
                content:
                '''A laboratory designed to illustrate topics covered in EE 411 and EE 501. Relevant parts on transducers and instrumentation from EE 326 and EE 515 will be covered.''',
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
}

Future<void> _onLoadFlutterAsset(
    WebViewController controller, BuildContext context) async {

  await controller.loadHtmlString(
    AppStrings.fourthYearTable
  );
}

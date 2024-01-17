import 'package:flutter/cupertino.dart';

class FinalYearFirstSemester extends StatelessWidget {
  const FinalYearFirstSemester({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container();
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

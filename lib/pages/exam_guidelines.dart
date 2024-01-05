import 'package:dcce_handbook/util/strings.dart';
import 'package:drop_cap_text/drop_cap_text.dart';
import 'package:flutter/material.dart';

import '../widgets/build_drawer.dart';
import '../widgets/common_app_bar.dart';

class ExamGuidelinesScreen extends StatelessWidget {
  const ExamGuidelinesScreen({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(title: title),
      drawer: buildDrawer(context),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            buildHeading("STANDARD OF TESTS AND EXAMINATIONS:"),
           DropCapText(AppStrings.examGuideString,
           dropCapStyle: const TextStyle(
             fontFamily: "montserrat",
             color: Color.fromARGB(255, 38, 48, 145),
           ),
           style: const TextStyle(
               fontFamily: "montserrat",
               fontSize: 16
           ),
           ),
            buildHeading("EXTERNAL EXAMINATION SYSTEM:"),
            buildParagraph(
                "The Department of Computer and Communications Engineering has not yet started taking its Departmental courses for moderation. Thus, External Examiner’s comment is also not available yet."),
            buildHeading("INTERVIEW WITH STUDENTS:"),
            buildParagraph(
                "Currently, the Department of Computer and Communications has five sets of undergraduates 197, 113, 110, 56 and 52 respectively, which makes a total of 528 undergraduate students. The students will be made available to the accreditation team, as at when required, to be interviewed on their understanding, proficiency and curriculum coverage. Also, their awareness of academic regulations and cordiality or otherwise with their lecturers and other staff."),
            buildHeading("PRACTICAL/PROJECT WORK:"),
            buildParagraph(
                "The Students of the Department of Computer and Communications Engineering are exposed to workshops and laboratories right from their 100 Level. With regards to projects, students carry out a mini project at 400 Level and a Final Year project at 500 Level."),
            buildHeading("ENGINEERING DRAWING PRACTICE:"),
            buildParagraph(
                "The 200 level students offer Engineering Drawing in both 1st and 2nd Semesters as ME 212 and ME 223 respectively. These are courses taken from the Department of Mechanical/Production Engineering and are mandatory for all engineering students in 200 Level. The students receive lecture at least once every week. At the end of the lecture, assignments are given to them which they draw and defend before the next lecture."),
            buildParagraph(
                "The Faculty of Engineering drawing room is well equipped with drawing tables and chairs for the students while doing their drawing assignment and also when defending the assignment(s). At the end of the semester, all the assignments given are used as their continuous assessment, which takes 50% while examination takes 50%."),
            buildHeading("Exam Regulations"),
            buildOrderedListItem(
                "A student shall be at the examination room at least ten (10) minutes before the advertised time of the examination. A student is required to supply his/her own pens, pencils, rulers, calculators, etc. No one shall be permitted to borrow any material from another student during the course of the examination."),
            buildOrderedListItem(
                "A student may be admitted up to thirty minutes after the start of the examination but he/she shall not be allowed extra time. If a student arrives later than thirty minutes after the commencement of the extermination, an invigilator may at his discretion, admit him if he/she is satisfied that the student has good reasons for his/her lateness. The invigilator shall report the circumstances to the faculty examination officers who shall advise the board of examiners, which shall decide whether to accept the student paper."),
            buildOrderedListItem(
                "A student may be permitted by an invigilator to leave the examination room in the course of an examination provided that:"),
            buildUnorderedListItem(
                "He/she doesn’t leave during the first hour or the last fifteen (15) minutes of the examination."),
            buildUnorderedListItem(
                "He/she hands his script to the invigilator before leaving, if he/she doesn’t intend to return."),
            buildUnorderedListItem(
                "If he/she intends to return, his script should be giving to the invigilator or any other person as directed by the invigilator throughout the period of his absence."),
            buildOrderedListItem(
                "A student brings his examination card to each examination and displays it in a prominent position on his desk."),
            buildOrderedListItem(
                "Each student shall complete the attendance register and slip which shall be collected by the invigilator of each examination."),
            buildOrderedListItem(
                "During an examination, no student shall speak to any other student or to the invigilator of each examination."),
            buildOrderedListItem(
                "Any student caught making noise or causing disturbance during an examination shall be disqualified from the whole of the semester examinations."),
            buildOrderedListItem(
                "No book, printed-paper or written document or unauthorized aid may be taken into an examination room by students, excepts as may be stated in the rubrics of any examination paper."),
            buildOrderedListItem(
                "Students are required to deposit any hand-bag, briefcase etc. outside the examination room or any other space provided for its purpose ten (10) minutes before the start of an examination."),
            buildOrderedListItem(
                "A student must not, during an examination, directly or indirectly, give assistance to any other student or permit any other student to copy from or use of his papers. Similarly, a student must not directly accept assistance from any other student or use any other student’s paper. Receiving and giving assistance during an examination carry equal punishment."),
            buildOrderedListItem(
                "If any student is found to be or suspected of cheating or disturbing the conduct of the examination in any way, a report shall be made as soon as possible to circumstance to be investigated and reported to the board of examiners provided he/she causes no disturbance but the board of examiners may subsequently recommend to the faculty board and senate whether his/her paper should be accepted and as to any other action that should be taken in the case."),
            buildOrderedListItem(
                "A student should write his/her registration number, not his name distinctly at the top of the cover of every answer booklet or separate sheet of paper."),
            buildOrderedListItem(
                "The use of scrap paper is not permitted. All rough work must be done in the answer booklets which must be submitted to the invigilator. Apart from the printed question paper, a student may not remove from the examination room or mutilate any paper or other material supplied."),
            buildOrderedListItem(
                "At the end of the time allotted, each student shall stop writing when instructed to do so and shall gather his scripts together ready for collection by the invigilator."),
            buildHeading("Some specific examination misconduct and penalties applied when they are committed as approved by SENATE are given below."),
            buildOrderedListItem("Offence: Causing commotion, rudeness, disobedience of instruction from either an examination officer or invigilator."),
            buildParagraph("Penalty: Letter of warning to the student and apology from the student to the offended officer or rustication of a semester depending on the magnitude of the offence.", isPenalty: true),
            buildOrderedListItem("Offence: Disturbance and talking during examination."),
            buildParagraph("Penalty: Rustication for one semester.", isPenalty: true),
            buildOrderedListItem("Offence: Writing rough work on a question paper or any other material other than the examination answer script provided."),
            buildParagraph("Penalty: Rustication for one semester.", isPenalty: true),
            buildOrderedListItem("Offence: Taking into and/or using foreign material in the examination hall."),
            buildParagraph("Penalty: Expulsion from the University.", isPenalty: true),
            buildOrderedListItem("Offence: Helping each other during examination."),
            buildParagraph("Penalty: Expulsion from the University.", isPenalty: true),
            buildOrderedListItem("Offence: Verbal or physical assault on the examination officer, invigilator or fellow student (s)."),
            buildParagraph("Penalty: Rustication for one semester, academic session or expulsion from the University depending on the magnitude of the offence.", isPenalty: true),
            buildOrderedListItem("Offence: Unauthorized use of programmable calculator and exchange of such calculators."),
            buildParagraph("Penalty: Expulsion from the University.", isPenalty: true),
            buildOrderedListItem("Offence: Leaving the examination hall with an answer booklet."),
            buildParagraph("Penalty: Expulsion from the University.", isPenalty: true),
            buildOrderedListItem("Offence: Entrance of examination hall with GSM handset."),
            buildParagraph("Penalty: Rustication for one semester.", isPenalty: true),
            buildOrderedListItem("Offence: Use of GSM handset in the examination hall."),
            buildParagraph("Penalty: Expulsion from the University.", isPenalty: true),
            buildOrderedListItem("Offence: Involvement of both staff and student in the leakage of any examination material."),
            buildParagraph("Penalty: Expulsion of the student (s) from the University and reporting the staff to the University administration for further action.", isPenalty: true),
            buildOrderedListItem("Offence: Stealing of examination material such as question paper, answer booklet, etc."),
            buildParagraph("Penalty: Expulsion from the University and handing over student to the police for further disciplinary measures.", isPenalty: true),
            buildParagraph("Other acts of examination misconduct not mentioned above would be determined by the examination misconduct committee and final decision would be taken by the University SENATE."),
          ],
        ),
      ),
    );
  }
}

Widget buildHeading(String text) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8.0),
    child: Text(
      text,
      style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, fontFamily: "montserrat"),
    ),
  );
}

Widget buildParagraph(String text, {bool isPenalty = false}) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 8.0),
    child: Text(
      text,
      style: TextStyle(
        fontSize: 16,
        fontFamily: "montserrat",
        color: isPenalty ? Colors.red : Colors.black,
      ),
    ),
  );
}

Widget buildOrderedListItem(String text, {bool isPenalty = false}) {
  return Padding(
    padding: const EdgeInsets.only(left: 16.0, bottom: 8.0),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '•',
          style: TextStyle(
            fontSize: 16,
            fontFamily: "montserrat",
            color: isPenalty ? Colors.red : Colors.black,
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 16,
              fontFamily: "montserrat",
              color: isPenalty ? Colors.red : Colors.black,
            ),
          ),
        ),
      ],
    ),
  );
}

Widget buildUnorderedListItem(String text, {bool isPenalty = false}) {
  return Padding(
    padding: const EdgeInsets.only(left: 16.0, bottom: 8.0),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '◦',
          style: TextStyle(
            fontSize: 16,
            fontFamily: "montserrat",
            color: isPenalty ? Colors.red : Colors.black,
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 16,
              fontFamily: "montserrat",
              color: isPenalty ? Colors.red : Colors.black,
            ),
          ),
        ),
      ],
    ),
  );
}

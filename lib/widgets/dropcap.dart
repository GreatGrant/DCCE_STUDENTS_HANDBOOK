import 'package:drop_cap_text/drop_cap_text.dart';
import 'package:flutter/material.dart';

class CommonDropCap extends StatelessWidget {
  const CommonDropCap({Key? key, required this.paragraph}) : super(key: key);

  final String paragraph;

  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DropCapText(
            paragraph,
            dropCapStyle: const TextStyle(
                fontFamily: "montserrat",
                color: Color.fromARGB(255, 38, 48, 145),
            ),
            style: const TextStyle(
              fontFamily: "montserrat",
              fontSize: 16
            ),

          )
        ],
      ),
    );
  }
}

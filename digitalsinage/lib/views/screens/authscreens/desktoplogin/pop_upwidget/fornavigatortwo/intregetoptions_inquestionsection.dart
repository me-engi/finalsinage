
import 'package:digitalsinage/views/screens/authscreens/desktoplogin/pop_upwidget/fornavigatortwo/option_button_widget.dart';
import 'package:flutter/material.dart';


class QuestionSection extends StatefulWidget {
  final String question;
  final List<String> options;

  const QuestionSection({
    Key? key,
    required this.question,
    required this.options,
  }) : super(key: key);

  @override
  _QuestionSectionState createState() => _QuestionSectionState();
}

class _QuestionSectionState extends State<QuestionSection> {
  String? selectedOption;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.question,
          style: TextStyle(
            color: Color(0xFF167DB7),
            fontSize: 20,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 12),
        ...widget.options.map((option) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: OvalBorderCheckbox(
              optionText: option,
              isSelected: selectedOption == option,
              onTap: () {
                setState(() {
                  selectedOption = option;
                });
              }, borderColor: Colors.green,
            ),
          );
        }).toList(),
      ],
    );
  }
}

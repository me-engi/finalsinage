import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WalkInDetailsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        WalkInDetailInputField(
          title: 'Who are you?',
          hint: 'Select',
          hasIcon: true,
          options: ['Option 1', 'Option 2', 'Option 3'], // Add your dropdown options here
        ),
        const SizedBox(height: 32),
        WalkInDetailInputField(
          title: 'Name of your Organization',
          hint: 'Name of your Organisation',
          hasIcon: false,
        ),
      ],
    );
  }
}

class WalkInDetailInputField extends StatefulWidget {
  final String title;
  final String hint;
  final bool hasIcon;
  final List<String>? options; // List of options for the dropdown

  const WalkInDetailInputField({
    required this.title,
    required this.hint,
    required this.hasIcon,
    this.options,
  });

  @override
  _WalkInDetailInputFieldState createState() => _WalkInDetailInputFieldState();
}

class _WalkInDetailInputFieldState extends State<WalkInDetailInputField> {
  final TextEditingController _controller = TextEditingController();
  String? _selectedOption;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 88,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: double.infinity,
            child: Text(
              widget.title,
              style: TextStyle(
                color: Color(0xFF167DB7),
                fontSize: 20,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500,
                height: 0,
              ),
            ),
          ),
          const SizedBox(height: 12),
          Container(
            width: double.infinity,
            height: 52,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
            decoration: ShapeDecoration(
              color: Color(0xFF2D3142),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: widget.hasIcon
                      ? DropdownButton<String>(
                          isExpanded: true,
                          value: _selectedOption,
                          hint: Text(
                            widget.hint,
                            style: TextStyle(
                              color: Color(0xFFB5B7C0),
                              fontSize: 16,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                          items: widget.options?.map((String option) {
                            return DropdownMenuItem<String>(
                              value: option,
                              child: Text(option),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              _selectedOption = newValue;
                              _controller.text = newValue ?? '';
                            });
                          },
                        )
                      : TextField(
                          controller: _controller,
                          decoration: InputDecoration(
                            hintText: widget.hint,
                            hintStyle: TextStyle(
                              color: Color(0xFFB5B7C0),
                              fontSize: 16,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                            border: InputBorder.none,
                          ),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                ),
                // if (widget.hasIcon)
                //   GestureDetector(
                //     onTap: () {
                //       // Optional: Handle the tap if needed
                //     },
                //     child: SvgPicture.asset(
                //       'assets/icons/dropdown.svg',
                //       width: 24,
                //       height: 24,
                //     ),
                //   ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

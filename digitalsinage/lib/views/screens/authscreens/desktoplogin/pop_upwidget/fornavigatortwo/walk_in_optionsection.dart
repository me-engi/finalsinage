import 'package:flutter/material.dart';
import 'package:get/get.dart';

// Controller to manage selection state
class WalkInOptionsController extends GetxController {
  var selectedOptions = <String, bool>{}.obs;

  void toggleSelection(String option) {
    selectedOptions[option] = !(selectedOptions[option] ?? false);
  }
}

// Widget for individual options
class WalkInOption extends StatelessWidget {
  final String text;
  final WalkInOptionsController controller = Get.find();

   WalkInOption({required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 28),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              controller.toggleSelection(text);
            },
            child: Obx(() {
              bool isSelected = controller.selectedOptions[text] ?? false;
              return Container(
                width: 20,
                height: 19.12,
                decoration: ShapeDecoration(
                  shape: OvalBorder(
                    side: BorderSide(
                      width: 2,
                      strokeAlign: BorderSide.strokeAlignOutside,
                      color: isSelected ? Color(0xFF209A75) : Colors.grey,
                    ),
                  ),
                  color: isSelected ? Color(0xFF209A75) : Colors.transparent,
                ),
                child: isSelected
                    ? Icon(Icons.check, size: 14, color: Colors.white)
                    : null,
              );
            }),
          ),
          const SizedBox(width: 16),
          Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}

// Widget for a column of options
class WalkInOptionColumn extends StatelessWidget {
  final List<String> options;

  const WalkInOptionColumn({required this.options});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: options.map((option) => WalkInOption(text: option)).toList(),
    );
  }
}

// Main WalkInOptions widget containing the columns of options
class WalkInOptions extends StatelessWidget {
  final WalkInOptionsController controller = Get.put(WalkInOptionsController());

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: ShapeDecoration(
        color: Color(0xFF2D3142),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          WalkInOptionColumn(options: [
            'Search Engine',
            'Social Media',
            'Peer Referral',
          ]),
          const SizedBox(width: 100),
          WalkInOptionColumn(options: [
            'Google Advertisement',
            'Blog Post',
            'Other',
          ]),
        ],
      ),
    );
  }
}

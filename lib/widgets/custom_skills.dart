import 'package:elearningui/theme/colors.dart';
import 'package:flutter/material.dart';

class CustomSkills extends StatelessWidget {
  const CustomSkills({
    Key? key,
    required this.skill,
    required this.numSkill,
  }) : super(key: key);

  final String skill;
  final String numSkill;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          skill,
          maxLines: 1,
          overflow: TextOverflow.fade,
          style: TextStyle(
            fontSize: 12.0,
            color: grey,
          ),
        ),
        SizedBox(height: 10),
        Text(
          numSkill,
          maxLines: 1,
          overflow: TextOverflow.fade,
          style: TextStyle(
            fontSize: 17.0,
            fontWeight: FontWeight.w700,
            color: primary,
          ),
        ),
      ],
    );
  }
}

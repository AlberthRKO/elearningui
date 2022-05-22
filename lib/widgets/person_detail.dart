import 'package:elearningui/theme/colors.dart';
import 'package:elearningui/theme/padding.dart';
import 'package:elearningui/widgets/custom_heading.dart';
import 'package:flutter/material.dart';

class PersonDetail extends StatelessWidget {
  const PersonDetail(
      {Key? key,
      required this.imagen,
      required this.name,
      required this.course,
      required this.totalStudents,
      required this.totalCourse})
      : super(key: key);

  final String imagen;
  final String name;
  final String course;
  final String totalStudents;
  final String totalCourse;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        Center(
          child: Column(
            children: [
              SizedBox(
                width: size.width * .4,
                height: size.width * .4,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.network(
                    imagen,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 10),
              CustomHeading(
                title: name,
                subTitle: course,
                color: textBlack,
                centro: true,
              )
            ],
          ),
        ),
        SizedBox(
          height: smallSpacer,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Total de estudiantes',
                  maxLines: 1,
                  overflow: TextOverflow.fade,
                  style: TextStyle(
                    fontSize: 12.0,
                    color: grey,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  totalStudents,
                  maxLines: 1,
                  overflow: TextOverflow.fade,
                  style: TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.w700,
                    color: primary,
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Total de cursos',
                  maxLines: 1,
                  overflow: TextOverflow.fade,
                  style: TextStyle(
                    fontSize: 12.0,
                    color: grey,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  totalCourse,
                  maxLines: 1,
                  overflow: TextOverflow.fade,
                  style: TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.w700,
                    color: primary,
                  ),
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}

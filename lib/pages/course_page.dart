import 'package:elearningui/data/courses_json.dart';
import 'package:elearningui/theme/colors.dart';
import 'package:elearningui/theme/padding.dart';
import 'package:elearningui/widgets/appbars.dart';
import 'package:elearningui/widgets/custom_heading.dart';
import 'package:elearningui/widgets/custom_mycurso.dart';
import 'package:flutter/material.dart';

class CoursePage extends StatefulWidget {
  const CoursePage({Key? key}) : super(key: key);

  @override
  State<CoursePage> createState() => _CoursePageState();
}

class _CoursePageState extends State<CoursePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      extendBodyBehindAppBar: true,
      appBar: getAppbar(Colors.transparent),
      body: getBody(),
    );
  }

  Widget getBody() {
    // var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: appPadding),
        child: Column(
          children: [
            SizedBox(
              height: spacer + 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: CustomHeading(
                    title: 'Mis Cursos',
                    subTitle: 'Continua con tus cursos',
                    color: textBlack,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  myCoursesJson.length.toString() + ' Cursos',
                  style: TextStyle(
                    fontSize: 15,
                    color: secondary,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: smallSpacer,
            ),
            Column(
              children: List.generate(
                myCoursesJson.length,
                (index) => Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: CustomMyCurso(
                    image: myCoursesJson[index]['image'],
                    title: myCoursesJson[index]['title'],
                    name: myCoursesJson[index]['user_name'],
                    video: myCoursesJson[index]['video'],
                    porcentaje: myCoursesJson[index]['percentage'],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: smallSpacer,
            ),

            // Seccion de curso
          ],
        ),
      ),
    );
  }
}
